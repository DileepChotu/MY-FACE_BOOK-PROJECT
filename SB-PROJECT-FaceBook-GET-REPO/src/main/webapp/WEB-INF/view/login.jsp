<!DOCTYPE html>
<html>

<head>
    <title>Login MY Project</title>
    <style>
        body {
            background-color: #fff; /* Change the background color to a light gray */
            font-family: Arial, sans-serif; /* Change the font family */
             background-image: url('https://my20yearscancer.com/wp-content/uploads/login-background-768x432.jpg');
            background-size: 300px;
            position: center;
        }

        form {
            
            width: 300px;
            margin: 150px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                    }
        a {
    display: inline-block;
    background-color: #4267B2; /* Facebook blue */
    color: #fff;
    padding: 10px 20px;
    margin: 10px 5px;
    border-radius: 3px;
    text-decoration: none;
    transition: background-color 0.3s;
}

a:hover {
    background-color: blue; /* Darker blue on hover */
}

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #007bff; /* Change the button background color to blue */
            color: #fff; /* Change the button text color to white */
            padding: 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Change the button background color on hover */
        }
    </style>
</head>
<body>

   <form action="/facebook/loginCheck" method="GET">
    <h2>Login MY Project</h2>
    Email : <input type="text" name="email" /> <br />
    Password : <input type="password" name="pwd" /> <br />
    <input type="submit" value="Login" /> <br />
    <a href="/facebook/Home/Register">Register</a> | <a href="">Forgot Password</a>
</form>


</body>

</html>
