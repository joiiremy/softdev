package com.swd
import org.joda.time.LocalDate

class Requistion {
	LocalDate requistionDate
	LocalDate returnDate
	boolean isReturn 
	static hasMany = [matchings : Matching] 
	static belongsTo = [borrower: Account, endorser: Account]
	Boolean approved

    static constraints = {
    	approved nullable : true
    	endorser nullable : true
    }
}
