<%@ page import="com.westeros.thewall.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
    <label for="username">
        <g:message code="user.username.label" default="Username"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
    <label for="password">
        <g:message code="user.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userCreated', 'error')} ">
    <label for="userCreated">
        <g:message code="user.userCreated.label" default="User Created"/>

    </label>
    <g:textField class="form-control" name="userCreated" value="${userInstance?.userCreated}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'userUpdated', 'error')} ">
    <label for="userUpdated">
        <g:message code="user.userUpdated.label" default="User Updated"/>

    </label>
    <g:textField class="form-control" name="userUpdated" value="${userInstance?.userUpdated}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'deleted', 'error')} ">
    <label for="deleted">
        <g:message code="user.deleted.label" default="Deleted"/>

    </label>

    <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="deleted"
                                                                     value="${userInstance?.deleted}"/> <i
            class="fa fa-fw fa-square-o disabled"></i></label></div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
    <label for="accountExpired">
        <g:message code="user.accountExpired.label" default="Account Expired"/>

    </label>

    <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountExpired"
                                                                     value="${userInstance?.accountExpired}"/> <i
            class="fa fa-fw fa-square-o disabled"></i></label></div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
    <label for="accountLocked">
        <g:message code="user.accountLocked.label" default="Account Locked"/>

    </label>

    <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountLocked"
                                                                     value="${userInstance?.accountLocked}"/> <i
            class="fa fa-fw fa-square-o disabled"></i></label></div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
    <label for="enabled">
        <g:message code="user.enabled.label" default="Enabled"/>

    </label>

    <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="enabled"
                                                                     value="${userInstance?.enabled}"/> <i
            class="fa fa-fw fa-square-o disabled"></i></label></div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
    <label for="passwordExpired">
        <g:message code="user.passwordExpired.label" default="Password Expired"/>

    </label>

    <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="passwordExpired"
                                                                     value="${userInstance?.passwordExpired}"/> <i
            class="fa fa-fw fa-square-o disabled"></i></label></div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'photo', 'error')} required">
    <label for="photo">
        <g:message code="user.photo.label" default="Photo"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="fileupload fileupload-new margin-none" data-provides="fileupload"><div class="input-group"><div
            class="form-control col-md-3"><i class="fa fa-file fileupload-exists"></i><span
                class="fileupload-preview"></span></div><span class="input-group-btn"><span
            class="btn btn-default btn-file"><span class="fileupload-new">Fichier</span><span
                class="fileupload-exists">Changer</span> <input type="file" class="margin-none" id="photo"
                                                                name="photo"/></span><a href="#"
                                                                                        class="btn fileupload-exists"
                                                                                        data-dismiss="fileupload">Supp.</a>
    </span></div></div>
</div>

