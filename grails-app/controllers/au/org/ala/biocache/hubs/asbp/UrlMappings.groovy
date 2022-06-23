package au.org.ala.biocache.hubs.asbp

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        // "/"(view: "/index")
        // "/search"(controller: "home")
        "/"(controller: "home")
        "500"(view: '/error')
        "404"(view: '/error')
        "403"(view: '/error')
    }
}
