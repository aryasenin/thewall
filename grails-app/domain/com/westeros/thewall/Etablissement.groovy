package com.westeros.thewall

class Etablissement {
    //static auditable = true

    //Relation
    Pays pays

    Long id
    Long version

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

    //  Boolean isRootEtab = false
    /* Etablissement Pere: peut "englober" plusieurs etablissements. Les etablissements liés à cet
                                     etab (etab dont isRootEtab==true) peuvent affecter des etablissements à tout utilisateur.
                                     Les autres, non. A changer directement dans la bdd. Ou en superUser
                                  */

    //info reporting
    byte[] logo
    byte[] fondCarte
    String signature
    String piedPage
    String typeFileLogo
    String typeFileFondCarte

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

    static mapping = {
        logo sqlType: "mediumblob"
        //fondCarte sqlType: "mediumblob"
        reglementInterieur sqlType: "mediumblob"
    }

    static constraints = {
        pays(nullable: true)
        codeBPM(nullable: true, unique: true)
        codeEtab(blank: false, size: 1..50, unique: true)
        codeSms(nullable: true, size: 1..50, unique: true)
        libelleEtab(blank: false, size: 1..200)
        prefixeUrl(nullable: true, unique: true)
        villeEtab(nullable: true, size: 2..75)
        adresse1(nullable: true, size: 1..128)
        adresse2(nullable: true, size: 1..128)
        adresse3(nullable: true, size: 1..128)
        telEtab(nullable: true)
        faxEtab(nullable: true)
        emailEtab(nullable: true, email: true, size: 0..60, unique: true)
        siteWebEtab(nullable: true, url: true, size: 0..60, unique: true)
        senderId(nullable: true, unique: true)
        indSendEmail(nullable: true)
        indSendSms(nullable: true)

        codeSmsServiceEtab(nullable: true, unique: true)

        //Info reporting
        signature(nullable: true)
        piedPage(nullable: true)
        logo(nullable: true)
        fondCarte(nullable: true)
        typeFileLogo(nullable: true)
        typeFileFondCarte(nullable: true)
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
        return "${libelleEtabEtab}"
    }


    static modelePere = ""

}
