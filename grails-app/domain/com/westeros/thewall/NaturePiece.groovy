package com.westeros.thewall

class NaturePiece {
    //static auditable = true

    Long id
    Long version

    Etablissement etablissement
    String naturePiece
    String libelleNaturePiece

    Boolean indAutorisationTransaction = false

    //Informations Système
    Boolean deleted = false
    Date dateCreated
    Date dateUpdated
    Date dateDeleted
    String userCreate
    String userUpdate
    String userDelete


    static constraints = {
        etablissement()
        naturePiece(blank: false, size: 1..50, unique: true)
        libelleNaturePiece(blank: false, size: 1..200, unique: true)
        indAutorisationTransaction()

        deleted()
        dateCreated(nullable: true)
        dateUpdated(nullable: true)
        dateDeleted(nullable: true)
        userCreate(nullable: true)
        userUpdate(nullable: true)
        userUpdate(nullable: true)
        userDelete(nullable: true)

    }

    String toString() {
        return "${libelleNaturePiece}"
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
