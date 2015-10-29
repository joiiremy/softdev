package com.swd

class RequistionFrontController {

    def borrow() { }
    def returns() { }
    def history() { 
    	[requistionList : Requistion.list(), matching: Matching.list() ,accounts : Account.list(), accountroles: AccountRole.list(),roles:Role.list()]
    }
}
