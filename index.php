<!DOCTYPE html>
<html>
<head><title>CMS Login</title></head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);


.login-page {
  width: 360px;
  padding: 8% 0 0;


}
.form {

  z-index: 1;
  background:#FFFFF0;
  max-width: 360px;
  padding: 45px;
  text-align: center;
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: 

  ;
  width: 100%;
  border: 1;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #008080;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background:#00BFFF;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background-image: url("backgroundloginmaersk.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center center;
  background-size:cover;

  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

.title{
  font-size:25px;
  font-weight: bold;
  color:Black;
  position: relative;
}

</style>
<body>
  <div >





  </div>
  <center>
  <div class="login-page" align="center">
    <div class="form">
      <form class="login-form" method="post">

          <p class="title">Maersk Line</p>

        <input type="text" name="username"  placeholder="Username" required>
        <input type="password"  name="password" placeholder="Password" required>
        <select name="status">
          <option value="1">Admin</option>
          <option value="2">User</option>
        </select>
        <button type="submit" name="submit">login</button>
          <p><?php

$host = 'smrita.mysql.database.azure.com';
$username = 'smrita@smrita';
$password = 'Sm9803013681';
$db_name = 'dacc';

          //Establishes the connection
          $conn = mysqli_init();
          mysqli_real_connect($conn, $host, $username, $password, $db_name);
          if (mysqli_connect_errno($conn)) {
          die('Failed to connect to MySQL: '.mysqli_connect_error());
          }


           if(isset ($_POST['submit'])){
             $Username = $_POST['username'];
             $Password = $_POST['password'];
             $Status = $_POST['status'];


             //echo $Username = stripcslashes($Username);
             //echo $Password = stripcslashes($Password);


             $row = array();
             $query = "SELECT * FROM user WHERE username = '$Username' and password = '$Password' and role='$Status'";
             $getID= mysqli_fetch_assoc(mysqli_query($conn,$query));


             $row [1]= $getID['username'];
             $row [2]= $getID['password'];

             if($row[1] == $Username && $row[2]== $Password){
               if($Status == 1){
               header("Location:http://localhost:8080/cms/Homepage.php");
             }else{
               header("Location:http://localhost:8080/cms/agent_order_cargo.php");
             }
             }else{
           		echo"Please insert the correct username";
           	}
           }

          ?>
        </p>
        <button><a href="Registration.php" style="text-decoration:none;color:white;">Sign In</button>
      </form>
    </div>
  </div>
  </center>
</body>
</html>
