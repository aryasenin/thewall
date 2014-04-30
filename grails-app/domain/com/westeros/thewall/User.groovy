package com.westeros.thewall

class User {

    transient springSecurityService

    Etablissement etablissement
    Civilite civilite
    NaturePiece naturePiece
    Pays nationalite
    Pays paysNaissance
    Pays paysResidence

    String userType
    String username
    String password

    String nom
    String prenom
    //String raisonSociale
    String sexe
    Date dateDeNaissance
    String lieuNaissance
    String professionPersonne
    byte[] photo // ou logo pour une entreprise
    String photoType

    String description

    String numeroPiece
    Date dateDelivrancePiece
    Date dateValiditePiecePersonne

    String adresse   // ou siege sociale pour une entreprise
    String ville
    String email
    String telMobile
    String telBureau
    String telDomicile
    String fax

    Boolean enabled = true
    Boolean accountExpired = false
    Boolean accountLocked = false
    Boolean passwordExpired = false
    Boolean changerPass
    Boolean reinitialise
    String userReinitialise
    String motifVerouillage
    Date dateVerouillage
    String utilisateurVerouillage


    static mapping = {
        description type: "text"
        password column: '`password`'
        tablePerHierarchy false
        civilite lazy: false
        photo sqlType: "mediumblob"
    }

    static numeroPattern = /^(0|\+|[0-9])*$/

    static constraints = {
        etablissement(blank: false)
        userType(blank: false, inList: ['LOC', 'GER', 'ADM', 'GSYS', 'GRP'])
        //LOC: Locataire, ADM: administrateur, GER: Gérant, GSYS: groupe (de diffusion) systeme, GRP: groupe de diffusion
        civilite(nullable: true, validator: { value, userInstance, errors ->
            if (!value && userInstance?.userType in ['LOC', 'GER', 'ADM']) {
                errors.rejectValue("civilite", "user.civilite.not.null", "Veuillez saisir la civilité")
                return false
            }
            return true
        })
        nom(nullable: true, validator: { value, userInstance, errors ->
            if (!value && userInstance?.userType in ['LOC', 'GER', 'ADM', 'GSYS', 'GRP']) {
                errors.rejectValue("nom", "user.nom.not.null", "Veuillez saisir le nom")
                return false
            }
            return true
        })
        prenom(nullable: true, validator: { value, userInstance, errors ->
            if (!value && userInstance?.userType in ['LOC', 'GER', 'ADM', 'GSYS', 'GRP']) {
                errors.rejectValue("prenom", "user.prenom.not.null", "Veuillez saisir le prenom")
                return false
            }
            return true
        })
/*        raisonSociale(nullable: true, validator: { value, userInstance, errors ->
            if (!value && userInstance?.userType in ['GROUP']) {
                errors.rejectValue("raisonSociale", "user.raisonSociale.not.null", "Veuillez saisir la raison sociale")
                return false
            }
            return true
        })*/
        email(nullable: true, email: true)
        telMobile(nullable: true, matches: numeroPattern)
        telBureau(nullable: true, matches: numeroPattern)
        telDomicile(nullable: true, matches: numeroPattern)
        fax(nullable: true, matches: numeroPattern)
        dateDeNaissance(nullable: true, validator: { value, userInstance, errors ->
            if (value && value >= new Date()) {
                errors.rejectValue("dateDeNaissance", "user.dateDeNaissance.not.null", "La date de naissance doit être anterieure à la date du jour")
                return false
            }
            return true
        })
        lieuNaissance(nullable: true)
        professionPersonne(nullable: true)
        dateDelivrancePiece(nullable: true, validator: { value, userInstance, errors ->
            if (value && value > new Date()) {
                errors.rejectValue("dateDelivrancePiece", "user.dateDelivrancePiece.not.null", "La date de délivrance de la pièce doit être anterieure à la date du jour")
                return false
            }
            return true
        })
        dateValiditePiecePersonne(nullable: true, validator: { value, userInstance, errors ->
            if (value && value <= new Date()) {
                errors.rejectValue("dateValiditePiecePersonne", "user.dateValiditePiecePersonne.not.null", "La date de validité de la pièce doit être posterieure à la date du jour")
                return false
            }
            return true
        })
        ville(nullable: true)
        naturePiece(nullable: true)
        nationalite(nullable: true)
        paysNaissance(nullable: true)
        paysResidence(nullable: true)
        username(blank: false, unique: true)
        password(blank: false)
        description(nullable: true)
        adresse(nullable: true, validator: { value, userInstance, errors ->
            if (!value && userInstance?.userType in ['GES_CL', 'POMP', 'PART', 'MEM', 'GPS', 'GROUP']) {
                errors.rejectValue("adresse", "user.adresse.not.null", "Veuillez saisir l\'adresse")
                return false
            }
            return true
        })
        numeroPiece(nullable: true)
        sexe(nullable: true, inList: ['H', 'F'])
        photo(nullable: true)
        photoType(nullable: true)

        enabled(blank: false)
        accountLocked(blank: false)
        accountExpired(blank: false)
        passwordExpired(blank: false)

        changerPass(nullable: true)
        reinitialise(nullable: true)
        userReinitialise(nullable: true)

        motifVerouillage(nullable: true)
        dateVerouillage(nullable: true)
        utilisateurVerouillage(nullable: true)

    }


    Set<Role> getAuthorities() {
        UserRole.findAllByUser(this).collect { it.role } as Set
    }

    /*def getEtablissementUsers() {
        return EtablissementUser.findAllByUser(this)
    }*/


    def beforeInsert() {
        if (password) {
            //  encodePassword(password)
        }
    }

    def beforeUpdate() {
        if (isDirty('password')) {
            // encodePassword()
        }
    }

    protected void encodePassword(String pwd) {
        log.info("password= " + pwd)
        password = springSecurityService.encodePassword(pwd)
    }

    String toString() {
        return "${username} - ${nom} ${prenom}"
    }

    static transients = ['intitule']

    def getIntitule() {
        return "${nom} ${prenom}"
    }

    def afterInsert = {

        // ************ GSYS 'tous les admins' **************** //

        MembresGroupeDiffusion.withNewSession {

            if (this.userType == "ADM") {
                // Verif si le Groupe n'existe pas d√©j√†
                def grpeList = User.find("from User u where u.username=:username and u.userType=:type", [username: "GS_ADM", type: "GSYS"])
                if (!grpeList) { // s'il n'existe pas
                    def gsys = new User()
                    gsys.username = "GS_ADM"
                    gsys.nom = "Groupe Administrateurs"
                    gsys.userType = "GSYS"
                    gsys.civilite = Civilite.findByCode("CV001")
                    gsys.prenom = "/"
                    gsys.password = "/"
                    gsys.email = "xxx@xxx.xxx"
                    gsys.enabled = false
                    gsys.accountLocked = false
                    gsys.accountExpired = false
                    gsys.passwordExpired = false


                    gsys.save()
                    // ajout du prof au GSYS

                    def newMembre = new MembresGroupeDiffusion()
                    newMembre.membre = this
                    newMembre.groupe = gsys
                    newMembre.save()

                } else {
                    // si le groupe existe d√©j√†

                    // verif si le prof n'est pas d√©j√† membre du groupe

                    def membres = MembresGroupeDiffusion.findAllByMembreAndGroupe(this, grpeList)
                    if (membres.isEmpty()) {
                        def newMembre = new MembresGroupeDiffusion()
                        newMembre.membre = this
                        newMembre.groupe = grpeList
                        newMembre.save(flush: true)
                    }
                }
            }
        }

        // ************ GSYS 'tous les admins de l'etablissement' **************** //

        MembresGroupeDiffusion.withNewSession {

            if (this.userType == "ADM") {
                if (this.etablissement) {
                    // Verif si le Groupe n'existe pas d√©j√†
                    def grpeList = User.find("from User u where u.username=:username and u.userType=:type", [username: "GS_ADM_" + this.etablissement.libEtab, type: "GSYS"])
                    if (!grpeList) { // s'il n'existe pas
                        def gsys = new User()
                        gsys.username = "GS_ADM_" + this.etablissement.libEtab
                        gsys.nom = "Groupe Administrateurs de " + this.etablissement.libEtab
                        gsys.userType = "GSYS"
                        gsys.civilite = Civilite.findByCode("CV001")
                        gsys.etablissement = this.etablissement
                        gsys.prenom = "/"
                        gsys.password = "/"
                        gsys.email = "xxx@xxx.xxx"
                        gsys.enabled = false
                        gsys.accountLocked = false
                        gsys.accountExpired = false
                        gsys.passwordExpired = false


                        gsys.save()
                        log.info("user gsys errors= " + gsys.errors)
                        // ajout du prof au GSYS

                        def newMembre = new MembresGroupeDiffusion()
                        newMembre.membre = this
                        newMembre.groupe = gsys
                        newMembre.save()

                    } else {
                        // si le groupe existe d√©j√†

                        // verif si le prof n'est pas d√©j√† membre du groupe

                        def membres = MembresGroupeDiffusion.findAllByMembreAndGroupe(this, grpeList)
                        if (membres.isEmpty()) {
                            def newMembre = new MembresGroupeDiffusion()
                            newMembre.membre = this
                            newMembre.groupe = grpeList
                            newMembre.save(flush: true)
                        }
                    }
                }
            }
        }
    }

    def beforeDelete = {

        // ************ GSYS 'tous les admins' **************** //

        MembresGroupeDiffusion.withNewSession {

            if (this.userType == "ADM") {
                // Verif si le Groupe n'existe pas d√©j√†
                def grpeList = User.find("from User u where u.username=:username and u.userType=:type", [username: "GS_ADM", type: "GSYS"])
                if (grpeList) {

                    def membre = MembresGroupeDiffusion.findByMembreAndGroupe(this, grpeList)
                    if (membre) {
                        try {
                            membre.delete(flush: true)
                        }
                        catch (org.springframework.dao.DataIntegrityViolationException e) {
                        }
                    }
                }
            }
        }

        // ************ GSYS 'tous les admins de l'etablissement' **************** //

        MembresGroupeDiffusion.withNewSession {

            if (this.userType == "ADM") {
                // Verif si le Groupe n'existe pas d√©j√†
                def grpeList = User.find("from User u where u.username=:username and u.userType=:type", [username: "GS_ADM_" + this.etablissement.libEtab, type: "GSYS"])
                if (grpeList) {

                    def membre = MembresGroupeDiffusion.findByMembreAndGroupe(this, grpeList)
                    if (membre) {
                        try {
                            membre.delete(flush: true)
                        }
                        catch (org.springframework.dao.DataIntegrityViolationException e) {
                        }
                    }
                }
            }
        }
    }

/*    String toString() {
        return "${username} - ${nom} ${prenom}"
    }*/

    static modelePere = ""
}
