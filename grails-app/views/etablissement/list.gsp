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
    <title><g:message code="etablissement.list" default="Les Etablissements"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'etablissement.label', default: 'Etablissement')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h3><g:message code="etablissement.list" default="Les Etablissements"/>
    <a href="#modal-new-etablissement" data-toggle="modal" style="float:right; background:#FFF"
       class="btn btn-primary btn-stroke"><g:message code="etablissement.add" default="Ajouter"/></a>
</h3>

<!-- Modal -->
<div class="modal fade" id="modal-new-etablissement">

    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal heading -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <h3 class="modal-title"><g:message code="etablissement.new"
                                                   default="Nouveau Etablissement"/></h3>
            </div>
            <!-- // Modal heading END -->

            <!-- Modal body -->
            <div class="modal-body">
                <div class="innerAll">
                    <div class="innerLR">
                        <div class="form-horizontal" role="form">
                            <g:render template="formCreate"></g:render>
                        </div>
                    </div>
                </div>
            </div>
            <!-- // Modal body END -->

        </div>
    </div>

</div>
<!-- // Modal END -->

<div class="innerLR">
    <!-- Widget -->
    <div class="widget widget-body-white widget-heading-simple">
        <div class="widget-body">

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

        <!-- Table -->
            <table class="dynamicTable colVis table">
                <!-- Table heading -->
                <thead class="bg-primary">
                <tr>

                    <th><g:message code="etablissement.pays.label" default="Pays"/></th>


                    <th><g:message code="etablissement.codeBPM.label" default="Code BPM"/></th>


                    <th><g:message code="etablissement.codeEtab.label" default="Code Etab"/></th>


                    <th><g:message code="etablissement.codeSms.label" default="Code Sms"/></th>


                    <th><g:message code="etablissement.libelleEtab.label" default="Libelle Etab"/></th>


                    <th><g:message code="etablissement.prefixeUrl.label" default="Prefixe Url"/></th>

                </tr>
                </thead>
                <tbody>

                <g:each in="${etablissementInstanceList}" status="i" var="etablissementInstance">
                    <tr>

                        <td><g:link action="show"
                                    id="${etablissementInstance.id}">${fieldValue(bean: etablissementInstance, field: "pays")}</g:link></td>

                        <td>${fieldValue(bean: etablissementInstance, field: "codeBPM")}</td>

                        <td>${fieldValue(bean: etablissementInstance, field: "codeEtab")}</td>

                        <td>${fieldValue(bean: etablissementInstance, field: "codeSms")}</td>

                        <td>${fieldValue(bean: etablissementInstance, field: "libelleEtab")}</td>

                        <td>${fieldValue(bean: etablissementInstance, field: "prefixeUrl")}</td>

                    </tr>
                </g:each>

                </tbody>

            </table>
        </div>
    </div>
</div>

</body>
</html>
