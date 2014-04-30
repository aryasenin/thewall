<%@ page import="com.westeros.thewall.User" %>

<g:form action="save" enctype="multipart/form-data">

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'userType', 'error')} required">

        <label class="col-sm-3 control-label" for="userType">
            <g:message code="user.userType.label" default="User Type"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="userType"
                      from="${userInstance.constraints.userType.inList}" required="" value="${userInstance?.userType}"
                      valueMessagePrefix="user.userType"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'civilite', 'error')} ">

        <label class="col-sm-3 control-label" for="civilite">
            <g:message code="user.civilite.label" default="Civilite"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="civilite.id"
                      from="${com.westeros.thewall.Civilite.list()}" optionKey="id"
                      value="${userInstance?.civilite?.id}" class="many-to-one" noSelection="['null': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'nom', 'error')} ">

        <label class="col-sm-3 control-label" for="nom">
            <g:message code="user.nom.label" default="Nom"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="nom" value="${userInstance?.nom}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'prenom', 'error')} ">

        <label class="col-sm-3 control-label" for="prenom">
            <g:message code="user.prenom.label" default="Prenom"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="prenom" value="${userInstance?.prenom}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'email', 'error')} ">

        <label class="col-sm-3 control-label" for="email">
            <g:message code="user.email.label" default="Email"/>

        </label>

        <div class="col-sm-8">
            <g:field type="email" name="email" value="${userInstance?.email}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'telMobile', 'error')} ">

        <label class="col-sm-3 control-label" for="telMobile">
            <g:message code="user.telMobile.label" default="Tel Mobile"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="telMobile" pattern="${userInstance.constraints.telMobile.matches}"
                         value="${userInstance?.telMobile}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'telBureau', 'error')} ">

        <label class="col-sm-3 control-label" for="telBureau">
            <g:message code="user.telBureau.label" default="Tel Bureau"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="telBureau" pattern="${userInstance.constraints.telBureau.matches}"
                         value="${userInstance?.telBureau}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'telDomicile', 'error')} ">

        <label class="col-sm-3 control-label" for="telDomicile">
            <g:message code="user.telDomicile.label" default="Tel Domicile"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="telDomicile"
                         pattern="${userInstance.constraints.telDomicile.matches}"
                         value="${userInstance?.telDomicile}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'fax', 'error')} ">

        <label class="col-sm-3 control-label" for="fax">
            <g:message code="user.fax.label" default="Fax"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="fax" pattern="${userInstance.constraints.fax.matches}"
                         value="${userInstance?.fax}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'dateDeNaissance', 'error')} ">

        <label class="col-sm-3 control-label" for="dateDeNaissance">
            <g:message code="user.dateDeNaissance.label" default="Date De Naissance"/>

        </label>

        <div class="col-sm-8">
            <g:jqDatePicker name="dateDeNaissance" value="${userInstance?.dateDeNaissance}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'lieuNaissance', 'error')} ">

        <label class="col-sm-3 control-label" for="lieuNaissance">
            <g:message code="user.lieuNaissance.label" default="Lieu Naissance"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="lieuNaissance" value="${userInstance?.lieuNaissance}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'professionPersonne', 'error')} ">

        <label class="col-sm-3 control-label" for="professionPersonne">
            <g:message code="user.professionPersonne.label" default="Profession Personne"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="professionPersonne" value="${userInstance?.professionPersonne}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'dateDelivrancePiece', 'error')} ">

        <label class="col-sm-3 control-label" for="dateDelivrancePiece">
            <g:message code="user.dateDelivrancePiece.label" default="Date Delivrance Piece"/>

        </label>

        <div class="col-sm-8">
            <g:jqDatePicker name="dateDelivrancePiece" value="${userInstance?.dateDelivrancePiece}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'dateValiditePiecePersonne', 'error')} ">

        <label class="col-sm-3 control-label" for="dateValiditePiecePersonne">
            <g:message code="user.dateValiditePiecePersonne.label" default="Date Validite Piece Personne"/>

        </label>

        <div class="col-sm-8">
            <g:jqDatePicker name="dateValiditePiecePersonne" value="${userInstance?.dateValiditePiecePersonne}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'ville', 'error')} ">

        <label class="col-sm-3 control-label" for="ville">
            <g:message code="user.ville.label" default="Ville"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="ville" value="${userInstance?.ville}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'naturePiece', 'error')} ">

        <label class="col-sm-3 control-label" for="naturePiece">
            <g:message code="user.naturePiece.label" default="Nature Piece"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="naturePiece.id"
                      from="${com.westeros.thewall.NaturePiece.list()}" optionKey="id"
                      value="${userInstance?.naturePiece?.id}" class="many-to-one" noSelection="['null': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'nationalite', 'error')} ">

        <label class="col-sm-3 control-label" for="nationalite">
            <g:message code="user.nationalite.label" default="Nationalite"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="nationalite.id"
                      from="${com.westeros.thewall.Pays.list()}" optionKey="id" value="${userInstance?.nationalite?.id}"
                      class="many-to-one" noSelection="['null': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'paysNaissance', 'error')} ">

        <label class="col-sm-3 control-label" for="paysNaissance">
            <g:message code="user.paysNaissance.label" default="Pays Naissance"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="paysNaissance.id"
                      from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                      value="${userInstance?.paysNaissance?.id}" class="many-to-one" noSelection="['null': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'paysResidence', 'error')} ">

        <label class="col-sm-3 control-label" for="paysResidence">
            <g:message code="user.paysResidence.label" default="Pays Residence"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="paysResidence.id"
                      from="${com.westeros.thewall.Pays.list()}" optionKey="id"
                      value="${userInstance?.paysResidence?.id}" class="many-to-one" noSelection="['null': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">

        <label class="col-sm-3 control-label" for="username">
            <g:message code="user.username.label" default="Username"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">

        <label class="col-sm-3 control-label" for="password">
            <g:message code="user.password.label" default="Password"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'description', 'error')} ">

        <label class="col-sm-3 control-label" for="description">
            <g:message code="user.description.label" default="Description"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="description" value="${userInstance?.description}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'adresse', 'error')} ">

        <label class="col-sm-3 control-label" for="adresse">
            <g:message code="user.adresse.label" default="Adresse"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="adresse" value="${userInstance?.adresse}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'numeroPiece', 'error')} ">

        <label class="col-sm-3 control-label" for="numeroPiece">
            <g:message code="user.numeroPiece.label" default="Numero Piece"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="numeroPiece" value="${userInstance?.numeroPiece}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'sexe', 'error')} ">

        <label class="col-sm-3 control-label" for="sexe">
            <g:message code="user.sexe.label" default="Sexe"/>

        </label>

        <div class="col-sm-8">
            <g:select style="width: 100%;" id="select2_1" name="sexe" from="${userInstance.constraints.sexe.inList}"
                      value="${userInstance?.sexe}" valueMessagePrefix="user.sexe" noSelection="['': '']"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'photo', 'error')} ">

        <label class="col-sm-3 control-label" for="photo">
            <g:message code="user.photo.label" default="Photo"/>

        </label>

        <div class="col-sm-8">
            <div class="fileupload fileupload-new margin-none" data-provides="fileupload"><div class="input-group"><div
                    class="form-control col-md-3"><i class="fa fa-file fileupload-exists"></i><span
                        class="fileupload-preview"></span></div><span class="input-group-btn"><span
                    class="btn btn-default btn-file"><span class="fileupload-new">Fichier</span><span
                        class="fileupload-exists">Changer</span> <input type="file" class="margin-none" id="photo"
                                                                        name="photo"/></span><a href="#"
                                                                                                class="btn fileupload-exists"
                                                                                                data-dismiss="fileupload">Supp.</a>
            </span></div></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'photoType', 'error')} ">

        <label class="col-sm-3 control-label" for="photoType">
            <g:message code="user.photoType.label" default="Photo Type"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="photoType" value="${userInstance?.photoType}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">

        <label class="col-sm-3 control-label" for="enabled">
            <g:message code="user.enabled.label" default="Enabled"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="enabled"
                                                                             value="${userInstance?.enabled}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">

        <label class="col-sm-3 control-label" for="accountLocked">
            <g:message code="user.accountLocked.label" default="Account Locked"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountLocked"
                                                                             value="${userInstance?.accountLocked}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">

        <label class="col-sm-3 control-label" for="accountExpired">
            <g:message code="user.accountExpired.label" default="Account Expired"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountExpired"
                                                                             value="${userInstance?.accountExpired}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">

        <label class="col-sm-3 control-label" for="passwordExpired">
            <g:message code="user.passwordExpired.label" default="Password Expired"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="passwordExpired"
                                                                             value="${userInstance?.passwordExpired}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'changerPass', 'error')} ">

        <label class="col-sm-3 control-label" for="changerPass">
            <g:message code="user.changerPass.label" default="Changer Pass"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="changerPass"
                                                                             value="${userInstance?.changerPass}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'reinitialise', 'error')} ">

        <label class="col-sm-3 control-label" for="reinitialise">
            <g:message code="user.reinitialise.label" default="Reinitialise"/>

        </label>

        <div class="col-sm-8">
            <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="reinitialise"
                                                                             value="${userInstance?.reinitialise}"/> <i
                    class="fa fa-fw fa-square-o disabled"></i></label></div>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'userReinitialise', 'error')} ">

        <label class="col-sm-3 control-label" for="userReinitialise">
            <g:message code="user.userReinitialise.label" default="User Reinitialise"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="userReinitialise" value="${userInstance?.userReinitialise}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'motifVerouillage', 'error')} ">

        <label class="col-sm-3 control-label" for="motifVerouillage">
            <g:message code="user.motifVerouillage.label" default="Motif Verouillage"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="motifVerouillage" value="${userInstance?.motifVerouillage}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'dateVerouillage', 'error')} ">

        <label class="col-sm-3 control-label" for="dateVerouillage">
            <g:message code="user.dateVerouillage.label" default="Date Verouillage"/>

        </label>

        <div class="col-sm-8">
            <g:jqDatePicker name="dateVerouillage" value="${userInstance?.dateVerouillage}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'utilisateurVerouillage', 'error')} ">

        <label class="col-sm-3 control-label" for="utilisateurVerouillage">
            <g:message code="user.utilisateurVerouillage.label" default="Utilisateur Verouillage"/>

        </label>

        <div class="col-sm-8">
            <g:textField class="form-control" name="utilisateurVerouillage"
                         value="${userInstance?.utilisateurVerouillage}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>


<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <g:submitButton name="create" class="btn btn-primary"
                        value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </div>
</div>

</g:form>
