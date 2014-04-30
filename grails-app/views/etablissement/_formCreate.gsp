<%@ page import="com.westeros.thewall.Etablissement" %>

<g:form action="save" enctype="multipart/form-data">

    <div class="form-group">
        <div class="form-group ${hasErrors(bean: etablissementInstance, field: 'codeEtab', 'error')} required">

            <label class="col-sm-3 control-label" for="codeEtab">
                <g:message code="etablissement.codeEtab.label" default="Code Etab"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="codeEtab" maxlength="50" required=""
                             value="${etablissementInstance?.codeEtab}"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: etablissementInstance, field: 'libelleEtab', 'error')} required">

            <label class="col-sm-3 control-label" for="libelleEtab">
                <g:message code="etablissement.libelleEtab.label" default="Libelle Etab"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="libelleEtab" maxlength="200" required=""
                             value="${etablissementInstance?.libelleEtab}"/>
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
