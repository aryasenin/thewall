package com.westeros.thewall

class Etablissement {
    //static auditable = true

    Long id
    Long version

    Pays pays

    String codeEtab
    String codeSms
    String libelleEtab
    String villeEtab
    String adresse1
    String adresse2
    String adresse3
    String telEtab
    String faxEtab
    String emailEtab
    String siteWebEtab
    String senderId
    String codeSmsServiceEtab

    //info reporting
    byte[] logo
    byte[] fondCarte
    String signature
    String piedPage
    String typeFileL
    String typeFileF

    byte[] reglementInterieur
    String typeFileReglementInterieur


    Integer photoWidth = 190
    Integer photoHeight = 220
    String prefixeUrl

    String codeBPM // utilisé pour differencier les process des differents etablissements, inchangeable

    //Paramétrage Service SMS
    Boolean indSendEmail = true
    Boolean indSendSms = true

    Date dateCreated
    Date lastUpdated
    String userCreated
    String userUpdated

    static numeroPattern = /^(0|\+|[0-9])*$/

    static mapping = {
        // logo sqlType: "mediumblob"
        //fondCarte sqlType: "mediumblob"
        //reglementInterieur sqlType: "mediumblob"
    }

    static constraints = {
        codeEtab(blank: false, size: 1..50, unique: true)
        libelleEtab(blank: false, size: 1..200)
        pays(nullable: true)
        codeBPM(nullable: true)
        codeSms(nullable: true, size: 1..50, unique: true)
        prefixeUrl(nullable: true, unique: true)
        villeEtab(nullable: true, size: 2..75)
        adresse1(nullable: true, size: 1..128)
        adresse2(nullable: true, size: 1..128)
        adresse3(nullable: true, size: 1..128)
        telEtab(nullable: true)
        faxEtab(nullable: true)
        emailEtab(nullable: true, email: true, size: 0..60)
        siteWebEtab(nullable: true, url: true, size: 0..60)
        senderId(nullable: true)
        indSendEmail(nullable: true)
        indSendSms(nullable: true)

        codeSmsServiceEtab(nullable: true)

        //Info reporting
        signature(nullable: true)
        piedPage(nullable: true)
        logo(nullable: true)
        fondCarte(nullable: true)
        typeFileL(nullable: true)
        typeFileF(nullable: true)
        reglementInterieur(nullable: true)
        typeFileReglementInterieur(nullable: true)

        photoWidth(nullable: true)
        photoHeight(nullable: true)

        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        userCreated(nullable: true)
        userUpdated(nullable: true)
    }


    static transients = ['etablissement']

    def getEtablissement() {
        return this
    }


    String toString() {
        return "${libelleEtab}"
    }


    static modelePere = ""
}
