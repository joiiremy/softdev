package com.swd

class Equipment {
	String id
	String title
	int amount
	Double price
	Double total
	String description

    static constraints = {
    	description nullable: true
    }
}
