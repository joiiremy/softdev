package com.swd



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MatchingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "PUT"]
    // static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def requistionAdded(){
        render(template: 'matching', model:[matching:Matching.get(params.id)])
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Matching.list(params), model:[matchingInstanceCount: Matching.count()]
    }

    def show(Matching matchingInstance) {
        respond matchingInstance
    }

    def create() {
        log.debug params.requistionInstance
        // def requistion = new Requistion(params)
        // requistion.save flush:true
        // def requistionId
        // log.debug params
        // if(!params.id){
        //     requistion = new Requistion(params)
        //     def r = requistion.save(flush:true)
        //     requistionId = requistion?.id
        //     println r
        // }else requistionId = params.id
        // respond new Matching(params), params:[requistionId:requistionId]

        respond new Matching(params)
    }

    @Transactional
    def save(Matching matchingInstance) {
        if (matchingInstance == null) {
            notFound()
            return
        }

        if (matchingInstance.hasErrors()) {
            respond matchingInstance.errors, view:'create'
            return
        }

        matchingInstance.save flush:true

        // log.debug matchingInstance.requistion.id
        // request.withFormat {
        //     form multipartForm {
        //         flash.message = message(code: 'default.created.message', args: [message(code: 'matching.label', default: 'Matching'), matchingInstance.id])
        //         redirect matchingInstance
        //     }
        //     // '*' { respond matchingInstance, [status: CREATED] }
        // }
        forward controller: "requistion", action: "edit", id:matchingInstance.requistion.id
    }

    def edit(Matching matchingInstance) {
        respond matchingInstance
    }

    @Transactional
    def update(Matching matchingInstance) {
        if (matchingInstance == null) {
            notFound()
            return
        }

        if (matchingInstance.hasErrors()) {
            respond matchingInstance.errors, view:'edit'
            return
        }

        matchingInstance.save flush:true

        // request.withFormat {
        //     form multipartForm {
        //         flash.message = message(code: 'default.updated.message', args: [message(code: 'Matching.label', default: 'Matching'), matchingInstance.id])
        //         redirect matchingInstance
        //     }
        //     '*'{ respond matchingInstance, [status: OK] }
        // }
        log.debug matchingInstance.requistion.id
        forward controller: "requistion", action: "edit", id:matchingInstance.requistion.id
    }

    @Transactional
    def delete(Matching matchingInstance) {
        log.debug "delete matching"

        if (matchingInstance == null) {
            notFound()
            return
        }

        matchingInstance.delete flush:true

        // request.withFormat {
        //     form multipartForm {
        //         flash.message = message(code: 'default.deleted.message', args: [message(code: 'Matching.label', default: 'Matching'), matchingInstance.id])
        //         redirect action:"index", method:"GET"
        //     }
        //     '*'{ render status: NO_CONTENT }
        // }

         redirect controller: "requistion", action: "edit", id:matchingInstance.requistion.id
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'matching.label', default: 'Matching'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
