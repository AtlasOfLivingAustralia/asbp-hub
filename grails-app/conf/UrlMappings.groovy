class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(view:"/index")
        "/index"(controller: "home", action: "index")
        "/search"(controller: "home", action: "index")
        "500"(view:'/error')
	}
}
