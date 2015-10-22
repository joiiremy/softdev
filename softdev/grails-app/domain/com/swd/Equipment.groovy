package com.swd

class Equipment {
	String barcode
	String title
	int amount
	Double price
	String description

    static constraints = {
    	description nullable: true
    }
}
