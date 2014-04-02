//import grails.plugins.springsecurity.SecurityConfigType

// locations to search for config files that get merged into the main config;
// config files can be ConfigSlurper scripts, Java properties files, or classes
// in the classpath in ConfigSlurper format

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [
        xml: ['text/xml', 'application/xml'],
        text: 'text/plain',
        js: 'text/javascript',
        rss: 'application/rss+xml',
        atom: 'application/atom+xml',
        css: 'text/css',
        csv: 'text/csv',
        pdf: 'application/pdf',
        rtf: 'application/rtf',
        excel: ['application/octet-stream'],
        xls: ['application/vnd.ms-excel', 'application/msexcel', 'application/xls', ''],
        ods: 'application/vnd.oasis.opendocument.spreadsheet',
        all: '*/*',
        json: ['application/json', 'text/json'],
        doc: ['application/msword'],
        docx: ['application/vnd.openxmlformats-officedocument.wordprocessingml.document'],
        xlsx: ['application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'],
        mp3: ['audio/mp3'],
        zip: ['application/zip'],
        rar: ['application/x-rar-compressed'],
        form: 'application/x-www-form-urlencoded',
        jpg: ['image/jpg'],
        jpeg: ['image/jpeg'],
        png: ['image/png'],
        tiff: ['image/tiff'],
        ico: ['image/vnd.microsoft.icon'],
        ppt: ['application/vnd.ms-powerpoint'],
        pptx: ['application/vnd.openxmlformats-officedocument.presentationml.presentation'],
        multipartForm: 'multipart/form-data'
]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart = false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// configure auto-caching of queries by default (if false you can cache individual queries with 'cache: true')
grails.hibernate.cache.queries = false

environments {
    development {
        grails.logging.jul.usebridge = true
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// log4j configuration
/*log4j = {
    // Example of changing the log pattern for the default console appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    appenders {
        rollingFile name: "myAppender", maxFileSize: 1024, file: "/tmp/${appName}.log"
    }

    error 'org.codehaus.groovy.grails.web.servlet',        // controllers
            'org.codehaus.groovy.grails.web.pages',          // GSP
            'org.codehaus.groovy.grails.web.sitemesh',       // layouts
            'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
            'org.codehaus.groovy.grails.web.mapping',        // URL mapping
            'org.codehaus.groovy.grails.commons',            // core / classloading
            'org.codehaus.groovy.grails.plugins',            // plugins
            'org.codehaus.groovy.grails.orm.hibernate',      // hibernate integration
            'org.springframework',
            'org.hibernate',
            'net.sf.ehcache.hibernate',
            'grails.app'

    info myAppender: 'grails.app'

    debug myAppender: 'grails.app'

}*/

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.westeros.thewall.User'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.westeros.thewall.UserRole'
grails.plugins.springsecurity.authority.className = 'com.westeros.thewall.Role'
grails.plugins.springsecurity.requestMap.className = 'com.westeros.thewall.Requestmap'
grails.plugins.springsecurity.securityConfigType = 'com.westeros.thewall.Requestmap'
grails.plugins.springsecurity.securityConfigType = SecurityConfigType.Requestmap
grails.plugins.springsecurity.SecurityTagLib


grails.views.javascript.library = "jquery"


jquery {
    sources = 'jquery' // Holds the value where to store jQuery-js files /web-app/js/
    version = '1.10.2.2' // The jQuery version in use
}


grails.naming.entries = [
        "jdbc/oilManager": [
                type: "javax.sql.DataSource", //required
                auth: "Container", // optional
                description: "Data source for oilManager", //optional
                driverClassName: "com.mysql.jdbc.Driver",
                //url: "jdbc:mysql://192.168.0.100/cynod_cloud",
                url: "jdbc:mysql://localhost/thewall",
                username: "appuser",
                password: "appuser",
                maxActive: "8",
                maxIdle: "4"
        ]
]

//Auditable
auditLog.verbose = true

auditLog {
    actorClosure = { request, session ->
        session.currentUser
    }
}

//Configure URL Restrictions
/*grails.plugin.springsecurity.interceptUrlMap = [
        '/login/**':         [
                'IS_AUTHENTICATED_ANONYMOUSLY'
        ],
        '/static/**':        [
                'IS_AUTHENTICATED_ANONYMOUSLY'
        ],
        '/**':               [
                'IS_AUTHENTICATED_REMEMBERED']
]*/

grails.plugin.springsecurity.password.algorithm = 'SHA-256'
activiti {
    processEngineName = "activiti-engine-default"
    databaseType = "mysql"
    deploymentName = appName
    deploymentResources = ["file:./grails-app/conf/**/*.bpmn*.xml",
            "file:./grails-app/conf/**/*.png",
            "file:./src/taskforms/**/*.form"]
    jobExecutorActivate = true
    mailServerHost = "smtp.gmail.com"
    mailServerPort = "465"
    mailServerUsername = "arya.senin@gmail.com"
    mailServerPassword = "aryasenin"
    mailServerDefaultFrom = "arya.senin@gmail.com"
    history = "audit" // "none", "activity", "audit" or "full"
    sessionUsernameKey = "username"
    useFormKey = true
}

environments {
    development {
        //activiti {
        //    processEngineName = "activiti-engine-dev"
        //   databaseSchemaUpdate = true // true, false or "create-drop"
        //}

        // log4j configuration en developpement
        log4j = {
            appenders {
                rollingFile name: "myAppender", maxFileSize: 1024, file: "/tmp/${appName}.log"
            }

            error 'org.codehaus.groovy.grails.web.servlet',  //  controllers
                    'org.codehaus.groovy.grails.web.pages', //  GSP
                    'org.codehaus.groovy.grails.web.sitemesh', //  layouts
                    'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
                    'org.codehaus.groovy.grails.web.mapping', // URL mapping
                    'org.codehaus.groovy.grails.commons', // core / classloading
                    'org.codehaus.groovy.grails.plugins', // plugins
                    'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
                    'org.springframework',
                    'org.hibernate',
                    'net.sf.ehcache.hibernate'

            warn myAppender: 'org.mortbay.log'
            info myAppender: 'grails.app'
            debug myAppender: 'grails.app'

            debug myAppender: 'grails.app.service'

        }
    }
    test {
        /*activiti {
            processEngineName = "activiti-engine-test"
            databaseSchemaUpdate = true
            mailServerPort = "5025"
        }
*/
        // log4j configuration en test
        log4j = {
            appenders {
                rollingFile name: "myAppender", maxFileSize: 1024, file: "/tmp/${appName}.log"
            }

            error 'org.codehaus.groovy.grails.web.servlet',  //  controllers
                    'org.codehaus.groovy.grails.web.pages', //  GSP
                    'org.codehaus.groovy.grails.web.sitemesh', //  layouts
                    'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
                    'org.codehaus.groovy.grails.web.mapping', // URL mapping
                    'org.codehaus.groovy.grails.commons', // core / classloading
                    'org.codehaus.groovy.grails.plugins', // plugins
                    'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
                    'org.springframework',
                    'org.hibernate',
                    'net.sf.ehcache.hibernate'

            warn myAppender: 'org.mortbay.log'
            info myAppender: 'grails.app'
            debug myAppender: 'grails.app'

            debug myAppender: 'grails.app.service'

        }
    }
    production {
        /*activiti {
            deploymentResources = ["classpath*:*.bpmn*.xml"]
            processEngineName = "activiti-engine-prod"
            databaseSchemaUpdate = true
            jobExecutorActivate = true
            dataSourceJndiName = "jdbc/oilManager"
            transactionManager = "transactionManager"
            transactionsExternallyManaged = true
        }*/

        // log4j configuration en production
        log4j = {
            appenders {
                rollingFile name: "myAppender", maxFileSize: 1024, file: "/tmp/${appName}.log"
            }

            error 'org.codehaus.groovy.grails.web.servlet',  //  controllers
                    'org.codehaus.groovy.grails.web.pages', //  GSP
                    'org.codehaus.groovy.grails.web.sitemesh', //  layouts
                    'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
                    'org.codehaus.groovy.grails.web.mapping', // URL mapping
                    'org.codehaus.groovy.grails.commons', // core / classloading
                    'org.codehaus.groovy.grails.plugins', // plugins
                    'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
                    'org.springframework',
                    'org.hibernate',
                    'net.sf.ehcache.hibernate'

            warn myAppender: 'org.mortbay.log'
            info myAppender: 'grails.app'
//            debug myAppender: 'grails.app'

        }
    }
}

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = 'com.westeros.thewall.User'
grails.plugins.springsecurity.userLookup.authorityJoinClassName = 'com.westeros.thewall.UserRole'
grails.plugins.springsecurity.authority.className = 'com.westeros.thewall.Role'
grails.plugins.springsecurity.requestMap.className = 'com.westeros.thewall.Requestmap'
grails.plugins.springsecurity.securityConfigType = 'Requestmap'
