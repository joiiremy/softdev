package com.swd



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AccountController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Account.list(params), model:[accountInstanceCount: Account.count()]
    }

    def show(Account accountInstance) {
        respond accountInstance
    }

    def create() {
        respond new Account(params)
    }

    @Transactional
    def save(Account accountInstance,Integer roleId) {

        log.debug roleId

        if (accountInstance == null) {
            notFound()
            return
        }

        if (accountInstance.hasErrors()) {
            respond accountInstance.errors, view:'create'
            return
        }

        accountInstance.save flush:true

        def accountRole = new AccountRole(account:accountInstance, role:Role.load(roleId))
        accountRole.save()

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'account.label', default: 'Account'), accountInstance.id])
                redirect accountInstance
            }
            '*' { respond accountInstance, [status: CREATED] }
        }
    }

    def edit(Account accountInstance) {
        respond accountInstance, model:[roleId: Role?.findByAuthority(com.swd.AccountRole?.findByAccount(accountInstance).role).id]
    }

    @Transactional
    def update(Account accountInstance,Integer roleId ) {
        if (accountInstance == null) {
            notFound()
            return
        }

        if (accountInstance.hasErrors()) {
            respond accountInstance.errors, view:'edit'
            return
        }

        AccountRole.executeUpdate("update AccountRole ar set ar.role=:r_id where ar.account=:user", [r_id: Role.get(roleId), user: accountInstance])
        // return 
        // accountInstance.save flush:true

        // def rid = AccountRole.findByAccount(accountInstance).id
        // def accountRole = AccountRole.findByAccount(accountInstance)
        // log.debug rid
        // accountRole.role = Role.get(roleId)
        // log.debug "---->"+Role.get(roleId)
        // accountRole.save()


        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Account.label', default: 'Account'), accountInstance.id])
                redirect accountInstance
            }
            '*'{ respond accountInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Account accountInstance) {

        if (accountInstance == null) {
            notFound()
            return
        }

        def accountRole = AccountRole.findByAccount(accountInstance)
        accountRole.delete flush:true

        accountInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Account.label', default: 'Account'), accountInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'account.label', default: 'Account'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
