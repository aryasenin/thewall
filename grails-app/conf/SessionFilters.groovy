class SessionFilters {

    def grailsApplication
    def springSecurityService

    def filters = {
        all(controller: 'test', action: '*') {
            before = {

                /*
                Restriction dans l'EtabEnCours
                 */
                // On recupere le controller en cours, puis on trouve le domaine correspondant
                def domaineName = controllerName[0]?.toUpperCase() + controllerName[1..-1]
                Class clazz = grailsApplication.domainClasses.find { it.clazz.simpleName == domaineName }?.clazz

                /*
                 Si on est dans l'espace 'normal' (admin ou autres), on vérifie juste que l'etabEnCours est bien acessible à l'user en cours
                  */
                if (session.actualView == 'global') {

                    if (clazz) {
                        if (params?.id) {
                            /* Vues Show et Edit: l'id envoyé sera celui de l'instance en cours.
                             On verifie juste que cette instance appartient bien à l'etabEnCours
                             */
                            if (actionName?.startsWith("show") || actionName?.startsWith("edit")) {
                                def instance = clazz.get(params?.id?.toLong())
                                //log.info("Params ID >> " +params?.id?.toLong()+", Session etab en cours : "+session?.etabEnCours?.id)
                                if (!instance || session?.etabEnCours?.id != instance?.etablissement?.id) {
                                    redirect(controller: 'login', action: 'denied')
                                    return false
                                }
                            } else if (actionName?.startsWith("list") || actionName?.startsWith("create")) {
                                /*
                                Vues List et Create. On verifie d'abord que l'id envoyé represente bien le controlleur associé.
                                 Si la variable static modelePere existe, sa valeur représente le modele lié à l'id
                                 */
                                if (clazz.modelePere && clazz.modelePere != "") {
                                    def modelePere = clazz.modelePere

                                    // On recupere le "domaine parent" et on l'instancie avec l'id en parametre, afin de verifier
                                    // qu'il fait bien parti de l'etabEnCours
                                    clazz = grailsApplication.domainClasses.find {
                                        it.clazz.simpleName == modelePere
                                    }?.clazz

                                    if (clazz) {
                                        def instance = clazz.get(params?.id?.toLong())
                                        if (!instance || session?.etabEnCours?.id != instance?.etablissement?.id) {
                                            redirect(controller: 'login', action: 'denied')
                                            return false
                                        }
                                    }
                                }

                            }
                        }
                    }
                } else if (session.actualView == 'gerant') {
                    if (clazz) {
                        if (params?.gerantId) {
                            //On s'assure que params.prfId sera toujours le professeur en cours
                            if (params?.gerantId?.toLong() != springSecurityService.currentUser?.id) {
                                redirect(controller: 'login', action: 'denied')
                                return false
                            }
                        }
                        if (params?.id) {
                            // Vue List: on y affiche une liste d'elements appartenant à l'userEnCours. On peut
                            // donc juste controler l'id saisi
                            if (actionName?.startsWith("list") || actionName?.startsWith("create")) {
                                if (params?.id?.toLong() != springSecurityService.currentUser?.id) {
                                    redirect(controller: 'login', action: 'denied')
                                    return false
                                }
                            }
                            //Vues de show et d'edit: On verifie que l'instance appartient bien au userEnCours
                            else if (actionName?.startsWith("show") || actionName?.startsWith("edit")) {
                                def instance = clazz.get(params?.id?.toLong())
                                if (!instance || instance?.gerant?.id != springSecurityService.currentUser?.id) {
                                    redirect(controller: 'login', action: 'denied')
                                    return false
                                }
                            }

                        }
                    }
                }


            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
