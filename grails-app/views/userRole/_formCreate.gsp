<%@ page import="com.westeros.thewall.UserRole" %>

<g:form action="save">

    <div class="form-group">
        <div class="form-group ${hasErrors(bean: userRoleInstance, field: 'role', 'error')} required">

            <label class="col-sm-3 control-label" for="role">
                <g:message code="userRole.role.label" default="Role"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:select style="width: 100%;" id="select2_1" name="role.id" from="${com.westeros.thewall.Role.list()}"
                          optionKey="id" required="" value="${userRoleInstance?.role?.id}" class="many-to-one"/>
            </div>

            <div class="separator bottom"></div>
        </div>
    </div>


    <div class="form-group">
        <div class="form-group ${hasErrors(bean: userRoleInstance, field: 'user', 'error')} required">

            <label class="col-sm-3 control-label" for="user">
                <g:message code="userRole.user.label" default="User"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-sm-8">
                <g:select style="width: 100%;" id="select2_1" name="user.id" from="${com.westeros.thewall.User.list()}"
                          optionKey="id" required="" value="${userRoleInstance?.user?.id}" class="many-to-one"/>
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
