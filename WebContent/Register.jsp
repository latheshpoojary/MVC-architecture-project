<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
        body {
            background-color: #cdf6ff;
        }

        #container {
            width: 100%;
            height: 93vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #login-box {
            height: 80vh;
            width: 70vh;
            background-color: #008AD9;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }

        .details {
            height: 12vh;
            width: 100%;
        }

        #details1 span {
            font-size: 55px;
            height: 100%;
            display: flex;
            color: white;
            justify-content: center;
            align-items: center;
        }

        #details1,
        #details2,
        #details3,
        #details4,
        #details5 {
            display: flex;
            align-items: center;
            justify-content: center;

        }

        #details1 input,
        #details2 input,
        #details3 input,
        #details5 input,
        #details6 input {
            height: 30px;
            width: 300px;
            font-size: 17px;
            border: none;
            border-radius: 40px;
            padding: 10px;
            padding-left: 20px;
            outline: none;
        }
        

        #details4 input {
            height: 50px;
            width: 100px;
            margin: 25px;
            font-size: 17px;
            border-radius: 20px;
            border: none;
            cursor: pointer;
            transition-duration: 0.2s;
        }
        

        #details4 input:hover {
            scale: 1.04;
        }

        legend {
            font-size: 35px;
        }

        fieldset {
            border: 3px solid black;
        }
        h1
        {
        margin-right:10px;}
    </style>
</head>

<body>
    <form action="Register" method="post">
        <section id="container">
            <fieldset>
                <legend>REGISTRATION PAGE</legend>
                <div id="login-box">

                    <div class="details" id="details1">
                        <input type="text" name="ufname" id="" placeholder="First Name" required>
                    </div>
                    <div class="details" id="details5">
                        <input type="tel" name="ulname" id="" placeholder="Last Name" required>
                    </div>
                    <div class="details" id="details2">

                        <input type="tel" name="uphone" id="" placeholder="Phone Number" >
                    </div>
                    <div class="details" id="details3">

                        <input type="email" name="uemail" id="" placeholder="Email" required>
                    </div>
                    <div class="details" id="details3">
                    	<input type="password" name="upassword"  placeholder="Password" required>
                    </div>
                   
                    <div class="details" id="details5">
                    <h1>Languege </h1>
                   c<input type="checkbox" name="languege" value="c">
                   java<input type="checkbox" name="languege" value="java">
                   c++<input type="checkbox" name="languege" value="c++"> 
                    
                    </div>
                    <div class="details" id="details4">
                        <input type="submit" value="Register">

                    </div>
            </fieldset>
            </div>
        </section>
    </form>
</body>
</html>