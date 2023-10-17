<!DOCTYPE html>
<html>

<head>
    <title>User Register</title>
    <style>
        body {
            background-image: url('https://saratorvallbach.com/wp-content/uploads/2020/05/registration-complete.png'); /* Set the URL of your background image */
            background-size: 900px;
            background-repeat: no-repeat;
            background-attachment: fixed;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 200px; /* Remove default margin to fit the background */
            padding: 0; /* Remove default padding */
        }

        h1 {
            color: white;
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background for the message */
            padding: 10px;
            border-radius: 5px;
            margin-top: 100px; /* Adjust the margin to position the message */
        }

        input[type="submit"] {
            background-color: #008CBA;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #005F80;
        }
    </style>
</head>

<body>
    <form action="/facebook/login" method="GET">
        <h1>${message}</h1><br />
        <input type="submit" value="Login" /><br />
    </form>
</body>

</html>
