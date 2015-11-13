// Place your Spring DSL code here
import grails.plugin.springsecurity.SpringSecurityUtils
 
beans = {
     
    authenticationSuccessHandler(com.swd.MyAuthSuccessHandler) {
        def conf = SpringSecurityUtils.securityConfig       
        requestCache = ref('requestCache')
        defaultTargetUrl = conf.successHandler.defaultTargetUrl
        alwaysUseDefaultTargetUrl = conf.successHandler.alwaysUseDefault
        targetUrlParameter = conf.successHandler.targetUrlParameter
        useReferer = conf.successHandler.useReferer
        redirectStrategy = ref('redirectStrategy')
        adminUrl = "/home/admin"
        userUrl = "/requistion/create"
    }
}