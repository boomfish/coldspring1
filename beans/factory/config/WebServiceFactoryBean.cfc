<cfcomponent displayname="WebServiceFactoryBean" extends="coldspring.beans.factory.FactoryBean">

	<cffunction name="init" access="public" 
                returntype="coldspring.beans.factory.config.WebServiceFactoryBean" 
				output="false">
        <cfargument name="urltowsdl" type="string" required="true" hint="Absolute URL or name (assigned in the CF Administrator) of the web service" />
        <cfargument name="argStruct" type="struct" required="false" hint="A structure containing web service configuration arguments" default="#StructNew()#" />

		<cfset variables.webService = CreateObject("webservice",arguments.urltowsdl,arguments.argStruct) />
		<cfreturn this />
	</cffunction>
	
	<cffunction name="getObject" access="public" returntype="any" output="false">
		<cfreturn variables.webService />
	</cffunction>
			
	<cffunction name="isSingleton" access="public" returntype="boolean" output="false">
		<cfreturn true />
	</cffunction>
	
</cfcomponent>