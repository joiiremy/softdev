package com.swd
import org.joda.time.LocalDate

class Requistion {
	LocalDate requistionDate
	LocalDate returnDate
	int amount
	static hasMany = [equipments: Equipment] 
	static belongsTo = [borrower: Account, endorser: Account]
	Boolean approved

    static constraints = {

    }
}
