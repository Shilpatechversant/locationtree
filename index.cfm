<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <title>Task Tree</title>
    </head>
    <body>
        <section>
            <div class="main_container">
                <div class="forms card">
                    <h3>Task Tree Structure</h3>
                    <hr>
                    <cfset data=createObject("component","controllers.admin")>
                    <cfset ldata=data.getLocationTree()> 
                        <div class="res1" >
                            <h3>Task 2 - Sort List </h3>
                            <hr>
                            <table border="1" class="table table-bordered">
                                <cfoutput query="ldata">
                                    <tr>
                                    <td> #locationName# </td>
                                    </tr>
                                </cfoutput>
                            </table>
                        </div>
           
                        <ul class="tree">                     
                                <cfset data.processTreeNode(folderId=1, folderName="Kerala") />
                        </ul>                                              
                    <form name="cftask_5" action="" method="post">
                        <div class="form-group">
                            <label>Location Id</label>
                            <input type="text" name="location_id" required  autocomplete="off">
                        </div>
                     
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" value="Submit" />
                        </div>
                    </form>
                    <cfif structKeyExists(form,'Submit')>
                        <cfset key=form.location_id>                   
                        <cfset data=createObject("component","controllers.admin")>
                        <cfset struct_data=data.getLocationTree()>
                        <cfdump var="#struct_data#">
                    </cfif>
                </div>

            </div>
        </section>
    </body>
</html>