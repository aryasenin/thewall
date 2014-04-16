package com.westeros.thewall

import java.text.DateFormat

class JqueryDatePickerTagLib {
    def jqDatePicker = { attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def value = attrs['value'] ? attrs['value'] : attrs['default']
        def day
        def month
        def year
        def hour
        def minute
        def seconde
        def date = attrs['value'] ? attrs['value'] : attrs['default']
        def dateValue
        if (value == null) {
            value = ''
        } else if (value) {
            day = String.format('%td', value)
            month = String.format('%tm', value)
            year = String.format('%tY', value)
            hour = String.format('%tH', value)
            minute = String.format('%tM', value)
            seconde = String.format('%tS', value)
            value = String.format('%td/%<tm/%<tY', value)

        }
        def minDate = attrs.minDate
        def showDay = attrs.showDay

        //Create date text field and supporting hidden text fields need by grails
        out.println "<div class=\"input-group date\" id=\"datepicker2\">"
        if (attrs.required) {
            out.println "<input type=\"text\" size=\"50%\" class=\"form-control \" placeholder=\"dd/MM/yyyy\" required=\" \" name=\"${name}\" value=\"${value}\" />"
        } else {
            out.println "<input type=\"text\" size=\"50%\" class=\"form-control\" placeholder=\"dd/MM/yyyy\" name=\"${name}\" value=\"${value}\" />"
        }
        out.println "<span class=\"input-group-addon\"><i class=\"fa fa-th\"></i></span> </div>"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_day\" value=\"${day}\" id=\"${id}_day\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_month\" value=\"${month}\" id=\"${id}_month\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_year\" value=\"${year}\" id=\"${id}_year\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_hour\" value=\"${hour}\" id=\"${id}_hour\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_minute\" value=\"${minute}\" id=\"${id}_minute\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_seconde\" value=\"${seconde}\" id=\"${id}_seconde\" />"

        /*
        ################# debut script
         */

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "jQuery(\"#${name}\").datepicker({"
        out.println "buttonImage: '${resource(dir: 'images', file: 'calendar-1.png')}',"
        out.println "maxDate: '0D',"
        out.println "onClose: function(dateText, inst) {"
        out.println "var dateStr = dateText.split('/') ;"
        out.println "var jour = dateStr[0];"
        out.println "var mois = dateStr[1];"
        out.println "var annee = dateStr[2];"
        out.println "if (jour<01 || jour>31){"
        //out.println "alert(\"Le jour choisi : \" + jour + \", n'est pas un jour du mois\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else if (mois<01 || mois>12){"
        //out.println "alert(\"Le mois choisi : \" + mois + \", n'est pas un mois de l'année\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else{"
        out.println "\$(\"#${name}_month\").attr(\"value\",new Date(annee,mois,jour).getMonth());"
        out.println "\$(\"#${name}_day\").attr(\"value\",new Date(annee,mois,jour).getDate());"
        out.println "\$(\"#${name}_year\").attr(\"value\",new Date(annee,mois,jour).getFullYear());"
        out.println "\$(\"#${name}_hour\").attr(\"value\",new Date().getHours());"
        out.println "\$(\"#${name}_minute\").attr(\"value\",new Date().getMinutes());"
        out.println "\$(\"#${name}_seconde\").attr(\"value\",new Date().getSeconds());"
        out.println "}}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if (minDate != null) {
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if (showDay != null) {
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"
        out.println "})</script>"

    }

    def jqDatePickerMaxDay = { attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def value = attrs['value'] ? attrs['value'] : attrs['default']
        def day
        def month
        def year
        def hour
        def minute
        def seconde
        def date = attrs['value'] ? attrs['value'] : attrs['default']
        def dateValue
        if (value == null) {
            value = ''
        } else if (value) {
            day = String.format('%td', value)
            month = String.format('%tm', value)
            year = String.format('%tY', value)
            hour = String.format('%tH', value)
            minute = String.format('%tM', value)
            seconde = String.format('%tS', value)
            value = String.format('%td/%<tm/%<tY', value)

        }
        def minDate = attrs.minDate
        def showDay = attrs.showDay

        //Create date text field and supporting hidden text fields need by grails
        out.println "<div class=\"input-group date\" id=\"datepicker2\">"
        if (attrs.required) {
            out.println "<input type=\"text\" size=\"50%\"  class=\"form-control\" placeholder=\"dd/MM/yyyy\" required=\" \" name=\"${name}\" value=\"${value}\" id=\"${id}\" />"
        } else {
            out.println "<input type=\"text\" size=\"50%\"  class=\"form-control\" placeholder=\"dd/MM/yyyy\" name=\"${name}\" value=\"${value}\" id=\"${id}\" />"
        }
        out.println "<span class=\"input-group-addon\"><i class=\"fa fa-th\"></i></span> </div>"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_day\" value=\"${day}\" id=\"${id}_day\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_month\" value=\"${month}\" id=\"${id}_month\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_year\" value=\"${year}\" id=\"${id}_year\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_hour\" value=\"${hour}\" id=\"${id}_hour\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_minute\" value=\"${minute}\" id=\"${id}_minute\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_seconde\" value=\"${seconde}\" id=\"${id}_seconde\" />"

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "\$(\"#${name}\").datepicker({"
        out.println "buttonImage: '${resource(dir: 'images', file: 'calendar-1.png')}',"
        out.println "maxDate: '0D',"
        out.println "onClose: function(dateText, inst) {"
        out.println "var dateStr = dateText.split('/') ;"
        out.println "var jour = dateStr[0];"
        out.println "var mois = dateStr[1];"
        out.println "var annee = dateStr[2];"
        out.println "if (jour<01 || jour>31){"
        //out.println "alert(\"Le jour choisi : \" + jour + \", n'est pas un jour du mois\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else if (mois<01 || mois>12){"
        //out.println "alert(\"Le mois choisi : \" + mois + \", n'est pas un mois de l'année\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else{"
        out.println "\$(\"#${name}_month\").attr(\"value\",new Date(annee,mois,jour).getMonth());"
        out.println "\$(\"#${name}_day\").attr(\"value\",new Date(annee,mois,jour).getDate());"
        out.println "\$(\"#${name}_year\").attr(\"value\",new Date(annee,mois,jour).getFullYear());"
        out.println "\$(\"#${name}_hour\").attr(\"value\",new Date().getHours());"
        out.println "\$(\"#${name}_minute\").attr(\"value\",new Date().getMinutes());"
        out.println "\$(\"#${name}_seconde\").attr(\"value\",new Date().getSeconds());"
        out.println "}}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if (minDate != null) {
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if (showDay != null) {
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"
        out.println "})</script>"

    }


    def jqDatePickerDemi = { attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def value = attrs['value'] ? attrs['value'] : attrs['default']
        def day
        def month
        def year
        def hour
        def minute
        def seconde
        def date = attrs['value'] ? attrs['value'] : attrs['default']
        def dateValue
        if (value == null) {
            value = ''
        } else if (value) {
            day = String.format('%td', value)
            month = String.format('%tm', value)
            year = String.format('%tY', value)
            hour = String.format('%tH', value)
            minute = String.format('%tM', value)
            seconde = String.format('%tS', value)
            value = String.format('%td/%<tm/%<tY', value)

        }
        def minDate = attrs.minDate
        def showDay = attrs.showDay

        //Create date text field and supporting hidden text fields need by grails
        if (attrs.required) {
            out.println "<input type=\"text\" size=\"10%\" name=\"${name}\" required=\" \" placeholder=\"dd/MM/yyyy\" value=\"${value}\" id=\"${id}\" />"
        } else {
            out.println "<input type=\"text\" size=\"10%\" name=\"${name}\" placeholder=\"dd/MM/yyyy\" value=\"${value}\" id=\"${id}\" />"
        }
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_day\" value=\"${day}\" id=\"${id}_day\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_month\" value=\"${month}\" id=\"${id}_month\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_year\" value=\"${year}\" id=\"${id}_year\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_hour\" value=\"${hour}\" id=\"${id}_hour\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_minute\" value=\"${minute}\" id=\"${id}_minute\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_seconde\" value=\"${seconde}\" id=\"${id}_seconde\" />"

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "\$(\"#${name}\").datepicker({"
        out.println "onClose: function(dateText, inst) {"
        out.println "var dateStr = dateText.split('/') ;"
        out.println "var jour = dateStr[0];"
        out.println "var mois = dateStr[1];"
        out.println "var annee = dateStr[2];"
        out.println "\$(\"#${name}_month\").attr(\"value\",new Date(annee,mois,jour).getMonth());"
        out.println "\$(\"#${name}_day\").attr(\"value\",new Date(annee,mois,jour).getDate());"
        out.println "\$(\"#${name}_year\").attr(\"value\",new Date(annee,mois,jour).getFullYear());"
        out.println "}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if (minDate != null) {
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if (showDay != null) {
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"
        out.println "})</script>"

    }

    def jqDatePickerDefault = { attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def value = attrs['value'] ? attrs['value'] : attrs['default']
        def valuePrint = attrs['value'] ? attrs['value'] : attrs['default']
        def day
        def month
        def year
        def hour
        def minute
        def seconde

        if (value == null) {
            value = ''
        } else if (value) {
            def styleCode = DateFormat.SHORT
            def formatter = DateFormat.getDateInstance(styleCode)
            value = String.format('%tF', value)
        }

        if (valuePrint == null) {
            valuePrint = ''
        } else if (valuePrint) {
            day = String.format('%te', valuePrint)
            month = String.format('%tB', valuePrint)
            year = String.format('%tY', valuePrint)
            valuePrint = String.format('%tA %<te %<tB %<tY', valuePrint)
        }

        def minDate = attrs.minDate
        def showDay = attrs.showDay

        //Create date text field and supporting hidden text fields need by grails
        if (attrs.required) {
            out.println "<input type=\"text\"  name=\"${name}\" class=\"default\" required=\" \" placeholder=\"dd/MM/yyyy\" id=\"${id}\" value=\"${value}\"  />"
        } else {
            out.println "<input type=\"text\"  name=\"${name}\" class=\"default\" placeholder=\"dd/MM/yyyy\" id=\"${id}\" value=\"${value}\"  />"
        }
        out.println "<input type=\"hidden\"  name=\"${name}_day\" id=\"${id}_day\" value=\"${valuePrint}\"/>"
        out.println "<input type=\"hidden\"   name=\"${name}_month\" id=\"${id}_month\" value=\"${value + ' 00:00:00'}\" />"
        out.println "<input type=\"hidden\"   name=\"${name}_year\" id=\"${id}_year\" value=\"${value + ' 23:59:00'}\" />"

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "var tab_mois=new Array(\"Janvier\", \"Février\", \"Mars\", \"Avril\", \"Mai\", \"Juin\", \"Juillet\", \"Août\", \"Septembre\", \"Octobre\", \"Novembre\", \"Décembre\");"
        out.println "var tab_mois_num=new Array(\"01\", \"02\", \"03\", \"04\", \"05\", \"06\", \"07\", \"08\", \"09\", \"10\", \"11\", \"12\");"
        out.println "var tab_jour=new Array(\"Dimanche\", \"Lundi\", \"Mardi\", \"Mercredi\", \"Jeudi\", \"Vendredi\", \"Samedi\");"
        out.println "\$(\"#${name}\").datepicker({"
        out.println "dateFormat: \'mm/dd/yy\',"
        out.println "onClose: function(dateText, inst) {"
        out.println "\$(\"#${name}\").attr(\"value\",new Date(dateText).getFullYear() + '-' + (new Date(dateText).getMonth() +1) + '-' + new Date(dateText).getDate());"
        out.println "\$(\"#${name}_month\").attr(\"value\",new Date(dateText).getFullYear() + '-' + (tab_mois_num[new Date(dateText).getMonth()]) + '-' + new Date(dateText).getDate() + ' 00:00:00');"
        out.println "\$(\"#${name}_day\").attr(\"value\",new Date(dateText).getDate() + ' ' + (tab_mois[new Date(dateText).getMonth()]) + ' ' + new Date(dateText).getFullYear() );"
        out.println "\$(\"#${name}_year\").attr(\"value\",new Date(dateText).getFullYear() + '-' + (tab_mois_num[new Date(dateText).getMonth()]) + '-' + new Date(dateText).getDate() + ' 23:59:00');"
        out.println "}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if (minDate != null) {
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if (showDay != null) {
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"
        out.println "})</script>"

    }

    def jqDatePickerLeftColonne = { attrs, body ->
        def out = out
        def name = attrs.name    //The name attribute is required for the tag to work seamlessly with grails
        def id = attrs.id ?: name
        def value = attrs['value'] ? attrs['value'] : attrs['default']
        def day
        def month
        def year
        def hour
        def minute
        def seconde
        def date = attrs['value'] ? attrs['value'] : attrs['default']
        def dateValue
        if (value == null) {
            value = ''
        } else if (value) {
            day = String.format('%td', value)
            month = String.format('%tm', value)
            year = String.format('%tY', value)
            hour = String.format('%tH', value)
            minute = String.format('%tM', value)
            seconde = String.format('%tS', value)
            value = String.format('%td/%<tm/%<tY', value)

        }
        def minDate = attrs.minDate
        def showDay = attrs.showDay

        //Create date text field and supporting hidden text fields need by grails
        if (attrs.required) {
            out.println "<input type=\"text\" size=\"7%\" name=\"${name}\" required=\" \" placeholder=\"dd/MM/yyyy\" value=\"${value}\" id=\"${id}\" style=\"width:65%; text-align: left; font-size: 10px; font-family: 'Lucida Grande'\" />"
        } else {
            out.println "<input type=\"text\" size=\"7%\" name=\"${name}\" placeholder=\"dd/MM/yyyy\" value=\"${value}\" id=\"${id}\" style=\"width:65%; text-align: left; font-size: 10px; font-family: 'Lucida Grande'\" />"
        }
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_day\" value=\"${day}\" id=\"${id}_day\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_month\" value=\"${month}\" id=\"${id}_month\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_year\" value=\"${year}\" id=\"${id}_year\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_hour\" value=\"${hour}\" id=\"${id}_hour\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_minute\" value=\"${minute}\" id=\"${id}_minute\" />"
        out.println "<input type=\"hidden\" size=\"50%\" name=\"${name}_seconde\" value=\"${seconde}\" id=\"${id}_seconde\" />"

        //Code to parse selected date into hidden fields required by grails
        out.println "<script type=\"text/javascript\"> \$(document).ready(function(){"
        out.println "\$(\"#${name}\").datepicker({"
        out.println "buttonImage: '${resource(dir: 'images', file: 'calendar-small.png')}',"
        out.println "onClose: function(dateText, inst) {"
        out.println "var dateStr = dateText.split('/') ;"
        out.println "var jour = dateStr[0];"
        out.println "var mois = dateStr[1];"
        out.println "var annee = dateStr[2];"
        out.println "if (jour<01 || jour>31){"
        //out.println "alert(\"Le jour choisi : \" + jour + \", n'est pas un jour du mois\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else if (mois<01 || mois>12){"
        //out.println "alert(\"Le mois choisi : \" + mois + \", n'est pas un mois de l'année\");"
        out.println "\$(\"#${name}\").attr(\"value\",'');"
        out.println "\$(\"#${name}_month\").attr(\"value\",'');"
        out.println "\$(\"#${name}_day\").attr(\"value\",'');"
        out.println "\$(\"#${name}_year\").attr(\"value\",'');"
        out.println "}else{"
        out.println "\$(\"#${name}_month\").attr(\"value\",new Date(annee,mois,jour).getMonth());"
        out.println "\$(\"#${name}_day\").attr(\"value\",new Date(annee,mois,jour).getDate());"
        out.println "\$(\"#${name}_year\").attr(\"value\",new Date(annee,mois,jour).getFullYear());"
        out.println "\$(\"#${name}_hour\").attr(\"value\",new Date().getHours());"
        out.println "\$(\"#${name}_minute\").attr(\"value\",new Date().getMinutes());"
        out.println "\$(\"#${name}_seconde\").attr(\"value\",new Date().getSeconds());"
        out.println "}}"

        //If you want to customize using the jQuery UI events add an if block an attribute as follows
        if (minDate != null) {
            out.println ","
            out.println "minDate: ${minDate}"
        }

        if (showDay != null) {
            out.println ","
            out.println "beforeShowDay: function(date){"
            out.println "var day = date.getDay();"
            out.println "return [day == ${showDay},\"\"];"
            out.println "}"
        }

        out.println "});"
        out.println "})</script>"

    }
}

