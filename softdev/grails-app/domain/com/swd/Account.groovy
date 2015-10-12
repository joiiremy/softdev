package com.swd

class Account {
	String id
	String name
	String role
	static hasMany = [requistions: Requistion, approvedRequistion: Requistion]
	static mappedBy = [requistions: 'borrower',
                       approvedRequistion: 'endorser']
    static constraints = {
    }
}
