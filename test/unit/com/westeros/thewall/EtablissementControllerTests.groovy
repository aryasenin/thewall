package com.westeros.thewall


import org.junit.*
import grails.test.mixin.*

@TestFor(EtablissementController)
@Mock(Etablissement)
class EtablissementControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/etablissement/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.etablissementInstanceList.size() == 0
        assert model.etablissementInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.etablissementInstance != null
    }

    void testSave() {
        controller.save()

        assert model.etablissementInstance != null
        assert view == '/etablissement/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/etablissement/show/1'
        assert controller.flash.message != null
        assert Etablissement.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissement/list'

        populateValidParams(params)
        def etablissement = new Etablissement(params)

        assert etablissement.save() != null

        params.id = etablissement.id

        def model = controller.show()

        assert model.etablissementInstance == etablissement
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissement/list'

        populateValidParams(params)
        def etablissement = new Etablissement(params)

        assert etablissement.save() != null

        params.id = etablissement.id

        def model = controller.edit()

        assert model.etablissementInstance == etablissement
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/etablissement/list'

        response.reset()

        populateValidParams(params)
        def etablissement = new Etablissement(params)

        assert etablissement.save() != null

        // test invalid parameters in update
        params.id = etablissement.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/etablissement/edit"
        assert model.etablissementInstance != null

        etablissement.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/etablissement/show/$etablissement.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        etablissement.clearErrors()

        populateValidParams(params)
        params.id = etablissement.id
        params.version = -1
        controller.update()

        assert view == "/etablissement/edit"
        assert model.etablissementInstance != null
        assert model.etablissementInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/etablissement/list'

        response.reset()

        populateValidParams(params)
        def etablissement = new Etablissement(params)

        assert etablissement.save() != null
        assert Etablissement.count() == 1

        params.id = etablissement.id

        controller.delete()

        assert Etablissement.count() == 0
        assert Etablissement.get(etablissement.id) == null
        assert response.redirectedUrl == '/etablissement/list'
    }
}
