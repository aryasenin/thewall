<%=packageName%>
<% import grails.persistence.Event %>
<g:form action="save" <%=multiPart ? ' enctype="multipart/form-data"' : '' %>>

<% excludedProps = Event.allEvents.toList() << 'id' << 'version' << 'lastUpdated' << 'userCreated' << 'userUpdated' << 'deleted' << 'etablissement'
persistentPropNames = domainClass.persistentProperties*.name
boolean hasHibernate = pluginManager?.hasGrailsPlugin('hibernate')
if (hasHibernate && org.codehaus.groovy.grails.orm.hibernate.cfg.GrailsDomainBinder.getMapping(domainClass)?.identity?.generator == 'assigned') {
    persistentPropNames << domainClass.identifier.name
}
props = domainClass.properties.findAll { persistentPropNames.contains(it.name) && !excludedProps.contains(it.name) }
Collections.sort(props, comparator.constructors[0].newInstance([domainClass] as Object[]))
for (p in props) {
    if (p.embedded) {
        def embeddedPropNames = p.component.persistentProperties*.name
        def embeddedProps = p.component.properties.findAll {
            embeddedPropNames.contains(it.name) && !excludedProps.contains(it.name)
        }
        Collections.sort(embeddedProps, comparator.constructors[0].newInstance([p.component] as Object[]))
%><fieldset class="embedded"><legend><g:message code="${domainClass.propertyName}.${p.name}.label"
                                                default="${p.naturalName}"/></legend><%
        for (ep in p.component.properties) {
            renderFieldForProperty(ep, p.component, "${p.name}.")
        }
%></fieldset><%
        } else {
            renderFieldForProperty(p, domainClass)
        }
    }

    private renderFieldForProperty(p, owningClass, prefix = "") {
        boolean hasHibernate = pluginManager?.hasGrailsPlugin('hibernate')
        boolean display = true
        boolean required = false
        if (hasHibernate) {
            cp = owningClass.constrainedProperties[p.name]
            display = (cp ? cp.display : true)
            required = (cp ? !(cp.propertyType in [boolean, Boolean]) && !cp.nullable && (cp.propertyType != String || !cp.blank) : false)
        }
        if (display) { %>
<div class="form-group">
    <div class="form-group \${hasErrors(bean: ${propertyName}, field: '${prefix}${p.name}', 'error')} ${
            required ? 'required' : ''}">

        <label class="col-sm-3 control-label" for="${prefix}${p.name}">
            <g:message code="${domainClass.propertyName}.${prefix}${p.name}.label" default="${p.naturalName}"/>
            <% if (required) { %><span class="required-indicator">*</span><% } %>
        </label>

        <div class="col-sm-8">
            ${renderEditor(p)}
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<% }
} %>

<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <g:submitButton name="create" class="save" class="btn btn-primary"
                        value="\${message(code: 'default.button.create.label', default: 'Create')}"/>
    </div>
</div>

</g:form>
