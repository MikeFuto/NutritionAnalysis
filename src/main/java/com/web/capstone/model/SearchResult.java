package com.web.capstone.model;

public class SearchResult {

	

    public String foodName;
    public String servingUnit;
    public String tagName;
    public String serving_qty;
    public String common_type;
    public String tag_id;
    public String photo;
    public String locale;
    
    // etc for all the properties
    // "food_name": "apple",
    // "serving_unit": "medium (3\" dia)",
    // "tag_name": "apple",
    // "serving_qty": 1,
    // "common_type": null,
    // "tag_id": "384",
    // "photo": {
        // "thumb": "https://d2xdmhkmkbyw75.cloudfront.net/384_thumb.jpg"
    // },
    // "locale": "en_US"

    public SearchResult() { }

    public void set_foodName(String input) {
        this.foodName = input;
    };
    public void set_servingUnit(String input) {
        this.servingUnit = input;
    };
    public void set_tagName(String input) {
        this.tagName = input;
    };
    public void set_serving_qty(String input) {
        this.tagName = input;
    };
    public void set_common_type(String input) {
        this.tagName = input;
    };
    public void set_tag_id(String input) {
        this.tagName = input;
    };
    public void set_photo(String input) {
        this.tagName = input;
    };
    public void set_locale(String input) {
        this.tagName = input;
    };
    
    
    
    
    public String get_foodName() {
    	return foodName;
    };
    public String get_servingUnit() {
    	return servingUnit;
    };
    public String get_tagName() {
    	return tagName;
    };
    public String get_serving_qty() {
    	return foodName;
    };
    public String get_common_type() {
    	return servingUnit;
    };
    public String get_tag_id() {
    	return tagName;
    };
    public String get_photo() {
    	return foodName;
    };
    public String get_locale() {
    	return servingUnit;
    };
   
}
