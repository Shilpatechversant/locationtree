<cfcomponent>
    <cffunction  name="getLocationTree" access="remote" output="false">
        <cfquery name="location_list" result="loc_res">
            SELECT * from coldfusion.tree ORDER BY locationName ASC;
        </cfquery>
        <cfreturn location_list>     
      </cffunction>

    <cffunction name="processTreeNode" output="true">
            <cfargument name="folderId" type="numeric" />
            <cfargument name="folderName" type="string" />
          
            <!--- Check for any nodes that have *this* node as a parent --->
            <cfquery name="LOCAL.qFindChildren" returnType="query">
                select locationid, locationName
                from coldfusion.tree
                where parentLocationId = <cfqueryparam value="#arguments.folderId#" cfsqltype="cf_sql_varchar" />
            </cfquery>
            <li>#arguments.folderName#
                <cfif LOCAL.qFindChildren.recordcount>
                    <!--- We have another list! --->
                    <ul>
                        <!--- We have children, so process these first --->
                        <cfloop query="LOCAL.qFindChildren">
                            <!--- Recursively call function --->
                            <cfset processTreeNode(folderId=LOCAL.qFindChildren.locationid, folderName=LOCAL.qFindChildren.locationName) />
                        </cfloop>
                    </ul>
                </cfif>
            </li>
</cffunction>
</cfcomponent>