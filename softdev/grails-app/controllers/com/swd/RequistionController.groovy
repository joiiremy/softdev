package com.swd



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RequistionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Requistion.list(params), model:[requistionInstanceCount: Requistion.count()]
    }


    def addMatching(){
        def requistionId
        def requistion
        if(!params.id){
            requistion = new Requistion(params)   
            requistion.save flush:true
            requistionId = requistion.id
        }else {
            requistionId = params.id
        }
        log.debug requistionId
        redirect controller:'Matching', action:'create', id:requistionId
    }

    def editMatching(){
        log.debug params.matchingId
        redirect controller:'Matching', action:'edit', id:params.matchingId as Long
    }

    def show(Requistion requistionInstance) {
        respond requistionInstance
        
    }

    def create() {
        // log.debug params.matching?.equipment?.id
        if(params.id){
             redirect controller:'requistion', action:'edit', id:params.id
             return
        }

        respond new Requistion(params)
        // respond Matching.list(params), model:[matchingInstanceCount: Matching.count()]
    }

 

    @Transactional
    def save(Requistion requistionInstance) {
        // Requistion requistionInstance
        // requistionInstance.properties = params


        if (requistionInstance == null) {
            notFound()
            return
        }

        if (requistionInstance.hasErrors()) {
            respond requistionInstance.errors, view:'create'
            return
        }

        requistionInstance.save flush:true

        redirect controller:'requistion', action:'create', id:requistionInstance.id 
        return

        // request.withFormat {
        //     form multipartForm {
        //         flash.message = message(code: 'default.created.message', args: [message(code: 'requistion.label', default: 'Requistion'), requistionInstance.id])
        //         redirect requistionInstance
        //     }
        //     '*' { respond requistionInstance, [status: CREATED] }
        // }
    }

    def edit(Requistion requistionInstance) {
        log.debug "requistion Id" 
        respond requistionInstance, model:[id:params.id]
    }

    @Transactional
    def update(Requistion requistionInstance) {
        if (requistionInstance == null) {
            notFound()
            return
        }

        if (requistionInstance.hasErrors()) {
            respond requistionInstance.errors, view:'edit'
            return
        }

        requistionInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Requistion.label', default: 'Requistion'), requistionInstance.id])
                redirect requistionInstance
            }
            '*'{ respond requistionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Requistion requistionInstance) {
        log.debug "hello delte requistion"

        if (requistionInstance == null) {
            notFound()
            return
        }

        requistionInstance.delete flush:true



        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Requistion.label', default: 'Requistion'), requistionInstance.id])
                // redirect action:"index", method:"GET"
                redirect action:"create", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }

        // redirect controller:'requistion', action:'create' 
        // return
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'requistion.label', default: 'Requistion'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
