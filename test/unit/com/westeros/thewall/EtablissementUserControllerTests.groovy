package com.westeros.thewall


import org.junit.*
import grails.test.mixin.*

@TestFor(EtablissementUserController)
@Mock(EtablissementUser)
class EtablissementUserControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/etablissementUser/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.etablissementUserInstanceList.size() == 0
        assert model.etablissementUserInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.etablissementUserInstance != null
    }

    void testSave() {
        controller.save()

        assert model.etablissementUserInstance != null
        assert view == '/etablissementUser/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/etablissementUser/show/1'
        assert controller.flash.message != null
        assert EtablissementUser.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissementUser/list'

        populateValidParams(params)
        def etablissementUser = new EtablissementUser(params)

        assert etablissementUser.save() != null

        params.id = etablissementUser.id

        def model = controller.show()

        assert model.etablissementUserInstance == etablissementUser
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissementUser/list'

        populateValidParams(params)
        def etablissementUser = new EtablissementUser(params)

        assert etablissementUser.save() != null

        params.id = etablissementUser.id

        def model = controller.edit()

        assert model.etablissementUserInstance == etablissementUser
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissementUser/list'

        response.reset()

        populateValidParams(params)
        def etablissementUser = new EtablissementUser(params)

        assert etablissementUser.save() != null

        // test invalid parameters in update
        params.id = etablissementUser.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/etablissementUser/edit"
        assert model.etablissementUserInstance != null

        etablissementUser.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/etablissementUser/show/$etablissementUser.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        etablissementUser.clearErrors()

        populateValidParams(params)
        params.id = etablissementUser.id
        params.version = -1
        controller.update()

        assert view == "/etablissementUser/edit"
        assert model.etablissementUserInstance != null
        assert model.etablissementUserInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/etablissementUser/list'

        response.reset()

        populateValidParams(params)
        def etablissementUser = new EtablissementUser(params)

        assert etablissementUser.save() != null
        assert EtablissementUser.count() == 1

        params.id = etablissementUser.id

        controller.delete()

        assert EtablissementUser.count() == 0
        assert EtablissementUser.get(etablissementUser.id) == null
        assert response.redirectedUrl == '/etablissementUser/list'
    }
}
