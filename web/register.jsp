<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-8" >
        <h1>Registration  Form</h1>
       <form action="register" method="POST">  
           Full Name<br><input class="form-control" type="text" name="fullName"><br> 
           Username<br><input class="form-control" type="text" name="userName"><br>
           Password <br><input class="form-control" type="password" name="userPass"><br>
           Email<br><input class="form-control" type="text" name="userEmail"><br>
           Country<br> <br><select name="userCountry">
               <option value="Nepal">Nepal</option>
               <option value="India">India</option>
               <option value="Argentina">Argentina</option>
               <option value="China">China</option>
               <option value="Japan">Japan</option>
               <option value="America">America</option>

           </select><br><br>
           
           
                 <button type="submit" class="btn btn-success">Register</button>
                 
       </form>
        
        
                </div>
            </div>
        </div>
        
    </body>
</html>