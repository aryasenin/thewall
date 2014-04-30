package com.westeros.thewall

class MembresGroupeDiffusion {
    //static auditable = true

    //Relation
    User groupe
    User membre

    Long id
    Long version

    Boolean deleted = false
    Date dateCreated
    Date lastUpdated
    Date dateDeleted
    String userCreated
    String userUpdated
    String userDeleted

    static transients = ['etablissement']

    def getEtablissement() {
        return this?.membre?.etablissement
    }

    static constraints = {
        membre()
        groupe()

        deleted()
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreated(nullable: true)
        userUpdated(nullable: true)
        userDeleted(nullable: true)
        dateDeleted(nullable: true)
    }

    static modelePere = ""
}
