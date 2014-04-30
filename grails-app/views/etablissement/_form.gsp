<%@ page import="com.westeros.thewall.Etablissement" %>



<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="pays" class="padTop col-md-4 control-label">
            <g:message code="etablissement.pays.label" default="Pays"/>

        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="pays.id"
                                        from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                                        value="${etablissementInstance?.pays?.id}" class="many-to-one"
                                        noSelection="['null': '']"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="codeBPM" class="padTop col-md-4 control-label">
            <g:message code="etablissement.codeBPM.label" default="Code BPM"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="codeBPM"
                                           value="${etablissementInstance?.codeBPM}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="codeEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.codeEtab.label" default="Code Etab"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="codeEtab" maxlength="50" required=""
                                           value="${etablissementInstance?.codeEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="codeSms" class="padTop col-md-4 control-label">
            <g:message code="etablissement.codeSms.label" default="Code Sms"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="codeSms" maxlength="50"
                                           value="${etablissementInstance?.codeSms}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="libelleEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.libelleEtab.label" default="Libelle Etab"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="libelleEtab" maxlength="200" required=""
                                           value="${etablissementInstance?.libelleEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="prefixeUrl" class="padTop col-md-4 control-label">
            <g:message code="etablissement.prefixeUrl.label" default="Prefixe Url"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="prefixeUrl"
                                           value="${etablissementInstance?.prefixeUrl}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="villeEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.villeEtab.label" default="Ville Etab"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="villeEtab" maxlength="75"
                                           value="${etablissementInstance?.villeEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="adresse1" class="padTop col-md-4 control-label">
            <g:message code="etablissement.adresse1.label" default="Adresse1"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="adresse1" maxlength="128"
                                           value="${etablissementInstance?.adresse1}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="adresse2" class="padTop col-md-4 control-label">
            <g:message code="etablissement.adresse2.label" default="Adresse2"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="adresse2" maxlength="128"
                                           value="${etablissementInstance?.adresse2}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="adresse3" class="padTop col-md-4 control-label">
            <g:message code="etablissement.adresse3.label" default="Adresse3"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="adresse3" maxlength="128"
                                           value="${etablissementInstance?.adresse3}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="telEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.telEtab.label" default="Tel Etab"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="telEtab"
                                           value="${etablissementInstance?.telEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="faxEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.faxEtab.label" default="Fax Etab"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="faxEtab"
                                           value="${etablissementInstance?.faxEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="emailEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.emailEtab.label" default="Email Etab"/>

        </label>

        <div class="col-md-6"><g:field type="email" name="emailEtab" maxlength="60"
                                       value="${etablissementInstance?.emailEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="siteWebEtab" class="padTop col-md-4 control-label">
            <g:message code="etablissement.siteWebEtab.label" default="Site Web Etab"/>

        </label>

        <div class="col-md-6"><g:field type="url" name="siteWebEtab" maxlength="60"
                                       value="${etablissementInstance?.siteWebEtab}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="senderId" class="padTop col-md-4 control-label">
            <g:message code="etablissement.senderId.label" default="Sender Id"/>

        </label>

        <div class="col-md-6"><g:textField class="form-control" name="senderId"
                                           value="${etablissementInstance?.senderId}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="indSendEmail" class="padTop col-md-4 control-label">
            <g:message code="etablissement.indSendEmail.label" default="Ind Send Email"/>

        </label>

        <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox name="indSendEmail"
                                                                                               value="${etablissementInstance?.indSendEmail}"/> <i
                class="fa fa-fw fa-square-o disabled"></i></label></div></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

    <div class="col-md-6">
        <!-- Group -->
        <div class="form-group">
            <label for="indSendSms" class="padTop col-md-4 control-label">
                <g:message code="etablissement.indSendSms.label" default="Ind Send Sms"/>

            </label>

            <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox name="indSendSms"
                                                                                                   value="${etablissementInstance?.indSendSms}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div></div>
        </div>
        <!-- // Group END -->
    </div>

    <div class="separator bottom">

        <div class="col-md-6">
            <!-- Group -->
            <div class="form-group">
                <label for="codeSmsServiceEtab" class="padTop col-md-4 control-label">
                    <g:message code="etablissement.codeSmsServiceEtab.label" default="Code Sms Service Etab"/>

                </label>

                <div class="col-md-6"><g:textField class="form-control" name="codeSmsServiceEtab"
                                                   value="${etablissementInstance?.codeSmsServiceEtab}"/></div>
            </div>
            <!-- // Group END -->
        </div>

        <div class="separator bottom">

            <div class="col-md-6">
                <!-- Group -->
                <div class="form-group">
                    <label for="signature" class="padTop col-md-4 control-label">
                        <g:message code="etablissement.signature.label" default="Signature"/>

                    </label>

                    <div class="col-md-6"><g:textField class="form-control" name="signature"
                                                       value="${etablissementInstance?.signature}"/></div>
                </div>
                <!-- // Group END -->
            </div>

            <div class="separator bottom">

                <div class="col-md-6">
                    <!-- Group -->
                    <div class="form-group">
                        <label for="piedPage" class="padTop col-md-4 control-label">
                            <g:message code="etablissement.piedPage.label" default="Pied Page"/>

                        </label>

                        <div class="col-md-6"><g:textField class="form-control" name="piedPage"
                                                           value="${etablissementInstance?.piedPage}"/></div>
                    </div>
                    <!-- // Group END -->
                </div>

                <div class="separator bottom">

                    <div class="col-md-6">
                        <!-- Group -->
                        <div class="form-group">
                            <label for="logo" class="padTop col-md-4 control-label">
                                <g:message code="etablissement.logo.label" default="Logo"/>

                            </label>

                            <div class="col-md-6"><div class="fileupload fileupload-new margin-none"
                                                       data-provides="fileupload"><div class="input-group"><div
                                        class="form-control col-md-3"><i class="fa fa-file fileupload-exists"></i><span
                                            class="fileupload-preview"></span></div><span class="input-group-btn"><span
                                        class="btn btn-default btn-file"><span
                                            class="fileupload-new">Fichier</span><span
                                            class="fileupload-exists">Changer</span> <input type="file"
                                                                                            class="margin-none"
                                                                                            id="logo" name="logo"/>
                                </span><a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Supp.</a>
                                </span></div></div></div>
                        </div>
                        <!-- // Group END -->
                    </div>

                    <div class="separator bottom">

                        <div class="col-md-6">
                            <!-- Group -->
                            <div class="form-group">
                                <label for="fondCarte" class="padTop col-md-4 control-label">
                                    <g:message code="etablissement.fondCarte.label" default="Fond Carte"/>

                                </label>

                                <div class="col-md-6"><div class="fileupload fileupload-new margin-none"
                                                           data-provides="fileupload"><div class="input-group"><div
                                            class="form-control col-md-3"><i
                                                class="fa fa-file fileupload-exists"></i><span
                                                class="fileupload-preview"></span></div><span
                                            class="input-group-btn"><span class="btn btn-default btn-file"><span
                                                class="fileupload-new">Fichier</span><span
                                                class="fileupload-exists">Changer</span> <input type="file"
                                                                                                class="margin-none"
                                                                                                id="fondCarte"
                                                                                                name="fondCarte"/>
                                        </span><a href="#" class="btn fileupload-exists"
                                                  data-dismiss="fileupload">Supp.</a></span></div></div></div>
                            </div>
                            <!-- // Group END -->
                        </div>

                        <div class="separator bottom">

                            <div class="col-md-6">
                                <!-- Group -->
                                <div class="form-group">
                                    <label for="typeFileLogo" class="padTop col-md-4 control-label">
                                        <g:message code="etablissement.typeFileLogo.label" default="Type File Logo"/>

                                    </label>

                                    <div class="col-md-6"><g:textField class="form-control" name="typeFileLogo"
                                                                       value="${etablissementInstance?.typeFileLogo}"/></div>
                                </div>
                                <!-- // Group END -->
                            </div>

                            <div class="separator bottom">

                                <div class="col-md-6">
                                    <!-- Group -->
                                    <div class="form-group">
                                        <label for="typeFileFondCarte" class="padTop col-md-4 control-label">
                                            <g:message code="etablissement.typeFileFondCarte.label"
                                                       default="Type File Fond Carte"/>

                                        </label>

                                        <div class="col-md-6"><g:textField class="form-control" name="typeFileFondCarte"
                                                                           value="${etablissementInstance?.typeFileFondCarte}"/></div>
                                    </div>
                                    <!-- // Group END -->
                                </div>

                                <div class="separator bottom">

                                    <div class="col-md-6">
                                        <!-- Group -->
                                        <div class="form-group">
                                            <label for="reglementInterieur" class="padTop col-md-4 control-label">
                                                <g:message code="etablissement.reglementInterieur.label"
                                                           default="Reglement Interieur"/>

                                            </label>

                                            <div class="col-md-6"><div class="fileupload fileupload-new margin-none"
                                                                       data-provides="fileupload"><div
                                                        class="input-group"><div class="form-control col-md-3"><i
                                                            class="fa fa-file fileupload-exists"></i><span
                                                            class="fileupload-preview"></span></div><span
                                                            class="input-group-btn"><span
                                                                class="btn btn-default btn-file"><span
                                                                    class="fileupload-new">Fichier</span><span
                                                                    class="fileupload-exists">Changer</span> <input
                                                                    type="file" class="margin-none"
                                                                    id="reglementInterieur" name="reglementInterieur"/>
                                                        </span><a href="#" class="btn fileupload-exists"
                                                                  data-dismiss="fileupload">Supp.</a></span></div></div>
                                            </div>
                                        </div>
                                        <!-- // Group END -->
                                    </div>

                                    <div class="separator bottom">

                                        <div class="col-md-6">
                                            <!-- Group -->
                                            <div class="form-group">
                                                <label for="typeFileReglementInterieur"
                                                       class="padTop col-md-4 control-label">
                                                    <g:message code="etablissement.typeFileReglementInterieur.label"
                                                               default="Type File Reglement Interieur"/>

                                                </label>

                                                <div class="col-md-6"><g:textField class="form-control"
                                                                                   name="typeFileReglementInterieur"
                                                                                   value="${etablissementInstance?.typeFileReglementInterieur}"/></div>
                                            </div>
                                            <!-- // Group END -->
                                        </div>

                                        <div class="separator bottom">

                                            <div class="col-md-6">
                                                <!-- Group -->
                                                <div class="form-group">
                                                    <label for="photoWidth" class="padTop col-md-4 control-label">
                                                        <g:message code="etablissement.photoWidth.label"
                                                                   default="Photo Width"/>

                                                    </label>

                                                    <div class="col-md-6"><g:field name="photoWidth" type="number"
                                                                                   value="${etablissementInstance.photoWidth}"/></div>
                                                </div>
                                                <!-- // Group END -->
                                            </div>

                                            <div class="separator bottom">

                                                <div class="col-md-6">
                                                    <!-- Group -->
                                                    <div class="form-group">
                                                        <label for="photoHeight" class="padTop col-md-4 control-label">
                                                            <g:message code="etablissement.photoHeight.label"
                                                                       default="Photo Height"/>

                                                        </label>

                                                        <div class="col-md-6"><g:field name="photoHeight" type="number"
                                                                                       value="${etablissementInstance.photoHeight}"/></div>
                                                    </div>
                                                    <!-- // Group END -->
                                                </div>

                                                <div class="separator bottom">

                                                    <div class="col-md-6">
                                                        <!-- Group -->
                                                        <div class="form-group">
                                                            <label for="userCreated"
                                                                   class="padTop col-md-4 control-label">
                                                                <g:message code="etablissement.userCreated.label"
                                                                           default="User Created"/>

                                                            </label>

                                                            <div class="col-md-6"><g:textField class="form-control"
                                                                                               name="userCreated"
                                                                                               value="${etablissementInstance?.userCreated}"/></div>
                                                        </div>
                                                        <!-- // Group END -->
                                                    </div>

                                                    <div class="separator bottom">

                                                        <div class="col-md-6">
                                                            <!-- Group -->
                                                            <div class="form-group">
                                                                <label for="userUpdated"
                                                                       class="padTop col-md-4 control-label">
                                                                    <g:message code="etablissement.userUpdated.label"
                                                                               default="User Updated"/>

                                                                </label>

                                                                <div class="col-md-6"><g:textField class="form-control"
                                                                                                   name="userUpdated"
                                                                                                   value="${etablissementInstance?.userUpdated}"/></div>
                                                            </div>
                                                            <!-- // Group END -->
                                                        </div>

                                                        <div class="separator bottom">

