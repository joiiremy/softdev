package com.swd
import org.joda.time.LocalDate

class Requistion {
	LocalDate requistionDate
	LocalDate returnDate
	static hasMany = [matching : Matching] 
	static belongsTo = [borrower: Account, endorser: Account]
	Boolean approved

    static constraints = {

    }
}
