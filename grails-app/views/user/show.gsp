<%@ page import="com.westeros.thewall.User" %>
<!DOCTYPE html>
<!--[if lt IE 7]>
<html class="ie lt-ie9 lt-ie8 lt-ie7 sidebar sidebar-discover"> <![endif]-->
<!--[if IE 7]>
<html class="ie lt-ie9 lt-ie8 sidebar sidebar-discover"> <![endif]-->
<!--[if IE 8]>
<html class="ie lt-ie9 sidebar sidebar-discover"> <![endif]-->
<!--[if gt IE 8]>
<html class="ie sidebar sidebar-discover"> <![endif]-->
<!--[if !IE]><!-->
<html class="sidebar sidebar-discover"><!-- <![endif]-->
<head>
    <title><g:message code="user.show" default="Consultation Users"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="user.show" default="Consultation User"/></h1>

<div class="innerLR">
<!-- Widget -->
<div class="widget widget-body-white widget-heading-simple">
<g:if test="${flash.message}">
    <!-- Alert -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.sucessfully.message" default="Succès : "/></strong> ${flash.message}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.error}">
    <!-- Alert -->
    <div class="alert alert-danger">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.error.message" default="Erreur : "/></strong> ${flash.error}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.warning}">
    <!-- Alert -->
    <div class="alert alert-warning">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.warning.message" default="Attention : "/></strong> ${flash.warning}
    </div>
    <!-- // Alert END -->
</g:if>

<g:if test="${flash.info}">
    <!-- Alert -->
    <div class="alert alert-primary">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.information.message"
                           default="Informations : "/></strong> ${flash.info}
    </div>
    <!-- // Alert END -->
</g:if>
<div class="widget">
<div class="widget-head">
    <h4 class="heading">Informations de User</h4>
</div>

<div class="widget-body">

<div class="row">

<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.etablissement.label" default="Etablissement"/></h5>


    <g:link controller="etablissement" action="show"
            id="${userInstance?.etablissement?.id}">${userInstance?.etablissement?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.userType.label" default="User Type"/></h5>


    <g:textField name="userType" class="form-control" disabled="disabled"
                 value="${userInstance?.userType}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.civilite.label" default="Civilite"/></h5>


    <g:link controller="civilite" action="show"
            id="${userInstance?.civilite?.id}">${userInstance?.civilite?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.nom.label" default="Nom"/></h5>


    <g:textField name="nom" class="form-control" disabled="disabled"
                 value="${userInstance?.nom}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.prenom.label" default="Prenom"/></h5>


    <g:textField name="prenom" class="form-control" disabled="disabled"
                 value="${userInstance?.prenom}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.email.label" default="Email"/></h5>


    <g:textField name="email" class="form-control" disabled="disabled"
                 value="${userInstance?.email}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.telMobile.label" default="Tel Mobile"/></h5>


    <g:textField name="telMobile" class="form-control" disabled="disabled"
                 value="${userInstance?.telMobile}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.telBureau.label" default="Tel Bureau"/></h5>


    <g:textField name="telBureau" class="form-control" disabled="disabled"
                 value="${userInstance?.telBureau}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.telDomicile.label" default="Tel Domicile"/></h5>


    <g:textField name="telDomicile" class="form-control" disabled="disabled"
                 value="${userInstance?.telDomicile}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.fax.label" default="Fax"/></h5>


    <g:textField name="fax" class="form-control" disabled="disabled"
                 value="${userInstance?.fax}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.dateDeNaissance.label" default="Date De Naissance"/></h5>


    <div class="form-control disabled">
        <g:formatDate date="${userInstance?.dateDeNaissance}" format="dd/MM/yyyy HH:ss"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.lieuNaissance.label" default="Lieu Naissance"/></h5>


    <g:textField name="lieuNaissance" class="form-control" disabled="disabled"
                 value="${userInstance?.lieuNaissance}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.professionPersonne.label" default="Profession Personne"/></h5>


    <g:textField name="professionPersonne" class="form-control" disabled="disabled"
                 value="${userInstance?.professionPersonne}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.dateDelivrancePiece.label" default="Date Delivrance Piece"/></h5>


    <div class="form-control disabled">
        <g:formatDate date="${userInstance?.dateDelivrancePiece}" format="dd/MM/yyyy HH:ss"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.dateValiditePiecePersonne.label" default="Date Validite Piece Personne"/></h5>


    <div class="form-control disabled">
        <g:formatDate date="${userInstance?.dateValiditePiecePersonne}" format="dd/MM/yyyy HH:ss"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.ville.label" default="Ville"/></h5>


    <g:textField name="ville" class="form-control" disabled="disabled"
                 value="${userInstance?.ville}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.naturePiece.label" default="Nature Piece"/></h5>


    <g:link controller="naturePiece" action="show"
            id="${userInstance?.naturePiece?.id}">${userInstance?.naturePiece?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.nationalite.label" default="Nationalite"/></h5>


    <g:link controller="pays" action="show"
            id="${userInstance?.nationalite?.id}">${userInstance?.nationalite?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.paysNaissance.label" default="Pays Naissance"/></h5>


    <g:link controller="pays" action="show"
            id="${userInstance?.paysNaissance?.id}">${userInstance?.paysNaissance?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.paysResidence.label" default="Pays Residence"/></h5>


    <g:link controller="pays" action="show"
            id="${userInstance?.paysResidence?.id}">${userInstance?.paysResidence?.encodeAsHTML()}</g:link>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.username.label" default="Username"/></h5>


    <g:textField name="username" class="form-control" disabled="disabled"
                 value="${userInstance?.username}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.password.label" default="Password"/></h5>


    <g:textField name="password" class="form-control" disabled="disabled"
                 value="${userInstance?.password}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.description.label" default="Description"/></h5>


    <g:textField name="description" class="form-control" disabled="disabled"
                 value="${userInstance?.description}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.adresse.label" default="Adresse"/></h5>


    <g:textField name="adresse" class="form-control" disabled="disabled"
                 value="${userInstance?.adresse}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.numeroPiece.label" default="Numero Piece"/></h5>


    <g:textField name="numeroPiece" class="form-control" disabled="disabled"
                 value="${userInstance?.numeroPiece}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.sexe.label" default="Sexe"/></h5>


    <g:textField name="sexe" class="form-control" disabled="disabled"
                 value="${userInstance?.sexe}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.photo.label" default="Photo"/></h5>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.photoType.label" default="Photo Type"/></h5>


    <g:textField name="photoType" class="form-control" disabled="disabled"
                 value="${userInstance?.photoType}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.enabled.label" default="Enabled"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.enabled.${userInstance?.enabled}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.accountLocked.label" default="Account Locked"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.accountLocked.${userInstance?.accountLocked}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.accountExpired.label" default="Account Expired"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.accountExpired.${userInstance?.accountExpired}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.passwordExpired.label" default="Password Expired"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.passwordExpired.${userInstance?.passwordExpired}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.changerPass.label" default="Changer Pass"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.changerPass.${userInstance?.changerPass}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.reinitialise.label" default="Reinitialise"/></h5>


    <div class="form-control disabled">
        <g:message
                code="user.reinitialise.${userInstance?.reinitialise}"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.userReinitialise.label" default="User Reinitialise"/></h5>


    <g:textField name="userReinitialise" class="form-control" disabled="disabled"
                 value="${userInstance?.userReinitialise}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.motifVerouillage.label" default="Motif Verouillage"/></h5>


    <g:textField name="motifVerouillage" class="form-control" disabled="disabled"
                 value="${userInstance?.motifVerouillage}"/>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.dateVerouillage.label" default="Date Verouillage"/></h5>


    <div class="form-control disabled">
        <g:formatDate date="${userInstance?.dateVerouillage}" format="dd/MM/yyyy HH:ss"/>
    </div>

</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <h5 class="padTop"><g:message
            code="user.utilisateurVerouillage.label" default="Utilisateur Verouillage"/></h5>


    <g:textField name="utilisateurVerouillage" class="form-control" disabled="disabled"
                 value="${userInstance?.utilisateurVerouillage}"/>

</div>

<div class="separator bottom"></div>

</div>
</div>
</div>

</div>
</div>
</div>

</body>
</html>
