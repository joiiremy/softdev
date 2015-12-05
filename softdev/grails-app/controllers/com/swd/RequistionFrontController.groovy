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
        def requistionList = Requistion.createCriteria().list{
	    		borrower{
		        	idEq accountId
		        }
                if(params.notreturn){
                    print "in"
                    isNull("returnDate")
                }

    		}	
        // print params.notreturn
        // print requistionList

       // def returnDate 
       // def requistionList = Requistion.createCriteria().list{
       //      if(params.long("accountId")){


       //      }

       // }     

        // def checkoutQuestionInstanceCount = CheckoutQuestion.createCriteria().list(query).size()
    	[
            requistionList : requistionList, notreturn: params.notreturn, matching: Matching.list() ,accounts : Account.list(),accountId: accountId ]
    }
}

    