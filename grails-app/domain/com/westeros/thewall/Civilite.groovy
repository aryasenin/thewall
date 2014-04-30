package com.westeros.thewall

class Civilite {

    //static auditable = false

    //Relation One-to-many
    Etablissement etablissement


    Long id
    Long version
    String code
    String libelle
    String libelleReduit

    //Informations Système
    Boolean deleted = false
    Date dateCreated
    Date lastUpdated
    String userCreate
    String userUpdate

    static numeroPattern = /^(0|\+|[0-9])*$/ //Les caractères acceptés pour les numeros de téléphone et fax telephone(matches: numeroPattern)

    static mapping = {
        //textArea type: "text"
        //photo sqlType: "mediumblob"
    }

    static constraints = {
        etablissement()
        code(size: 1..50, blank: false, unique: ['etablissement', 'code'])
        libelle(size: 1..200, blank: false)
        libelleReduit(size: 1..50, blank: false)

        deleted(nullable: true)
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreate(nullable: true)
        userUpdate(nullable: true)
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
