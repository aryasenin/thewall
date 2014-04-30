<%@ page import="com.westeros.thewall.Etablissement" %>
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
    <title><g:message code="etablissement.show" default="Consultation Etablissements"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'etablissement.label', default: 'Etablissement')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>
<div class="innerLR">
<h3><g:message code="etablissement.show" default="Consultation Etablissement"/></h3>

<g:if test="${flash.message}">
    <!-- Alert -->
    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">×</button>
        <strong><g:message code="default.sucessfully.message"
                           default="Succès : "/></strong> ${flash.message}
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
        <strong><g:message code="default.warning.message"
                           default="Attention : "/></strong> ${flash.warning}
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

<div class="separator-h"></div>

<div class="row">
<!-- Widget -->
<div class="col-md-8">
<div class="widget">
<div class="widget-head">
    <h4 class="heading">Informations de Etablissement</h4>
</div>

<div class="row innerAll">

<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.pays.label" default="Pays"/>:


            <span class="text-weight-normal"><g:link
                    controller="pays" action="show"
                    id="${etablissementInstance?.pays?.id}">${etablissementInstance?.pays?.encodeAsHTML()}</g:link></span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.codeBPM.label" default="Code BPM"/>:


            <span class="text-weight-normal">${etablissementInstance?.codeBPM}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.codeEtab.label" default="Code Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.codeEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.codeSms.label" default="Code Sms"/>:


            <span class="text-weight-normal">${etablissementInstance?.codeSms}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.libelleEtab.label" default="Libelle Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.libelleEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.prefixeUrl.label" default="Prefixe Url"/>:


            <span class="text-weight-normal">${etablissementInstance?.prefixeUrl}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.villeEtab.label" default="Ville Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.villeEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.adresse1.label" default="Adresse1"/>:


            <span class="text-weight-normal">${etablissementInstance?.adresse1}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.adresse2.label" default="Adresse2"/>:


            <span class="text-weight-normal">${etablissementInstance?.adresse2}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.adresse3.label" default="Adresse3"/>:


            <span class="text-weight-normal">${etablissementInstance?.adresse3}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.telEtab.label" default="Tel Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.telEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.faxEtab.label" default="Fax Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.faxEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.emailEtab.label" default="Email Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.emailEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.siteWebEtab.label" default="Site Web Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.siteWebEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.senderId.label" default="Sender Id"/>:


            <span class="text-weight-normal">${etablissementInstance?.senderId}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.indSendEmail.label" default="Ind Send Email"/>:


            <span class="text-weight-normal"><g:message
                    code="etablissement.indSendEmail.${etablissementInstance?.indSendEmail}"/></span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.indSendSms.label" default="Ind Send Sms"/>:


            <span class="text-weight-normal"><g:message
                    code="etablissement.indSendSms.${etablissementInstance?.indSendSms}"/></span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.codeSmsServiceEtab.label" default="Code Sms Service Etab"/>:


            <span class="text-weight-normal">${etablissementInstance?.codeSmsServiceEtab}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.signature.label" default="Signature"/>:


            <span class="text-weight-normal">${etablissementInstance?.signature}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.piedPage.label" default="Pied Page"/>:


            <span class="text-weight-normal">${etablissementInstance?.piedPage}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.logo.label" default="Logo"/>:

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.fondCarte.label" default="Fond Carte"/>:

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.typeFileLogo.label" default="Type File Logo"/>:


            <span class="text-weight-normal">${etablissementInstance?.typeFileLogo}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.typeFileFondCarte.label" default="Type File Fond Carte"/>:


            <span class="text-weight-normal">${etablissementInstance?.typeFileFondCarte}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.reglementInterieur.label" default="Reglement Interieur"/>:

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.typeFileReglementInterieur.label" default="Type File Reglement Interieur"/>:


            <span class="text-weight-normal">${etablissementInstance?.typeFileReglementInterieur}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.photoWidth.label" default="Photo Width"/>:


            <span class="text-weight-normal">${etablissementInstance?.photoWidth}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.photoHeight.label" default="Photo Height"/>:


            <span class="text-weight-normal">${etablissementInstance?.photoHeight}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.dateCreated.label" default="Date Created"/>:


            <span class="text-weight-normal"><g:formatDate date="${etablissementInstance?.dateCreated}"
                                                           format="dd/MM/yyyy HH:ss"/></span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.lastUpdated.label" default="Last Updated"/>:


            <span class="text-weight-normal"><g:formatDate date="${etablissementInstance?.lastUpdated}"
                                                           format="dd/MM/yyyy HH:ss"/></span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.userCreated.label" default="User Created"/>:


            <span class="text-weight-normal">${etablissementInstance?.userCreated}</span>

    </div>
</div>

<div class="separator bottom"></div>


<div class="col-md-6">
    <div class="strong">
        <p><g:message
                code="etablissement.userUpdated.label" default="User Updated"/>:


            <span class="text-weight-normal">${etablissementInstance?.userUpdated}</span>

    </div>
</div>

<div class="separator bottom"></div>

</div>
</div>
</div>

<div class="col-md-4">
    <!-- Widget -->
    <a href="#" class="display-block innerAll  bg-primary text-decoration-none">
        <span class="display-block text-center innerAll half">
            <i class="fa fa-fw fa-4x icon-top-hat text-white"></i>

            <h2 class="strong text-condensed text-white margin-none">Informations importante</h2>

            <p class="lead margin-none strong text-white">Paiement loyer &euro;250 &nbsp; <span
                    class="btn btn-default btn-xs">Details <i class="fa fa-fw fa-caret-right"></i></span></p>
        </span>
    </a>

    <div class="separator bottom"></div>

    <div class="widget">
        <div class="widget-body padding-none">
            <h4 class="innerAll bg-primary text-white margin-bottom-none">Autres actions:</h4>
            <ul class="list-group list-group-1 margin-none borders-none">
                <li class="list-group-item border-top-none"><a href="courses_listing.html?lang=en"><span
                        class="badge pull-right bg-primary ">30</span><i
                        class="fa fa-exclamation-circle"></i>&nbsp; Action 1</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><span
                        class="badge pull-right bg-primary ">2</span><i class="fa fa-ticket"></i>&nbsp; Action 2
                </a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="fa fa-spinner"></i>&nbsp; Action 3</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="fa fa-pencil"></i>&nbsp; Action 4</a></li>
                <li class="list-group-item"><a href="courses_listing.html?lang=en"><i
                        class="icon-folder-fill"></i>&nbsp; Action 5</a></li>
            </ul>
        </div>
    </div>
    <!-- //Widget -->

</div>
<!-- //End Col -->

</div>
</div>

</body>
</html>
