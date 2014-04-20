package com.westeros.thewall

class Etablissement {
    //static auditable = true

    Long id
    Long version

    String codeEtab
    String codeSms
    String libEtab
    String villeEtab
    String adresseEtab1
    String adresseEtab2
    String adresseEtab3
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
        codeBPM(nullable: true)
        codeEtab(blank: false, size: 1..50, unique: true)
        codeSms(nullable: true, size: 1..50, unique: true)
        libEtab(blank: false, size: 1..200)
        //pays(nullable: true)
        prefixeUrl(nullable: true, unique: true)
        villeEtab(nullable: true, size: 2..75)
        adresseEtab1(nullable: true, size: 1..128)
        adresseEtab2(nullable: true, size: 1..128)
        adresseEtab3(nullable: true, size: 1..128)
        telEtab(nullable: true)
        faxEtab(nullable: true)
        emailEtab(nullable: true, email: true, size: 0..60)
        siteWebEtab(nullable: true, url: true, size: 0..60)
        senderId(nullable: true)
        indSendEmail(nullable: true)
        indSendSms(nullable: true)

        pays(nullable: true)
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
        return "${libEtab}"
    }


    static modelePere = ""
}