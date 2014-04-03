<%@ page import="com.westeros.thewall.User" %>



<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">

        <label class="col-sm-3 control-label" for="username">
            <g:message code="user.username.label" default="Username"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-8">
            <g:textField name="username" required="" value="${userInstance?.username}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'password', 'error')} required">

        <label class="col-sm-3 control-label" for="password">
            <g:message code="user.password.label" default="Password"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-sm-8">
            <g:textField name="password" required="" value="${userInstance?.password}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">

        <label class="col-sm-3 control-label" for="accountExpired">
            <g:message code="user.accountExpired.label" default="Account Expired"/>

        </label>

        <div class="col-sm-8">
            <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">

        <label class="col-sm-3 control-label" for="accountLocked">
            <g:message code="user.accountLocked.label" default="Account Locked"/>

        </label>

        <div class="col-sm-8">
            <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">

        <label class="col-sm-3 control-label" for="enabled">
            <g:message code="user.enabled.label" default="Enabled"/>

        </label>

        <div class="col-sm-8">
            <g:checkBox name="enabled" value="${userInstance?.enabled}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

<div class="form-group">
    <div class="form-group ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">

        <label class="col-sm-3 control-label" for="passwordExpired">
            <g:message code="user.passwordExpired.label" default="Password Expired"/>

        </label>

        <div class="col-sm-8">
            <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}"/>
        </div>

        <div class="separator bottom"></div>
    </div>
</div>

