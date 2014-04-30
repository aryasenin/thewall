<%@ page import="com.westeros.thewall.EtablissementUser" %>

<g:form action="save">

    <div class="form-group">
        <div class="form-group ${hasErrors(bean: etablissementUserInstance, field: 'user', 'error')} required">

            <label class="col-sm-3 control-label" for="user">
                <g:message code="etablissementUser.user.label" default="User"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:select style="width: 100%;" id="select2_1" name="user.id" from="${com.westeros.thewall.User.list()}"
                          optionKey="id" required="" value="${etablissementUserInstance?.user?.id}"
                          class="many-to-one"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: etablissementUserInstance, field: 'dateCreated', 'error')} ">

            <label class="col-sm-3 control-label" for="dateCreated">
                <g:message code="etablissementUser.dateCreated.label" default="Date Created"/>

            </label>

            <div class="col-sm-8">
                <g:jqDatePicker name="dateCreated" value="${etablissementUserInstance?.dateCreated}"/>
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
