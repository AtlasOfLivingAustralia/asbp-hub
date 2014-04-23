modules = {
//    application {
//        resource url:'js/application.js'
//    }

    // Define your skin module here - it must 'dependsOn' either bootstrap (ALA version) or bootstrap2 (unmodified) and core

    asbp {
        dependsOn 'bootstrap', 'hubCore' // from ala-web-theme plugin
        resource url:[dir:'css', file:'asbp_ala_seedhub.css']
        resource url:[dir:'css', file:'hub-additions.css']
    }

}