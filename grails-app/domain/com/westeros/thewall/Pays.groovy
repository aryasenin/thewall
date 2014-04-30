package com.westeros.thewall

import org.springframework.web.context.request.RequestContextHolder

class Pays {
    //static auditable = true

    //static hasMany = [etablissements: Etablissement]

    Long id
    Long version

    String code
    String indicatif
    String libelle
    String libelleNationalite
    String republique


    Date dateCreated
    Date lastUpdated
    String userCreated
    String userUpdated


    //static transients = ['etablissement']


    /*def getEtablissement() {
        def currentRequest = RequestContextHolder.requestAttributes
        if (currentRequest) {
            return currentRequest.session.etabEnCours
        } else {
            // pas de session disponible
            return null
        }
    }*/


    static constraints = {

        code(blank: false)
        libelle(blank: false)
        libelleNationalite(nullable: true)
        indicatif(nullable: true)
        republique(nullable: true)


        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreated(nullable: true)
        userUpdated(nullable: true)
    }

    String toString() {
        return "${libelle}"
    }

    def springSecurityService
    // GORM Events
    def beforeInsert = {
        // userCreated = principalInfo?.username
        def userPrincipal = springSecurityService.currentUser
        if ((userPrincipal != null) && (userPrincipal != 'anonymousUser')) {
            userCreate = userPrincipal.username
        } else {
            userCreate = ""
        }

    }

    def beforeUpdate = {
        // userUpdated = principalInfo?.username
        def userPrincipal = springSecurityService.currentUser
        if ((userPrincipal != null) && (userPrincipal != 'anonymousUser')) {
            userUpdate = userPrincipal.username
        } else {
            userUpdate = ""
        }
    }

    static modelePere = ""
}
