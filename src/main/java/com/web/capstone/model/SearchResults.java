package com.web.capstone.model;

import javax.naming.directory.SearchResult;

public class SearchResults {

	 public SearchResult[] common;
	    public SearchResult[] branded;

	    public SearchResults() { }

	    public SearchResult[] get_results_common() {
	        return this.common;
	    };
	    public SearchResult[] get_results_branded() {
	        return this.branded;
	    };
	
	
}
