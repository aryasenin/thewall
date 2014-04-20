@artifact.package@class @artifact.name@ {
    //static auditable = true

    Long id
    Long version

    Etablissement etablissement

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

    static constraints = {
        etablissement()

        deleted(nullable: true)
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreated(nullable: true)
        userUpdated(nullable: true)
    }

    String toString() {
        return "${id}"
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
