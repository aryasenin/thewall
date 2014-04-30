<%@ page import="com.westeros.thewall.User" %>



<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="etablissement" class="padTop col-md-4 control-label">
            <g:message code="user.etablissement.label" default="Etablissement"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="etablissement.id"
                                        from="${com.westeros.thewall.Etablissement.list()}" optionKey="id" required=""
                                        value="${userInstance?.etablissement?.id}" class="many-to-one"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="userType" class="padTop col-md-4 control-label">
            <g:message code="user.userType.label" default="User Type"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="userType"
                                        from="${userInstance.constraints.userType.inList}" required=""
                                        value="${userInstance?.userType}" valueMessagePrefix="user.userType"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="civilite" class="padTop col-md-4 control-label">
            <g:message code="user.civilite.label" default="Civilite"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="civilite.id"
                                        from="${com.westeros.thewall.Civilite.list()}" optionKey="id"
                                        value="${userInstance?.civilite?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="nom" class="padTop col-md-4 control-label">
            <g:message code="user.nom.label" default="Nom"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="nom" value="${userInstance?.nom}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="prenom" class="padTop col-md-4 control-label">
            <g:message code="user.prenom.label" default="Prenom"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="prenom" value="${userInstance?.prenom}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="email" class="padTop col-md-4 control-label">
            <g:message code="user.email.label" default="Email"/>

        </label>

        <div class="col-md-6"><g:field type="email" name="email" value="${userInstance?.email}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="telMobile" class="padTop col-md-4 control-label">
            <g:message code="user.telMobile.label" default="Tel Mobile"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="telMobile"
                                           pattern="${userInstance.constraints.telMobile.matches}"
                                           value="${userInstance?.telMobile}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="telBureau" class="padTop col-md-4 control-label">
            <g:message code="user.telBureau.label" default="Tel Bureau"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="telBureau"
                                           pattern="${userInstance.constraints.telBureau.matches}"
                                           value="${userInstance?.telBureau}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="telDomicile" class="padTop col-md-4 control-label">
            <g:message code="user.telDomicile.label" default="Tel Domicile"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="telDomicile"
                                           pattern="${userInstance.constraints.telDomicile.matches}"
                                           value="${userInstance?.telDomicile}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="fax" class="padTop col-md-4 control-label">
            <g:message code="user.fax.label" default="Fax"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="fax"
                                           pattern="${userInstance.constraints.fax.matches}"
                                           value="${userInstance?.fax}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="dateDeNaissance" class="padTop col-md-4 control-label">
            <g:message code="user.dateDeNaissance.label" default="Date De Naissance"/>

        </label>

        <div class="col-md-6"><g:jqDatePicker name="dateDeNaissance" value="${userInstance?.dateDeNaissance}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="lieuNaissance" class="padTop col-md-4 control-label">
            <g:message code="user.lieuNaissance.label" default="Lieu Naissance"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="lieuNaissance"
                                           value="${userInstance?.lieuNaissance}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="professionPersonne" class="padTop col-md-4 control-label">
            <g:message code="user.professionPersonne.label" default="Profession Personne"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="professionPersonne"
                                           value="${userInstance?.professionPersonne}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="dateDelivrancePiece" class="padTop col-md-4 control-label">
            <g:message code="user.dateDelivrancePiece.label" default="Date Delivrance Piece"/>

        </label>

        <div class="col-md-6"><g:jqDatePicker name="dateDelivrancePiece"
                                              value="${userInstance?.dateDelivrancePiece}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="dateValiditePiecePersonne" class="padTop col-md-4 control-label">
            <g:message code="user.dateValiditePiecePersonne.label" default="Date Validite Piece Personne"/>

        </label>

        <div class="col-md-6"><g:jqDatePicker name="dateValiditePiecePersonne"
                                              value="${userInstance?.dateValiditePiecePersonne}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="ville" class="padTop col-md-4 control-label">
            <g:message code="user.ville.label" default="Ville"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="ville" value="${userInstance?.ville}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="naturePiece" class="padTop col-md-4 control-label">
            <g:message code="user.naturePiece.label" default="Nature Piece"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="naturePiece.id"
                                        from="${com.westeros.thewall.NaturePiece.list()}" optionKey="id"
                                        value="${userInstance?.naturePiece?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="nationalite" class="padTop col-md-4 control-label">
            <g:message code="user.nationalite.label" default="Nationalite"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="nationalite.id"
                                        from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                                        value="${userInstance?.nationalite?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="paysNaissance" class="padTop col-md-4 control-label">
            <g:message code="user.paysNaissance.label" default="Pays Naissance"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="paysNaissance.id"
                                        from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                                        value="${userInstance?.paysNaissance?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="paysResidence" class="padTop col-md-4 control-label">
            <g:message code="user.paysResidence.label" default="Pays Residence"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="paysResidence.id"
                                        from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                                        value="${userInstance?.paysResidence?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="username" class="padTop col-md-4 control-label">
            <g:message code="user.username.label" default="Username"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="username" required=""
                                           value="${userInstance?.username}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="password" class="padTop col-md-4 control-label">
            <g:message code="user.password.label" default="Password"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="password" required=""
                                           value="${userInstance?.password}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="description" class="padTop col-md-4 control-label">
            <g:message code="user.description.label" default="Description"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="description"
                                           value="${userInstance?.description}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="adresse" class="padTop col-md-4 control-label">
            <g:message code="user.adresse.label" default="Adresse"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="adresse" value="${userInstance?.adresse}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

    <div class="col-md-6">
        <!-- Group -->
        <div class="form-group">
            <label for="numeroPiece" class="padTop col-md-4 control-label">
                <g:message code="user.numeroPiece.label" default="Numero Piece"/>

            </label>

            <div class="col-md-6"><g:textField class="form-control" name="numeroPiece"
                                               value="${userInstance?.numeroPiece}"/></div>
        </div>
        <!-- // Group END -->
    </div>

    <div class="separator bottom">

        <div class="col-md-6">
            <!-- Group -->
            <div class="form-group">
                <label for="sexe" class="padTop col-md-4 control-label">
                    <g:message code="user.sexe.label" default="Sexe"/>

                </label>

                <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="sexe"
                                                from="${userInstance.constraints.sexe.inList}"
                                                value="${userInstance?.sexe}" valueMessagePrefix="user.sexe"
                                                noSelection="['': '']"/></div>
            </div>
            <!-- // Group END -->
        </div>

        <div class="separator bottom">

            <div class="col-md-6">
                <!-- Group -->
                <div class="form-group">
                    <label for="photo" class="padTop col-md-4 control-label">
                        <g:message code="user.photo.label" default="Photo"/>

                    </label>

                    <div class="col-md-6"><div class="fileupload fileupload-new margin-none"
                                               data-provides="fileupload"><div class="input-group"><div
                                class="form-control col-md-3"><i class="fa fa-file fileupload-exists"></i><span
                                    class="fileupload-preview"></span></div><span class="input-group-btn"><span
                                class="btn btn-default btn-file"><span class="fileupload-new">Fichier</span><span
                                    class="fileupload-exists">Changer</span> <input type="file" class="margin-none"
                                                                                    id="photo" name="photo"/></span><a
                                href="#" class="btn fileupload-exists" data-dismiss="fileupload">Supp.</a></span></div>
                    </div></div>
                </div>
                <!-- // Group END -->
            </div>

            <div class="separator bottom">

                <div class="col-md-6">
                    <!-- Group -->
                    <div class="form-group">
                        <label for="photoType" class="padTop col-md-4 control-label">
                            <g:message code="user.photoType.label" default="Photo Type"/>

                        </label>

                        <div class="col-md-6"><g:textField class="form-control" name="photoType"
                                                           value="${userInstance?.photoType}"/></div>
                    </div>
                    <!-- // Group END -->
                </div>

                <div class="separator bottom">

                    <div class="col-md-6">
                        <!-- Group -->
                        <div class="form-group">
                            <label for="enabled" class="padTop col-md-4 control-label">
                                <g:message code="user.enabled.label" default="Enabled"/>

                            </label>

                            <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                                    name="enabled" value="${userInstance?.enabled}"/> <i
                                    class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                        </div>
                        <!-- // Group END -->
                    </div>

                    <div class="separator bottom">

                        <div class="col-md-6">
                            <!-- Group -->
                            <div class="form-group">
                                <label for="accountLocked" class="padTop col-md-4 control-label">
                                    <g:message code="user.accountLocked.label" default="Account Locked"/>

                                </label>

                                <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                                        name="accountLocked" value="${userInstance?.accountLocked}"/> <i
                                        class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                            </div>
                            <!-- // Group END -->
                        </div>

                        <div class="separator bottom">

                            <div class="col-md-6">
                                <!-- Group -->
                                <div class="form-group">
                                    <label for="accountExpired" class="padTop col-md-4 control-label">
                                        <g:message code="user.accountExpired.label" default="Account Expired"/>

                                    </label>

                                    <div class="col-md-6"><div class="checkbox"><label
                                            class="checkbox-custom"><g:checkBox name="accountExpired"
                                                                                value="${userInstance?.accountExpired}"/> <i
                                                class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                                </div>
                                <!-- // Group END -->
                            </div>

                            <div class="separator bottom">

                                <div class="col-md-6">
                                    <!-- Group -->
                                    <div class="form-group">
                                        <label for="passwordExpired" class="padTop col-md-4 control-label">
                                            <g:message code="user.passwordExpired.label" default="Password Expired"/>

                                        </label>

                                        <div class="col-md-6"><div class="checkbox"><label
                                                class="checkbox-custom"><g:checkBox name="passwordExpired"
                                                                                    value="${userInstance?.passwordExpired}"/> <i
                                                    class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                                    </div>
                                    <!-- // Group END -->
                                </div>

                                <div class="separator bottom">

                                    <div class="col-md-6">
                                        <!-- Group -->
                                        <div class="form-group">
                                            <label for="changerPass" class="padTop col-md-4 control-label">
                                                <g:message code="user.changerPass.label" default="Changer Pass"/>

                                            </label>

                                            <div class="col-md-6"><div class="checkbox"><label
                                                    class="checkbox-custom"><g:checkBox name="changerPass"
                                                                                        value="${userInstance?.changerPass}"/> <i
                                                        class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                                        </div>
                                        <!-- // Group END -->
                                    </div>

                                    <div class="separator bottom">

                                        <div class="col-md-6">
                                            <!-- Group -->
                                            <div class="form-group">
                                                <label for="reinitialise" class="padTop col-md-4 control-label">
                                                    <g:message code="user.reinitialise.label" default="Reinitialise"/>

                                                </label>

                                                <div class="col-md-6"><div class="checkbox"><label
                                                        class="checkbox-custom"><g:checkBox name="reinitialise"
                                                                                            value="${userInstance?.reinitialise}"/> <i
                                                            class="fa fa-fw fa-square-o disabled"></i></label></div>
                                                </div>
                                            </div>
                                            <!-- // Group END -->
                                        </div>

                                        <div class="separator bottom">

                                            <div class="col-md-6">
                                                <!-- Group -->
                                                <div class="form-group">
                                                    <label for="userReinitialise" class="padTop col-md-4 control-label">
                                                        <g:message code="user.userReinitialise.label"
                                                                   default="User Reinitialise"/>

                                                    </label>

                                                    <div class="col-md-6"><g:textField class="form-control"
                                                                                       name="userReinitialise"
                                                                                       value="${userInstance?.userReinitialise}"/></div>
                                                </div>
                                                <!-- // Group END -->
                                            </div>

                                            <div class="separator bottom">

                                                <div class="col-md-6">
                                                    <!-- Group -->
                                                    <div class="form-group">
                                                        <label for="motifVerouillage"
                                                               class="padTop col-md-4 control-label">
                                                            <g:message code="user.motifVerouillage.label"
                                                                       default="Motif Verouillage"/>

                                                        </label>

                                                        <div class="col-md-6"><g:textField class="form-control"
                                                                                           name="motifVerouillage"
                                                                                           value="${userInstance?.motifVerouillage}"/></div>
                                                    </div>
                                                    <!-- // Group END -->
                                                </div>

                                                <div class="separator bottom">

                                                    <div class="col-md-6">
                                                        <!-- Group -->
                                                        <div class="form-group">
                                                            <label for="dateVerouillage"
                                                                   class="padTop col-md-4 control-label">
                                                                <g:message code="user.dateVerouillage.label"
                                                                           default="Date Verouillage"/>

                                                            </label>

                                                            <div class="col-md-6"><g:jqDatePicker name="dateVerouillage"
                                                                                                  value="${userInstance?.dateVerouillage}"/></div>
                                                        </div>
                                                        <!-- // Group END -->
                                                    </div>

                                                    <div class="separator bottom">

                                                        <div class="col-md-6">
                                                            <!-- Group -->
                                                            <div class="form-group">
                                                                <label for="utilisateurVerouillage"
                                                                       class="padTop col-md-4 control-label">
                                                                    <g:message code="user.utilisateurVerouillage.label"
                                                                               default="Utilisateur Verouillage"/>

                                                                </label>

                                                                <div class="col-md-6"><g:textField class="form-control"
                                                                                                   name="utilisateurVerouillage"
                                                                                                   value="${userInstance?.utilisateurVerouillage}"/></div>
                                                            </div>
                                                            <!-- // Group END -->
                                                        </div>

                                                        <div class="separator bottom">

