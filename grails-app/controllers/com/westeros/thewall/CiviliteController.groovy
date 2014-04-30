package com.westeros.thewall

import org.springframework.dao.DataIntegrityViolationException

class CiviliteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [civiliteInstanceList: Civilite.list(params), civiliteInstanceTotal: Civilite.count()]
    }

    def create() {
        [civiliteInstance: new Civilite(params)]
    }

    def save() {
        def civiliteInstance = new Civilite(params)
        def etablissement = Etablissement.get(1)
        civiliteInstance.etablissement = etablissement
        if (!civiliteInstance.save(flush: true)) {
            render(view: "list", model: [civiliteInstance: civiliteInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'civilite.label', default: 'Civilite'), civiliteInstance.id])
        redirect(action: "list", id: civiliteInstance.id)
    }

    def show(Long id) {
        def civiliteInstance = Civilite.get(id)
        if (!civiliteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "list")
            return
        }

        [civiliteInstance: civiliteInstance]
    }

    def edit(Long id) {
        def civiliteInstance = Civilite.get(id)
        if (!civiliteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "list")
            return
        }

        [civiliteInstance: civiliteInstance]
    }

    def update(Long id, Long version) {
        def civiliteInstance = Civilite.get(id)
        if (!civiliteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (civiliteInstance.version > version) {
                civiliteInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'civilite.label', default: 'Civilite')] as Object[],
                        "Another user has updated this Civilite while you were editing")
                render(view: "edit", model: [civiliteInstance: civiliteInstance])
                return
            }
        }

        civiliteInstance.properties = params

        if (!civiliteInstance.save(flush: true)) {
            render(view: "edit", model: [civiliteInstance: civiliteInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'civilite.label', default: 'Civilite'), civiliteInstance.id])
        redirect(action: "show", id: civiliteInstance.id)
    }

    def delete(Long id) {
        def civiliteInstance = Civilite.get(id)
        if (!civiliteInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "list")
            return
        }

        try {
            civiliteInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'civilite.label', default: 'Civilite'), id])
            redirect(action: "show", id: id)
        }
    }
}
