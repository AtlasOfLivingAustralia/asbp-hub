
class BootStrap {

    def grailsApplication

    def init = { servletContext ->
        log.info "config.security.cas.bypass = ${grailsApplication.config.security.cas.bypass}"
        log.info "config.skin = ${grailsApplication.config.skin}"
        log.info "config.security.cas.appServerName = ${grailsApplication.config.security.cas.appServerName}"
        log.info "config.biocache.baseUrl = ${grailsApplication.config.biocache.baseUrl}"
        log.info "config.biocache.ajax.useProxy = ${grailsApplication.config.biocache.ajax.useProxy}"
    }
    def destroy = {
    }
}
