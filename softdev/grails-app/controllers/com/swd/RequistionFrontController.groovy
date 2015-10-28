package com.swd

class RequistionFrontController {

    def borrow() { }
    def returns() { }
    def history() { 
    	[requistionList : Requistion.list(), equipments:Equipment.list() ,accounts : Account.list()]
    }
}
