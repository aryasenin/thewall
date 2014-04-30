<%@ page import="com.westeros.thewall.Civilite" %>



<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="etablissement" class="padTop col-md-4 control-label">
            <g:message code="civilite.etablissement.label" default="Etablissement"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:select style="width: 100%;"  id="select2_1" name="etablissement.id" from="${com.westeros.thewall.Etablissement.list()}" optionKey="id" required="" value="${civiliteInstance?.etablissement?.id}" class="many-to-one" /></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="code" class="padTop col-md-4 control-label">
            <g:message code="civilite.code.label" default="Code"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="code" maxlength="50" required="" value="${civiliteInstance?.code}"/></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="libelle" class="padTop col-md-4 control-label">
            <g:message code="civilite.libelle.label" default="Libelle"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="libelle" maxlength="200" required="" value="${civiliteInstance?.libelle}"/></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="libelleReduit" class="padTop col-md-4 control-label">
            <g:message code="civilite.libelleReduit.label" default="Libelle Reduit"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="libelleReduit" maxlength="50" required="" value="${civiliteInstance?.libelleReduit}"/></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="deleted" class="padTop col-md-4 control-label">
            <g:message code="civilite.deleted.label" default="Deleted"/>
            
        </label>

        <div class="col-md-6"><div class="checkbox">  <label class="checkbox-custom"> <g:checkBox name="deleted" value="${civiliteInstance?.deleted}" /> <i class="fa fa-fw fa-square-o disabled"></i> </label> </div></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="userCreate" class="padTop col-md-4 control-label">
            <g:message code="civilite.userCreate.label" default="User Create"/>
            
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="userCreate" value="${civiliteInstance?.userCreate}"/></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="userUpdate" class="padTop col-md-4 control-label">
            <g:message code="civilite.userUpdate.label" default="User Update"/>
            
        </label>

        <div class="col-md-6"><g:textField class="form-control" name="userUpdate" value="${civiliteInstance?.userUpdate}"/></div>
    </div>
    <!-- // Group END -->
</div>
<div class="separator bottom">

