package com.westeros.thewall

import org.springframework.dao.DataIntegrityViolationException

class EtablissementUserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [etablissementUserInstanceList: EtablissementUser.list(params), etablissementUserInstanceTotal: EtablissementUser.count()]
    }

    def create() {
        [etablissementUserInstance: new EtablissementUser(params)]
    }

    def save() {
        def etablissementUserInstance = new EtablissementUser(params)
        if (!etablissementUserInstance.save(flush: true)) {
            render(view: "create", model: [etablissementUserInstance: etablissementUserInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), etablissementUserInstance.id])
        redirect(action: "show", id: etablissementUserInstance.id)
    }

    def show(Long id) {
        def etablissementUserInstance = EtablissementUser.get(id)
        if (!etablissementUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "list")
            return
        }

        [etablissementUserInstance: etablissementUserInstance]
    }

    def edit(Long id) {
        def etablissementUserInstance = EtablissementUser.get(id)
        if (!etablissementUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "list")
            return
        }

        [etablissementUserInstance: etablissementUserInstance]
    }

    def update(Long id, Long version) {
        def etablissementUserInstance = EtablissementUser.get(id)
        if (!etablissementUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (etablissementUserInstance.version > version) {
                etablissementUserInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'etablissementUser.label', default: 'EtablissementUser')] as Object[],
                        "Another user has updated this EtablissementUser while you were editing")
                render(view: "edit", model: [etablissementUserInstance: etablissementUserInstance])
                return
            }
        }

        etablissementUserInstance.properties = params

        if (!etablissementUserInstance.save(flush: true)) {
            render(view: "edit", model: [etablissementUserInstance: etablissementUserInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), etablissementUserInstance.id])
        redirect(action: "show", id: etablissementUserInstance.id)
    }

    def delete(Long id) {
        def etablissementUserInstance = EtablissementUser.get(id)
        if (!etablissementUserInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "list")
            return
        }

        try {
            etablissementUserInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'etablissementUser.label', default: 'EtablissementUser'), id])
            redirect(action: "show", id: id)
        }
    }
}
