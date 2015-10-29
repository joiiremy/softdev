package com.swd



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MatchingController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Matching.list(params), model:[matchingInstanceCount: Matching.count()]
    }

    def show(Matching matchingInstance) {
        respond matchingInstance
    }

    def create() {
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

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'matching.label', default: 'Matching'), matchingInstance.id])
                redirect matchingInstance
            }
            '*' { respond matchingInstance, [status: CREATED] }
        }
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

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Matching.label', default: 'Matching'), matchingInstance.id])
                redirect matchingInstance
            }
            '*'{ respond matchingInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Matching matchingInstance) {

        if (matchingInstance == null) {
            notFound()
            return
        }

        matchingInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Matching.label', default: 'Matching'), matchingInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
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
