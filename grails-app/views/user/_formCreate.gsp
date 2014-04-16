<%@ page import="com.westeros.thewall.User" %>

<g:form action="save" enctype="multipart/form-data">

    <div class="form-group">
        <div class="form-group ${hasErrors(bean: userInstance, field: 'username', 'error')} required">

            <label class="col-sm-3 control-label" for="username">
                <g:message code="user.username.label" default="Username"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
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
                <g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: userInstance, field: 'dateCreated', 'error')} ">

            <label class="col-sm-3 control-label" for="dateCreated">
                <g:message code="user.dateCreated.label" default="Date Created"/>

            </label>

            <div class="col-sm-8">
                <g:jqDatePicker name="dateCreated" value="${userInstance?.dateCreated}"/>

                %{--<div class="input-group date" id="datepicker2">--}%
                %{--<input class="form-control" type="text" value="14 February 2013"/>--}%
                %{--<span class="input-group-addon"><i class="fa fa-th"></i></span>--}%
                %{--</div>--}%
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
                <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountExpired"
                                                                                 value="${userInstance?.accountExpired}"/> <i
                        class="fa fa-fw fa-square-o disabled"></i></label></div>
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
                <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="accountLocked"
                                                                                 value="${userInstance?.accountLocked}"/> <i
                        class="fa fa-fw fa-square-o disabled"></i></label></div>
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
                <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="enabled"
                                                                                 value="${userInstance?.enabled}"/> <i
                        class="fa fa-fw fa-square-o disabled"></i></label></div>
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
                <div class="checkbox"><label class="checkbox-custom"><g:checkBox name="passwordExpired"
                                                                                 value="${userInstance?.passwordExpired}"/> <i
                        class="fa fa-fw fa-square-o disabled"></i></label></div>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: userInstance, field: 'photo', 'error')} required">

            <label class="col-sm-3 control-label" for="photo">
                <g:message code="user.photo.label" default="Photo"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <div class="fileupload fileupload-new margin-none" data-provides="fileupload"><div
                        class="input-group"><div class="form-control col-md-3"><i
                            class="fa fa-file fileupload-exists"></i><span class="fileupload-preview"></span></div><span
                            class="input-group-btn"><span class="btn btn-default btn-file"><span
                                class="fileupload-new">Fichier</span><span
                                class="fileupload-exists">Changer</span> <input type="file" class="margin-none"
                                                                                id="photo" name="photo"/></span><a
                                href="#" class="btn fileupload-exists" data-dismiss="fileupload">Supp.</a></span></div>
                </div>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <g:submitButton name="create" class="save" class="btn btn-primary"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </div>
    </div>

</g:form>
