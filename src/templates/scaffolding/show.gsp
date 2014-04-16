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
    <title><g:message code="${domainClass.propertyName}.show" default="Consultation ${className}s"/></title>
    <meta name="layout" content="main">
    <g:set var="entityName" value="\${message(code: '${domainClass.propertyName}.label', default: '${className}')}"/>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">

</head>

<body>

<h1><g:message code="${domainClass.propertyName}.show" default="Consultation ${className}"/></h1>

<div class="innerLR">
    <!-- Widget -->
    <div class="widget widget-body-white widget-heading-simple">
        <g:if test="\${flash.message}">
            <!-- Alert -->
            <div class="alert alert-success">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong><g:message code="default.sucessfully.message" default="Succès : "/></strong> \${flash.message}
            </div>
            <!-- // Alert END -->
        </g:if>

        <g:if test="\${flash.error}">
            <!-- Alert -->
            <div class="alert alert-danger">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong><g:message code="default.error.message" default="Erreur : "/></strong> \${flash.error}
            </div>
            <!-- // Alert END -->
        </g:if>

        <g:if test="\${flash.warning}">
            <!-- Alert -->
            <div class="alert alert-warning">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong><g:message code="default.warning.message" default="Attention : "/></strong> \${flash.warning}
            </div>
            <!-- // Alert END -->
        </g:if>

        <g:if test="\${flash.info}">
            <!-- Alert -->
            <div class="alert alert-primary">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong><g:message code="default.information.message"
                                   default="Informations : "/></strong> \${flash.info}
            </div>
            <!-- // Alert END -->
        </g:if>
        <div class="widget">
            <div class="widget-head">
                <h4 class="heading">Informations de ${className}</h4>
            </div>

            <div class="widget-body">

                <div class="row">

                    <% excludedProps = Event.allEvents.toList() << 'id' << 'version'
                    allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
                    props = domainClass.properties.findAll {
                        allowedNames.contains(it.name) && !excludedProps.contains(it.name)
                    }
                    Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                    props.each { p -> %>

                    <div class="col-md-6">
                        <h5 class="padTop"><g:message
                                code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/></h5>

                        <% if (p.isEnum()) { %>
                        <g:textField name="${p.name}" class="form-control" disabled="disabled"
                                     value="\${${propertyName}?.${p.name}}"/>
                        <% } else if (p.oneToMany || p.manyToMany) { %>
                        <g:each in="\${${propertyName}.${p.name}}" var="${p.name[0]}">
                            <g:link controller="${p.referencedDomainClass?.propertyName}" action="show"
                                    id="\${${p.name[0]}.id}">\${${p.name[0]}?.encodeAsHTML()}</g:link>
                        </g:each>
                        <% } else if (p.manyToOne || p.oneToOne) { %>
                        <g:link controller="${p.referencedDomainClass?.propertyName}" action="show"
                                id="\${${propertyName}?.${p.name}?.id}">\${${propertyName}?.${
                                p.name}?.encodeAsHTML()}</g:link>
                        <% } else if (p.type == Boolean || p.type == boolean) { %>
                        <div class="form-control disabled">
                            <g:message
                                    code="${domainClass.propertyName}.${p.name}.\${${propertyName}?.${p.name}}"/>
                        </div>
                        <%
                            } else if (p.type == Date || p.type == java.sql.Date || p.type == java.sql.Time || p.type == Calendar) { %>
                        <div class="form-control disabled">
                            <g:formatDate date="\${${propertyName}?.${p.name}}" format="dd/MM/yyyy HH:ss"/>
                        </div>
                        <% } else if (!p.type.isArray()) { %>
                        <g:textField name="${p.name}" class="form-control" disabled="disabled"
                                     value="\${${propertyName}?.${p.name}}"/>
                        <% } %>
                    </div>

                    <div class="separator bottom"></div>


                    <% } %>

                </div>
            </div>
        </div>

    </div>
</div>
</div>

</body>
</html>
