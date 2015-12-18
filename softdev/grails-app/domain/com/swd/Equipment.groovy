package com.swd

class Equipment {
	String barcode
	String title
	int amount
	Double price
	String description
	String unit

	static hasMany = [matchings: Matching]
	
    static constraints = {
    	description nullable: true
    	unit nullable: true
    	price nullable: true
    	barcode nullable: true
    }
}
