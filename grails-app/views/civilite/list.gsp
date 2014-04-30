
<%@ page import="com.westeros.thewall.Civilite" %>
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
    <title><g:message code="civilite.list" default="Les Civilites"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'civilite.label', default: 'Civilite')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="civilite.list" default="Les Civilites"/>
    <a href="#modal-new-civilite" data-toggle="modal" style="float:right; background:#FFF"
       class="btn btn-primary btn-stroke"><g:message code="civilite.add" default="Ajouter"/></a>
</h1>

<!-- Modal -->
<div class="modal fade" id="modal-new-civilite">

    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal heading -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <h3 class="modal-title"><g:message code="civilite.new"
                                                   default="Nouveau Civilite"/></h3>
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
                <thead class="bg-gray">
                <tr>
                    
                    <th><g:message code="civilite.code.label" default="Code"/></th>

                    
                    <th><g:message code="civilite.libelle.label" default="Libelle"/></th>

                    
                    <th><g:message code="civilite.libelleReduit.label" default="Libelle Reduit"/></th>

                    
                    <th><g:message code="civilite.userCreate.label" default="User Create"/></th>

                    
                    <th><g:message code="civilite.userUpdate.label" default="User Update"/></th>

                    
                    <th><g:message code="civilite.springSecurityService.label" default="Spring Security Service"/></th>

                    
                </tr>
                </thead>
                <tbody>

                <g:each in="${civiliteInstanceList}" status="i" var="civiliteInstance">
                    <tr>
                        
                        <td><g:link action="show"
                                    id="${civiliteInstance.id}">${fieldValue(bean: civiliteInstance, field: "code")}</g:link></td>
                        
                        <td>${fieldValue(bean: civiliteInstance, field: "libelle")}</td>
                        
                        <td>${fieldValue(bean: civiliteInstance, field: "libelleReduit")}</td>
                        
                        <td>${fieldValue(bean: civiliteInstance, field: "userCreate")}</td>
                        
                        <td>${fieldValue(bean: civiliteInstance, field: "userUpdate")}</td>
                        
                        <td>${fieldValue(bean: civiliteInstance, field: "springSecurityService")}</td>
                        
                    </tr>
                </g:each>

                </tbody>

            </table>
        </div>
    </div>
</div>

</body>
</html>
