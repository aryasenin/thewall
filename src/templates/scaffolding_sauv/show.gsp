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
<div class="innerLR">
    <h3><g:message code="${domainClass.propertyName}.show" default="Consultation ${className}"/></h3>

    <g:if test="\${flash.message}">
        <!-- Alert -->
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong><g:message code="default.sucessfully.message"
                               default="Succès : "/></strong> \${flash.message}
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
            <strong><g:message code="default.warning.message"
                               default="Attention : "/></strong> \${flash.warning}
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

    <div class="separator-h"></div>

    <div class="row">
        <!-- Widget -->
        <div class="col-md-8">
            <div class="widget">
                <div class="widget-head">
                    <h4 class="heading">Informations de ${className}</h4>
                </div>

                <div class="row innerAll">

                    <% excludedProps = Event.allEvents.toList() << 'id' << 'version'
                    allowedNames = domainClass.persistentProperties*.name << 'dateCreated' << 'lastUpdated'
                    props = domainClass.properties.findAll {
                        allowedNames.contains(it.name) && !excludedProps.contains(it.name)
                    }
                    Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
                    props.each { p -> %>

                    <div class="col-md-6">
                        <div class="strong">
                            <p><g:message
                                    code="${domainClass.propertyName}.${p.name}.label" default="${p.naturalName}"/>:

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
                        </p>
                        </div>
                    </div>

                    <div class="separator bottom"></div>


                    <% } %>

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
            <!-- Widget	 -->
            <div class="widget widget-body-white padding-none ">
                <div class="widget-head height-auto">
                    <div class="media innerAll">
                        <a href="" class="pull-right"><i class="fa icon-comment-fill-2"></i></a>
                        <a href="" class="pull-left"><img src="../assets/images/people/50/8.jpg" alt=""
                                                          class="img-circle"></a>

                        <div class="media-body">
                            <h4>Emanuel L.</h4>

                            <p class="margin-none">Project Manager</p>
                        </div>
                    </div>
                </div>
                <ul class="list-unstyled">
                    <li class="innerAll border-bottom">
                        <span class="badge badge-default pull-right">4</span>
                        <i class="fa fa-fw icon-user-1"></i> Team Members
                    </li>
                    <li class="innerAll border-bottom">
                        <span class="badge badge-default pull-right">4</span>
                        <i class="fa fa-fw fa-dashboard"></i> Active Projects
                    </li>
                    <li class="innerAll border-bottom">
                        <span class="badge badge-default bg-primary pull-right">59</span>
                        <i class="fa fa-fw icon-browser-check"></i> Completed Tasks
                    </li>
                    <li class="innerAll border-bottom">
                        <span class="badge badge-default pull-right">3</span>
                        <i class="fa fa-fw fa-file-text-o"></i> Files under review
                    </li>
                    <li class="innerAll bg-white text-center">
                        <a href="" class="btn btn-primary btn-sm">View Profile</a>
                    </li>
                </ul>
            </div>
            <!-- //Widget -->

        </div>
        <!-- //End Col -->

    </div>
</div>

</body>
</html>
