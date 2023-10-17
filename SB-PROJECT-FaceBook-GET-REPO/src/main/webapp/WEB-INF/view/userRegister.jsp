<!DOCTYPE html>
<html>

<head>
    <title>User Register</title>
    <style>
        body {
            background-color: gray; /* Background color */
            text-align: center; /* Center align content */
            background-image: url('https://www.iave.org/iavewp/wp-content/uploads/2020/06/purple-background-registration.png');
        }

        form {
            background-color: #ffffff; /* Form background color */
            display: inline-block;
            padding: 20px;
            border-radius: 10px;
            text-align: left;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            margin: 80px;
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
            background-color: #3498db; /* Button color */
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 3px;
            cursor: pointer;
        }
    </style>
</head>

<body>
    <form action="/facebook/user/regester" method="POST">
        <h2>User Register</h2>
        Name : <input type="text" name="name" /> <br />
        Email Id: <input type="text" name="email" /> <br />
        Contact Number: <input type="text" name="contact" /> <br />
        Password: <input type="password" name="pwd" /> <br />
        <input type="submit" value="Register" />
    </form>
</body>
