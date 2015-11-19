package com.swd

import grails.transaction.Transactional

@Transactional
class BackendService {

    def queryMatching(Long matchingId = null, fromDate = null, toDate = null) {
    	def lists = []
    	def obj = [:]
    	def matchings = Matching.createCriteria().list{
    		if(matchingId)
    			idEq matchingId
	    	requistion{
	    		eq 'approved', true
	    		if(fromDate && toDate)
	    			between 'requistionDate', fromDate, toDate
	    	}
    		
    	}
    	matchings.each{ matching ->
    		def list = lists.find{it.title == matching.equipment.title}
    		if(list == null){
    			obj = [:]
    			obj.id = matching.equipment.id
    			obj.title = matching.equipment.title
    			obj.amount = matching.amount
    			lists.push(obj)
    			}else {
    				list.amount += matching.amount
    			}
    		}

    	lists
    }
}
