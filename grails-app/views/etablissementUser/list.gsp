<%@ page import="com.westeros.thewall.EtablissementUser" %>
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
    <title><g:message code="etablissementUser.list" default="Les EtablissementUsers"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'etablissementUser.label', default: 'EtablissementUser')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h3><g:message code="etablissementUser.list" default="Les EtablissementUsers"/>
    <a href="#modal-new-etablissementUser" data-toggle="modal" style="float:right; background:#FFF"
       class="btn btn-primary btn-stroke"><g:message code="etablissementUser.add" default="Ajouter"/></a>
</h3>

<!-- Modal -->
<div class="modal fade" id="modal-new-etablissementUser">

    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal heading -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <h3 class="modal-title"><g:message code="etablissementUser.new"
                                                   default="Nouveau EtablissementUser"/></h3>
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

                    <th><g:message code="etablissementUser.user.label" default="User"/></th>


                    <th><g:message code="etablissementUser.springSecurityService.label"
                                   default="Spring Security Service"/></th>

                </tr>
                </thead>
                <tbody>

                <g:each in="${etablissementUserInstanceList}" status="i" var="etablissementUserInstance">
                    <tr>

                        <td><g:link action="show"
                                    id="${etablissementUserInstance.id}">${fieldValue(bean: etablissementUserInstance, field: "user")}</g:link></td>

                        <td>${fieldValue(bean: etablissementUserInstance, field: "springSecurityService")}</td>

                    </tr>
                </g:each>

                </tbody>

            </table>
        </div>
    </div>
</div>

</body>
</html>
