package com.swd

class CustomsTagLib {
    // static defaultEncodeAs = [taglib:'html']
    static defaultEncodeAs = [taglib:'text']

    def isApproved = {attrs, body ->
    	def tags
    	def text
    	def operation = attrs.test.toString() 
    	if(operation == 'true'){
    		tags = "label label-success"
    		text = "อนุมัติ"
    	}
    	else if(operation == ''){
    		tags = "label label-warning"
    		text = "รอ ... "
    	}
    	else if(operation == 'false'){
    		tags = "label label-danger"
    		text = "ไม่อนุมัติ"
    	}
    	out << """<span class="${tags}">${text}</span>"""
    }
}
