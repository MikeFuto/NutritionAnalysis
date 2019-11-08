package com.web.capstone.util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;



@Component
public class WebServiceUtils {
		// dependancy injection based constructor
	
	 @Autowired
	    private JavaMailSender sender;
	    
	    public WebServiceUtils(JavaMailSender sender) {
	super();
	this.sender = sender;
	}

	public String sendMail(String to, String msg, String subject) {
	        MimeMessage message = sender.createMimeMessage();
	        MimeMessageHelper helper = new MimeMessageHelper(message);
	        try {
	            helper.setTo(to);
	            helper.setText(msg);
	            helper.setSubject(subject);
	        } catch (MessagingException e) {
	            e.printStackTrace();
	            return "Error while sending mail ..";
	        }
	        sender.send(message);
	        return "Mail Sent Success!";
	    }
	
	
	
	
	
	
	
}
