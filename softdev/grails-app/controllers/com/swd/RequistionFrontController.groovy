package com.swd

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequistionFrontController {

    def borrow() {
    respond new Requistion(params) }
    def returns() { }
    def history() { 
    	[requistionList : Requistion.list(), matching: Matching.list() ,accounts : Account.list(), accountroles: AccountRole.list(),roles:Role.list()]
    }
    @Transactional
    def save(Requistion requistionInstance) {
        if (requistionInstance == null) {
            notFound()
            return
        }

        if (requistionInstance.hasErrors()) {
            respond requistionInstance.errors, view:'borrow'
            return
        }

        requistionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'requistion.label', default: 'Requistion'), requistionInstance.id])
                redirect requistionInstance
            }
            '*' { respond requistionInstance, [status: CREATED] }
        }
    }
}
// def create() {
//         respond new Requistion(params)
//     }

    