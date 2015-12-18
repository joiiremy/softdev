package com.swd

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequistionFrontController {
def springSecurityService

    def borrow() {

    }
    def returns() { 
        def accountId = springSecurityService.principal.id
        def account = Account.get(accountId)
        [account: account.name]
    }
    def history() { 
    	def accountId = springSecurityService.principal.id
        def notreturn = params.notreturn == 'on' ? false : true
        print notreturn
        def requistionList = Requistion.createCriteria().list{
	    		borrower{
		        	idEq accountId
		        }
                if(!notreturn){
                    like "isReturn", notreturn
                }

    		}	
        
    	[
            requistionList : requistionList, notreturn: params.notreturn, matching: Matching.list() ,accounts : Account.list(),accountId: accountId ]
    }
}

    