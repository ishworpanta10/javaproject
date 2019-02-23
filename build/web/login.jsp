<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/boots
        trap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

        <title>Login Page</title>
    </head>
    <body>
    <div class="container">    
    <div class="row">
    <div class="col-md-8">
        <h1>Login Form !!!</h1>
<!--        <form action="login" method="POST">  
            Username<br><input type="text" name="username"><br> 
            Password <br><input type="password" name="password"><br><br>
    <input type="submit" name="submit" value="login">  -->

<form action="login" method="POST">
  <div class="form-group">
    <label for="username" >Username</label>
    <input name="username" type="username" class="form-control" id="username"  placeholder="Enter Username">
    
  </div>
  <div class="form-group">
    <label for="password" >Password</label>
    <input name="password" type="password" class="form-control" id="Password1" placeholder="Password">
  </div>
    <div col-md-6>
    <button type="submit" class="btn btn-primary" value="login" >Submit</button>
    
    <a href="register.jsp" class="btn btn-success" role="button">Register </a>
     

    </div>
</form>
    </div>
</div>
    </div>
        
    </body>
</html>