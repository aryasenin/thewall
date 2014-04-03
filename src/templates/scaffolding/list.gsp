<% import grails.persistence.Event %>
<%=packageName%>
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
    <title><g:message code="${domainClass.propertyName}.list" default="Les ${className}s"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="${domainClass.propertyName}.list" default="Les ${className}s"/>
    <a href="#modal-new-${domainClass.propertyName}" data-toggle="modal" style="float:right; background:#FFF"
       class="btn btn-primary btn-stroke"><g:message code="${domainClass.propertyName}.add" default="Ajouter"/></a>
</h1>

<!-- Modal -->
<div class="modal fade" id="modal-new-${domainClass.propertyName}">

    <div class="modal-dialog">
        <div class="modal-content">

            <!-- Modal heading -->
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>

                <h3 class="modal-title"><g:message code="${domainClass.propertyName}.new"
                                                   default="Nouveau ${className}"/></h3>
            </div>
            <!-- // Modal heading END -->

            <!-- Modal body -->
            <div class="modal-body">
                <div class="innerAll">
                    <div class="innerLR">
                        <form class="form-horizontal" role="form">
                            <g:render template="formCreate"></g:render>
                        </form>
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

            <g:if test="\${flash.message}">
                <!-- Alert -->
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Succès!</strong> \${flash.message}
                </div>
                <!-- // Alert END -->
            </g:if>

            <g:if test="\${flash.error}">
                <!-- Alert -->
                <div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Erreur!</strong> \${flash.error}
                </div>
                <!-- // Alert END -->
            </g:if>

            <g:if test="\${flash.warning}">
                <!-- Alert -->
                <div class="alert alert-warning">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Attention!</strong> \${flash.warning}
                </div>
                <!-- // Alert END -->
            </g:if>

            <g:if test="\${flash.info}">
                <!-- Alert -->
                <div class="alert alert-primary">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <strong>Infos!</strong> \${flash.info}
                </div>
                <!-- // Alert END -->
            </g:if>

        <!-- Table -->
            <table class="dynamicTable colVis table">
                <!-- Table heading -->
                <thead class="bg-gray">
                <tr>
                    <% excludedProps = Event.allEvents.toList() << 'id' << 'version' << 'dateCreated' << 'lastUpdated' << 'userCreated' << 'userUpdated' << 'deleted' << 'etablissement'
                    props = domainClass.properties.findAll { !excludedProps.contains(it.name) && it.type != null && !Collection.isAssignableFrom(it.type) }
                    Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                    props.eachWithIndex { p, i ->
                        if (i < 6) {
                    %>
                    <th><g:message code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/></th>

                    <% }
                    } %>
                </tr>
                </thead>
                <tbody>

                <g:each in="\${${propertyName}List}" status="i" var="${propertyName}">
                    <tr>
                        <% props.eachWithIndex { p, i ->
                            if (i == 0) { %>
                        <td><g:link action="show"
                                    id="\${${propertyName}.id}">\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</g:link></td>
                        <% } else if (i < 6) {
                            if (p.type == Boolean || p.type == boolean) { %>
                        <td><g:formatBoolean boolean="\${${propertyName}.${p.name}}"/></td>
                        <% } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
                        <td><g:formatDate date="\${${propertyName}.${p.name}}" format="dd/MM/YYYY"/></td>
                        <% } else { %>
                        <td>\${fieldValue(bean: ${propertyName}, field: "${p.name}")}</td>
                        <% }
                        }
                        } %>
                    </tr>
                </g:each>

                </tbody>

            </table>
        </div>
    </div>
</div>

</body>
</html>
