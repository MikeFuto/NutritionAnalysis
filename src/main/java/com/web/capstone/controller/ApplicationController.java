package com.web.capstone.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.capstone.model.Addressess;
//import com.web.capstone.model.Bookmarks;
import com.web.capstone.model.Cart;
import com.web.capstone.model.Handlemail;
import com.web.capstone.model.Ingredients;
import com.web.capstone.model.User;
//import com.web.capstone.repository.BookmarkRepository;
import com.web.capstone.repository.CartRepository;
import com.web.capstone.repository.PlanAnalysisRepository;
import com.web.capstone.repository.IngredientRepository;
import com.web.capstone.repository.UserRepository;
import com.web.capstone.services.AnalysisData;
import com.web.capstone.services.CalculateNutrition;
import com.web.capstone.util.DataValidation;
import com.web.capstone.util.WebServiceUtils;

@Controller
@SessionAttributes("logedinUser")
public class ApplicationController {

	@Autowired
	private CalculateNutrition calculateNutrition;
	
	@Autowired
	private DataValidation dataValidator;

	@Autowired
	private WebServiceUtils webServiceUtils;

	@Autowired
	private UserRepository userRepository;
	
	@Autowired
	private IngredientRepository ingredientRepository;
	
	@Autowired
	private CartRepository cartRepository;
	
	@Autowired
	private PlanAnalysisRepository planAnalysisRepository;
	
//	@Autowired
//	private BookmarkRepository bookmarkRepository;
	
	public ApplicationController(DataValidation dataValidator, WebServiceUtils webServiceUtils,
			UserRepository userRepository, IngredientRepository ingredientRepository, 
			CartRepository cartRepository, PlanAnalysisRepository planAnalysisRepository) {
		super();
		this.dataValidator = dataValidator;
		this.webServiceUtils = webServiceUtils;
		this.userRepository = userRepository;
		this.ingredientRepository = ingredientRepository;
		this.cartRepository = cartRepository;
		this.planAnalysisRepository = planAnalysisRepository;
//		this.bookmarkRepository = bookmarkRepository;
	}

//=============================================================================================
// Registration and login/out
	
	@PostMapping("addUser")
	String adduser(@ModelAttribute User user, BindingResult result, Model model) {
		try {
			dataValidator.validate(user, result);
			if (result.hasErrors()) {
				model.addAttribute("message", "Register");
				return "register";
			}
			user.setRole("USER");
			userRepository.save(user);
			String msg = "Thanks for registering with us";
			webServiceUtils.sendMail(user.getEmail(), msg, "Registration");
			model.addAttribute("logedinUser", user);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/index";
		
	}
	
	
	@GetMapping("userUpdate1")
	String userUpdate(@ModelAttribute User user, BindingResult result, Model model) {
		/*
		 * try { dataValidator.validate(user, result); if (result.hasErrors()) {
		 * model.addAttribute("message", "Register"); return "register"; }
		 * user.setRole("USER"); userRepository.save(user); String msg =
		 * "Thanks for registering with us"; webServiceUtils.sendMail(user.getEmail(),
		 * msg, "Registration"); model.addAttribute("logedinUser", user); } catch
		 * (Exception e) { e.printStackTrace(); }
		 */
		return "userUpdate";
		
	}
	
	@GetMapping("register")
	String regiter(Model model) {
		model.addAttribute("message", "Register");
		model.addAttribute("action", "addUser");
		model.addAttribute("user", new User());
		return "register";
	}

	
	@GetMapping("login")
	String login(Model model) {
		model.addAttribute("message", "Login");
		model.addAttribute("user", new User());
		return "login";
	}

	
	@PostMapping("login")
	String login(@ModelAttribute User user, RedirectAttributes redirect) {
		try {
			User usr = userRepository.findByEmail(user.getEmail());
			if (usr != null && usr.getPassword().equals(user.getPassword())) {
				redirect.addFlashAttribute("logedinUser", usr);
				redirect.addFlashAttribute("success", "Login Succes");
			} else {
				redirect.addFlashAttribute("error", "Invalid Credentials");
				return "redirect:/login";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/index";
	}
	
	@GetMapping("/logout")
	public String logout(Model model, WebRequest request, SessionStatus status, RedirectAttributes redirect)
			throws IOException {
		status.setComplete();
		request.removeAttribute("logedinUser", WebRequest.SCOPE_SESSION);
		redirect.addFlashAttribute("success", "You have been signed out");
		return "redirect:/login";
	}

	
//=============================================================================================
// User Accounts
	
//	@PostMapping("addrole")
//	String addrole(@RequestParam long id, @RequestParam String isSelected, RedirectAttributes red) {
//		try {
//			User user = userRepository.findById(id).get();
//			user.setRole(isSelected);
//			userRepository.save(user);
//			red.addFlashAttribute("success", "Role  " + isSelected + " assigned");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return "redirect:/index";
//	}

	@PostMapping("search")
	String search(Model model, @RequestParam String lname) {
		try {
			model.addAttribute("list", userRepository.getByLastName(lname));
			model.addAttribute("msg", userRepository.getByLastName(lname).size() + " Found with " + lname);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "index";

	}

	@GetMapping("edituser-{id}")
	String edit(@PathVariable long id, Model model) {
		try {
			model.addAttribute("message", "Update User");
			model.addAttribute("action", "updateUser");
			model.addAttribute("user", userRepository.findById(id));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "register";
	}

	@PostMapping("updateUser")
	String updateuser(@ModelAttribute("user") User user, RedirectAttributes redirect) {

		try {
			User usr = userRepository.findById(user.getId()).get();
			usr.setEmail(user.getEmail());
			usr.setFname(user.getFname());
			usr.setLname(user.getLname());
			usr.setPhone(user.getPhone());
			userRepository.save(usr);
			redirect.addFlashAttribute("success", "User " + user.getFname() + " Updated");
		} catch (Exception e) {
			redirect.addFlashAttribute("error", "Unexpected error on Updated");
			e.printStackTrace();
		}

		return "redirect:/index";
	}


	@GetMapping({ "/", "index" })			//what is this?
	String index(Model model) {
		try {
			model.addAttribute("msg", "Welcome to spring boot");
			model.addAttribute("list", userRepository.findAll());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "index";
	}

	
	@GetMapping("deletuser-{id}")
	String delete(@PathVariable long id, RedirectAttributes red) {

		User user = userRepository.findById(id).get();
		userRepository.delete(user);
		red.addFlashAttribute("success", "User deleted");

		return "redirect:/index";
	}

//=============================================================================================
//Messages

//	@GetMapping("contact")
//	String contact(Model model) {
//	 model.addAttribute("message", "This is contact us page");
//	 model.addAttribute("title", "Contact us");
//	 return "contact";		
//	}

	@GetMapping("contact")
	String contact(Model model) {
		model.addAttribute("message", "This is the contact us page");
		model.addAttribute("mail", new Handlemail());
		return "contact";
	}

	
//	@GetMapping("about")
//	String about(Model model) {
//
//		model.addAttribute("message", "This is about us page");
//		model.addAttribute("title", "About Us");
//		return "about";
//	}

	
	@PostMapping("inquiryMail")
	String inquiryMail(@ModelAttribute Handlemail mail, Model model) {
		
		webServiceUtils.sendMail("mikefuto@yahoo.com", mail.getMsg(), mail.getSubject());
		
		String text= "Thank you for your question, we will get back to you soon";
		webServiceUtils.sendMail(mail.getEmail(), text +" "+ mail.getMsg(), mail.getSubject());
		model.addAttribute("msg", "Thank you");
		model.addAttribute("mail", new Handlemail());
		return "thankyou";
	}

	
	
	@GetMapping("go")
	String red(Model model, RedirectAttributes redirect) {
		redirect.addFlashAttribute("message", "This message redirect");
		redirect.addFlashAttribute("title", "Index");
		return "redirect:/index";
	}
	
	
	@ModelAttribute("address")
	Addressess Address() {
		return new Addressess();
	}

//	
//	@ModelAttribute("states")
//		public List<States> populateStates() {
//		return Arrays.asList(States.values());
//	}
	
	
	@GetMapping("thankyou")
	String thankyou(Model model) {

		model.addAttribute("message", "Thank you for visiting");
		model.addAttribute("title", "Thank You");
		return "thankyou";
	}

	
	@GetMapping("selection2")
	String selection2(Model model) {

		model.addAttribute("message", "Thank you for visiting");
		model.addAttribute("title", "Thank You");
		return "ingredSelect";
	}	
	
	
	@GetMapping("ingredientImport")
	String ingredientImport(Model model) {

		model.addAttribute("ingredient", new Ingredients());
		model.addAttribute("message", "Enter all information for ingredient");
		model.addAttribute("title", "Ingredient Import");
		return "ingredImport";
	}	
	
	
//=============================================================================================	
// Selecting and analyzing and adding
	
	
	// add ingredient to ingredient list
		@PostMapping("addIngredient")				//I need to get userId or Email or something to send a message
		String addIngredient(@ModelAttribute Ingredients ingredient, BindingResult result, Model model) {
		//	User user = new User();
			try {
				dataValidator.validateIngred(ingredient, result);
		System.out.println(ingredient + "b4 has errors");
				if (result.hasErrors()) {
					model.addAttribute("message", "New Ingredient was not Added");
					return "ingredImport";
				}
	//			user.setRole("USER");
		     System.out.println(ingredient + "after has errors");
				ingredientRepository.save(ingredient);
				String msg = "Ingredient added to database";
				model.addAttribute("message", "New Ingredient was Added");
	//			webServiceUtils.sendMail(user.getEmail(), msg, "New Ingredient Added");
				model.addAttribute("newIngredient", ingredient);
				
			} catch (Exception e) {
				e.printStackTrace();
			}

			return "allIngredients";
			
		}
			

	
@GetMapping("chooseIngredients")
	String chooseIngredients(Model model, @RequestParam String catagory) {
		try {
			model.addAttribute("list", ingredientRepository.getByCategory(catagory));
			model.addAttribute("msg", ingredientRepository.getByCategory(catagory).size() + " found with " + catagory);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ingredSelect";
	}

	
@GetMapping("allIngredients")
	String allIngredients(Model model) {
		try {
			model.addAttribute("list", ingredientRepository.findAll());
			model.addAttribute("msg", ingredientRepository.count() + " Found with all ingredients ");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ingredSelect";
	}



	
@PostMapping("addToCart")
	String addToCart(Model model, @RequestParam long ingredientId, @RequestParam String isSelected) {
		
		//I can do some preliminary analysis here like total calories and # days supply
		//I can also add up the running total of costs before a full analysis
		
	System.out.println("isSelected" + isSelected);
		try {
			if (isSelected.contentEquals(" ")) { }//do nothing}
			else {  
	System.out.println("isSelected" + isSelected);			
					//setting the cart values for display on cart page 
				Optional<Ingredients> ingredient = ingredientRepository.findById(ingredientId);
				if (ingredient.isPresent()) {
					Cart cart = new Cart();
					User user = new User();
				 
					 Date test = new Date();
					 String dayString = test.toString();
					 String timeString = dayString.substring( 11 , 19 );
					
		//I need to add the userId(email) and date and Plan name description 
					cart.setDate(dayString);
					cart.setCartUserId(user.getEmail());
					
					cart.setIngredientId((ingredient.get().getId()));
					cart.setProductName(ingredient.get().getProductName());
					cart.setProductMfg(ingredient.get().getProductMfg());
					cart.setUpcCode(ingredient.get().getUpcCode());
					cart.setPackageSize(ingredient.get().getSizeOz());
					cart.setPackageCost(ingredient.get().getCostOfPkg());
					cart.setQuantOrdered(Integer.valueOf(isSelected));        
					cart.setSubTotalCost(cart.getQuantOrdered() * cart.getPackageCost());
					cartRepository.save(cart);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		try {	// this is a problem here to return all ingredients rather than the previous selection
			model.addAttribute("list", ingredientRepository.findAll());
			model.addAttribute("msg", ingredientRepository.count() + " Found with all ");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ingredSelect";		
	}
	
//=================================================================================	

@GetMapping("viewCart")
	String viewCart(Model model) {
		
		//I can do some preliminary analysis here like total calories and # days supply
		//I can also add up the running total of costs before a full analysis
		
		try {
			model.addAttribute("list", cartRepository.findAll());
			model.addAttribute("msg", cartRepository.count() + " Found with all ");			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "cartSelect";
	}


@GetMapping("deleteFromCart-{id}")
	String deleteFromCart(@PathVariable long id, RedirectAttributes red) {

		Cart cart = cartRepository.findById(id).get();
		cartRepository.delete(cart);
		red.addFlashAttribute("success", "Cart item deleted");

	return "redirect:/viewCart";
}

//@PostMapping("addTitleToCart")
//String addTitleToCart(Model model, @RequestParam String planName, @RequestParam String planDescription,
//		 @RequestParam String planBudget,  @RequestParam String planDate) {
//	
//
//	try {			
//				Cart cart = new Cart();
//				
//				cart.setCartName(planName);
//				cart.setDate(planDate);	
//				cart.setCartDescription(planDescription);
//				cart.setCartBudget(planBudget);
//
//				cartRepository.save(cart);	
//				
//	} catch (Exception e) {
//		e.printStackTrace();
//	}	
//
//	try {
//		model.addAttribute("list", cartRepository.findAll());
//		model.addAttribute("msg", cartRepository.count() + " Found with all ");			
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return "cartSelect";
//}

//==============================================================================

	
	@GetMapping("doAnalysis")
	String doAnalysis(Model model) {
		
		//get all cart items
	try {
			List<Cart> cartData = cartRepository.findAll();
			model.addAttribute("list", cartData);
			model.addAttribute("msg", cartRepository.count() + " Found with all ");			
		
			AnalysisData analysisData = calculateNutrition.sumAll(cartData);
			model.addAttribute("analysis", analysisData);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "cartAnalysis";
	}

//============================================================================================	
	
//
//  @PostMapping("addToBookmark")
//  String addToBookmark(Model model, @RequestParam long ingredientId, @RequestParam String isBookmarked) {
//	
//	//I can do some preliminary analysis here like total calories and # days supply
//	//I can also add up the running total of costs before a full analysis
//	
//
//	try {
//		if (isBookmarked.equalsIgnoreCase("N")) {
//			bookmarkRepository.deleteByIngredientId(ingredientId);
//		}
//		else {   
//			
//			Optional<Ingredients> ingredient = ingredientRepository.findById(ingredientId);
//			if (ingredient.isPresent()) {
//				Bookmarks bookmark = new Bookmarks();
//				
//				bookmark.setIngredientId((ingredient.get().getId()));
//				bookmark.setProductName(ingredient.get().getProductName());
//				bookmark.setProductMfg(ingredient.get().getProductMfg());
//				bookmark.setUpcCode(ingredient.get().getUpcCode());
//				bookmark.setPackageSize(ingredient.get().getSizeOz());
//				bookmark.setPackageCost(ingredient.get().getCostOfPkg());
//				bookmark.setQuantOrdered(isBookmarked);
//				
//				cartRepository.save(bookmark);
//			}
//		}
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//			
//	try {
//		model.addAttribute("list", ingredientRepository.findAll());
//		model.addAttribute("msg", ingredientRepository.count() + " Found with all ");
//	} catch (Exception e) {
//		e.printStackTrace();
//	}
//	return "ingredSelect";		
//	}
//

//============================================================================================	
		

	
//============================================================================================	
	
	
	
}
	

