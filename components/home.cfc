<cfcomponent dispayname="home">

    <cffunction name = "Init" returnType = "home" output="false" access="public">
        <cfreturn this />
    </cffunction>


    <cffunction name = "save" >
        <cfargument name="entry" type="struct" required="yes" />
        <cfstoredproc procedure ="insertCrush" dataSource="another">
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.name#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_DATE" value="#arguments.entry.birthday#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.likes#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.dislikes#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.description#" type="in" />
        </cfstoredproc>
    </cffunction>


    <cffunction name = "view" >
        <cfargument name="id" type="numeric" required="false" />
        <cfstoredproc procedure ="getCrush" dataSource="another">
            <cfif arguments.id >
                <cfprocparam type="in"  value="#arguments.id#" null="#YesNoFormat(NOT Val(arguments.id))#" cfsqltype="cf_sql_integer">
            <cfelse>
                <cfprocparam type="in"  value="#arguments.id#" cfsqltype="cf_sql_integer">
            </cfif>
            <cfprocresult name="view" />
        </cfstoredproc>

        <cfreturn view>
    </cffunction>


    <cffunction name = "edit" >
        <cfargument name="entry" type="struct" required="yes" />
        <cfstoredproc procedure ="editCrush" dataSource="another">
            <cfprocparam CFSQLType="CF_SQL_INT" value="#arguments.entry.id#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.name#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_DATE" value="#arguments.entry.birthday#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.likes#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.dislikes#" type="in" />
            <cfprocparam CFSQLType="CF_SQL_VARCHAR" value="#arguments.entry.description#" type="in" />
        </cfstoredproc>
    </cffunction>


    <cffunction name = "delete" >
        <cfargument name="entry" type="struct" required="yes" />
        <cfstoredproc procedure ="deleteCrush" dataSource="another">
            <cfprocparam CFSQLType="CF_SQL_INT" value="#arguments.entry.id#" type="in" />
        </cfstoredproc>
    </cffunction>


</cfcomponent>