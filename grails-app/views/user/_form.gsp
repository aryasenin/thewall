<%@ page import="com.westeros.thewall.User" %>



<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="username" class="padTop col-md-4 control-label">
            <g:message code="user.username.label" default="Username"/>
        <span class="required-indicator">*</span>
    </label>

        <div class="col-md-8"><g:textField class="form-control" name="username" required=""
                                           value="${userInstance?.username}"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

    <div class="col-md-6">
        <!-- Group -->
        <div class="form-group">
            <label for="password" class="padTop col-md-4 control-label">
                <g:message code="user.password.label" default="Password"/>
        <span class="required-indicator">*</span>
    </label>

            <div class="col-md-8"><g:textField class="form-control" name="password" required=""
                                               value="${userInstance?.password}"/></div>
        </div>
        <!-- // Group END -->
    </div>

    <div class="separator bottom">

        <div class="col-md-6">
            <!-- Group -->
            <div class="form-group">
                <label for="userCreated" class="padTop col-md-4 control-label">
                    <g:message code="user.userCreated.label" default="User Created"/>
        
    </label>

                <div class="col-md-8"><g:textField class="form-control" name="userCreated"
                                                   value="${userInstance?.userCreated}"/></div>
            </div>
            <!-- // Group END -->
        </div>

        <div class="separator bottom"></div>

        <div class="col-md-6">
            <!-- Group -->
            <div class="form-group">
                <label for="userUpdated" class="padTop col-md-4 control-label">
                    <g:message code="user.userUpdated.label" default="User Updated"/>
        
    </label>

                <div class="col-md-8"><g:textField class="form-control" name="userUpdated"
                                                   value="${userInstance?.userUpdated}"/></div>
            </div>
            <!-- // Group END -->
        </div>

        <div class="separator bottom">

            <div class="col-md-6">
                <!-- Group -->
                <div class="form-group">
                    <label for="deleted" class="padTop col-md-4 control-label">
                        <g:message code="user.deleted.label" default="Deleted"/>
        
    </label>

                    <div class="col-md-8"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                            name="deleted" value="${userInstance?.deleted}"/> <i
                            class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                </div>
                <!-- // Group END -->
            </div>

            <div class="separator bottom">

                <div class="col-md-6">
                    <!-- Group -->
                    <div class="form-group">
                        <label for="accountExpired" class="padTop col-md-4 control-label">
                            <g:message code="user.accountExpired.label" default="Account Expired"/>
        
    </label>

                        <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                                name="accountExpired" value="${userInstance?.accountExpired}"/> <i
                                class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                    </div>
                    <!-- // Group END -->
                </div>

                <div class="separator bottom">

                    <div class="col-md-6">
                        <!-- Group -->
                        <div class="form-group">
                            <label for="accountLocked" class="padTop col-md-4 control-label">
                                <g:message code="user.accountLocked.label" default="Account Locked"/>
        
    </label>

                            <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                                    name="accountLocked" value="${userInstance?.accountLocked}"/> <i
                                    class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                        </div>
                        <!-- // Group END -->
                    </div>

                    <div class="separator bottom">

                        <div class="col-md-6">
                            <!-- Group -->
                            <div class="form-group">
                                <label for="enabled" class="padTop col-md-4 control-label">
                                    <g:message code="user.enabled.label" default="Enabled"/>
        
    </label>

                                <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox
                                        name="enabled" value="${userInstance?.enabled}"/> <i
                                        class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                            </div>
                            <!-- // Group END -->
                        </div>

                        <div class="separator bottom">

                            <div class="col-md-6">
                                <!-- Group -->
                                <div class="form-group">
                                    <label for="passwordExpired" class="padTop col-md-4 control-label">
                                        <g:message code="user.passwordExpired.label" default="Password Expired"/>
        
    </label>

                                    <div class="col-md-6"><div class="checkbox"><label
                                            class="checkbox-custom"><g:checkBox name="passwordExpired"
                                                                                value="${userInstance?.passwordExpired}"/> <i
                                                class="fa fa-fw fa-square-o disabled"></i></label></div></div>
                                </div>
                                <!-- // Group END -->
                            </div>

                            <div class="separator bottom">

