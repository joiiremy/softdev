import grails.util.GrailsUtil
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes

class BootStrap {

    def init = { servletContext ->
    	def ctx = servletContext.getAttribute(GrailsApplicationAttributes.APPLICATION_CONTEXT)
		def fixtureLoader = ctx.getBean("fixtureLoader")

		switch (GrailsUtil.environment) {
			case "development":
				println "\t\t [LOADING FIXTURE]..."
				fixtureLoader.load("main")
				break
			case "production":
				break
		}
    }
    def destroy = {
    }
}
