package com.westeros.thewall

import org.springframework.web.context.request.RequestContextHolder

class Pays {
    //static auditable = true

    Long id
    Long version

    String code
    String indicatif
    String libelle
    String libelleNationalite
    String republique

    //Informations Système
    Boolean deleted = false
    Date dateCreated
    Date lastUpdated
    String userCreated
    String userUpdated

    static mapping = {
        //textArea type: "text"
        //photo sqlType: "mediumblob"
    }

    static transients = ['etablissement']


    def getEtablissement() {
        def currentRequest = RequestContextHolder.requestAttributes
        if (currentRequest) {
            return currentRequest.session.etabEnCours
        } else {
            // pas de session disponible
            return null
        }
    }

    static constraints = {

        code(blank: false)
        libelle(blank: false)
        libelleNationalite(nullable: true)
        indicatif(nullable: true)
        republique(nullable: true)

        deleted(nullable: true)
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
            userCreated = userPrincipal.username
        } else {
            userCreated = ""
        }

    }

    def beforeUpdate = {
        // userUpdated = principalInfo?.username
        def userPrincipal = springSecurityService.currentUser
        if ((userPrincipal != null) && (userPrincipal != 'anonymousUser')) {
            userUpdated = userPrincipal.username
        } else {
            userUpdated = ""
        }
    }

    static modelePere = ""

    def getEtablissements() {
        return Etablissement.findAll("from Pays where id=:pays order by libelle", [pays: this.id])
    }
}
