<%@ page import="com.westeros.thewall.Civilite" %>

<g:form action="save">

    <div class="form-group">
        <div class="form-group ${hasErrors(bean: civiliteInstance, field: 'code', 'error')} required">

            <label class="col-sm-3 control-label" for="code">
                <g:message code="civilite.code.label" default="Code"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="code" maxlength="50" required=""
                             value="${civiliteInstance?.code}"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: civiliteInstance, field: 'libelle', 'error')} required">

            <label class="col-sm-3 control-label" for="libelle">
                <g:message code="civilite.libelle.label" default="Libelle"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="libelle" maxlength="200" required=""
                             value="${civiliteInstance?.libelle}"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: civiliteInstance, field: 'libelleReduit', 'error')} required">

            <label class="col-sm-3 control-label" for="libelleReduit">
                <g:message code="civilite.libelleReduit.label" default="Libelle Reduit"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="libelleReduit" maxlength="50" required=""
                             value="${civiliteInstance?.libelleReduit}"/>
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
