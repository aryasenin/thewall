<%@ page import="com.westeros.thewall.EtablissementUser" %>



<div class="col-md-6">
    <!-- Group -->
    <div class="form-group">
        <label for="etablissement" class="padTop col-md-4 control-label">
            <g:message code="etablissementUser.etablissement.label" default="Etablissement"/>
            <span class="required-indicator">*</span>
        </label>

        <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="etablissement.id"
                                        from="${com.westeros.thewall.Etablissement.list()}" optionKey="id" required=""
                                        value="${etablissementUserInstance?.etablissement?.id}"
                                        class="many-to-one"/></div>
    </div>
    <!-- // Group END -->
</div>

<div class="separator bottom">

    <div class="col-md-6">
        <!-- Group -->
        <div class="form-group">
            <label for="user" class="padTop col-md-4 control-label">
                <g:message code="etablissementUser.user.label" default="User"/>
                <span class="required-indicator">*</span>
            </label>

            <div class="col-md-6"><g:select style="width: 100%;" id="select2_1" name="user.id"
                                            from="${com.westeros.thewall.User.list()}" optionKey="id" required=""
                                            value="${etablissementUserInstance?.user?.id}" class="many-to-one"/></div>
        </div>
        <!-- // Group END -->
    </div>

    <div class="separator bottom">

        <div class="col-md-6">
            <!-- Group -->
            <div class="form-group">
                <label for="deleted" class="padTop col-md-4 control-label">
                    <g:message code="etablissementUser.deleted.label" default="Deleted"/>

                </label>

                <div class="col-md-6"><div class="checkbox"><label class="checkbox-custom"><g:checkBox name="deleted"
                                                                                                       value="${etablissementUserInstance?.deleted}"/> <i
                        class="fa fa-fw fa-square-o disabled"></i></label></div></div>
            </div>
            <!-- // Group END -->
        </div>

        <div class="separator bottom">

            <div class="col-md-6">
                <!-- Group -->
                <div class="form-group">
                    <label for="userCreated" class="padTop col-md-4 control-label">
                        <g:message code="etablissementUser.userCreated.label" default="User Created"/>

                    </label>

                    <div class="col-md-6"><g:textField class="form-control" name="userCreated"
                                                       value="${etablissementUserInstance?.userCreated}"/></div>
                </div>
                <!-- // Group END -->
            </div>

            <div class="separator bottom">

                <div class="col-md-6">
                    <!-- Group -->
                    <div class="form-group">
                        <label for="userUpdated" class="padTop col-md-4 control-label">
                            <g:message code="etablissementUser.userUpdated.label" default="User Updated"/>

                        </label>

                        <div class="col-md-6"><g:textField class="form-control" name="userUpdated"
                                                           value="${etablissementUserInstance?.userUpdated}"/></div>
                    </div>
                    <!-- // Group END -->
                </div>

                <div class="separator bottom">

