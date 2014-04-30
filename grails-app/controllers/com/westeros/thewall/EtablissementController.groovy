package com.westeros.thewall

import org.springframework.dao.DataIntegrityViolationException

class EtablissementController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [etablissementInstanceList: Etablissement.list(params), etablissementInstanceTotal: Etablissement.count()]
    }

    def create() {
        [etablissementInstance: new Etablissement(params)]
    }

    def save() {
        def etablissementInstance = new Etablissement(params)
        if (!etablissementInstance.save(flush: true)) {
            render(view: "create", model: [etablissementInstance: etablissementInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), etablissementInstance.id])
        redirect(action: "show", id: etablissementInstance.id)
    }

    def show(Long id) {
        def etablissementInstance = Etablissement.get(id)
        if (!etablissementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "list")
            return
        }

        [etablissementInstance: etablissementInstance]
    }

    def edit(Long id) {
        def etablissementInstance = Etablissement.get(id)
        if (!etablissementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "list")
            return
        }

        [etablissementInstance: etablissementInstance]
    }

    def update(Long id, Long version) {
        def etablissementInstance = Etablissement.get(id)
        if (!etablissementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (etablissementInstance.version > version) {
                etablissementInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'etablissement.label', default: 'Etablissement')] as Object[],
                        "Another user has updated this Etablissement while you were editing")
                render(view: "edit", model: [etablissementInstance: etablissementInstance])
                return
            }
        }

        etablissementInstance.properties = params

        if (!etablissementInstance.save(flush: true)) {
            render(view: "edit", model: [etablissementInstance: etablissementInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), etablissementInstance.id])
        redirect(action: "show", id: etablissementInstance.id)
    }

    def delete(Long id) {
        def etablissementInstance = Etablissement.get(id)
        if (!etablissementInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "list")
            return
        }

        try {
            etablissementInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'etablissement.label', default: 'Etablissement'), id])
            redirect(action: "show", id: id)
        }
    }
}
