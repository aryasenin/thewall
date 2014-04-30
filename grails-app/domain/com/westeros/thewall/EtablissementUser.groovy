package com.westeros.thewall

class EtablissementUser {
    //static auditable = true

    static belongsTo = [etablissement: Etablissement, user: User]

    long id
    long version

    //Informations Système
    Boolean deleted = false
    Date dateCreated
    Date lastUpdated
    String userCreated
    String userUpdated

    static constraints = {
        etablissement(unique: ['etablissement', 'user'])
        user()

        deleted(nullable: true)
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreated(nullable: true)
        userUpdated(nullable: true)
    }

    String toString() {
        return "${user.toString()} ${etablissement?.libEtab}"
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
}
