<cfparam  name="message" default="v"> 
<cfparam  name="status" default="v"> 
<cfinclude template="../include/header.cfm" runOnce="true">
<div class="container-fluid">
    <div class="d-flex justify-content-start tab1">
        <div class="p-3">
            <a href="../uploads/" class="btn btn-sm btn-success">                
          Design
            </a>
        </div>
        <div class="p-3">
            <a href="contact_exel.cfm">
                Design with Data
            </a>
        </div>
        <form action="../controllers/admin.cfc?method=upload_users" method="post" enctype="multipart/form-data">
            <div class="row">
                <div class="col d-flex justify-content-center">
                    <label for="fileInput" class="btn btn-sm btn-info">
                        <input type="file" name="fileInput" id="fileInput">
                        Browse
                    </label>
                </div>
                <div class="col d-flex justify-content-center">
                    <button type="submit" class="btn btn-sm btn-success" >Upload</button>
                </div>
            </div>
        </form>
    </div>                    
        
    <div class="row justify-content-md-center tab2 col-lg-offset-2">
            <div class="col  col-lg-8" id="tableDataView">    
                    <h3>All Users</h3>          
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col"></th>
                            <th scope="col">First Name</th>
                            <th scope="col">Last name</th>
                            <th scope="col">Address</th>
                            <th scope="col">email</th>
                            <th scope="col">Phone</th>
                            <th scope="col">DOB</th>
                            <th scope="col">Role</th>
                        </tr>
                    </thead>
                    </table>
        </div>
    </div>
   
    </div>
</div>
<cfinclude template="../include/footer.cfm" runOnce="true">