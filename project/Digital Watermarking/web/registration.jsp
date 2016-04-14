<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>


<head>
<style>
p {
	text-align: right;
}
</style>
<script language="javascript" type="text/javascript">
            function randomString() {
                var chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz";
                var string_length = 8;
                var randomstring = '';
                for (var i = 0; i < string_length; i++) {
                    var rnum = Math.floor(Math.random() * chars.length);
                    randomstring += chars.substring(rnum, rnum + 1);
                }
                document.f1.randomfield.value = randomstring;
            }
            function fname()
            {
                f1.n1.value = ""
                //f1.n2.value="lastname"
            }
            function lname()
            {
                f1.n2.value = ""
                //f1.n1.value="firstname"
            }
            function lcheck()
            {
                t = f1.n4.value
                s = t.length
                if (s <= 3)
                    window.alert("password should be graterthan 3 characters")
            }
            function pcheck()
            {
                p = f1.n4.value
                q = f1.n5.value
                if (p != q)
                {
                    window.alert("please check the pasword")
                    f1.n5.value = ""
                }
            }

            function scheck()
            {

                a = f1.n1.value
                b = f1.n2.value
                c = f1.n3.value
                d = f1.n4.value
                e = f1.n5.value
                f = f1.n6.value
                if (a == " " || a == "firstname" || b == " " || b == "lastname")

                {
                    window.alert("fill in the details");
                    //document.f1.n1.backgroundcolor="red";
                    event.returnValue = false;
                }
                if (c == "" || d == "" || e == "" || f == "")
                {
                    window.alert("fill in the details");
                    event.returnValue = false;
                }
            }
            
function validation()
{
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i;
var b=emailfilter.test(document.form2.mailid.value);
if(b===false)
{
alert("Please Enter a valid Mail ID");
document.form2.mailid.focus();
return false;
}
}

        </script>
</head>
<body bgcolor="Aliceblue">
	<form name="f1" action="auth.jsp" onsubmit="return scheck()"
		method="get">
		<b>
			<h2>
				<center>REGISTRATION FORM
			</h2>
			</center>
		</b>
		<table align="center" border="1" cellspacing=7 cellpadding=8>
			>
			<tr>
				<td colspan="2" align="center"><b><h4>PERSONAL DETAILS</h4></b></td>
			</tr>
			<tr>
				<td><p>
						<b>Name</b>
					</p></td>
				<td><input type=text name="n1" value="firstname" required
					onclick="fname()" /> <input type=text name="n2" value="lastname"
					onclick="lname()" /></td>
			</tr>

			<tr>
				<td><p>
						<b>Gender</b>
					</p></td>
				<td><select><option>-select one-</option>
						<option>Female</option>
						<option>Male</option>
				</select></td>
			</tr>

			<tr>
				<td><p>
						<b>Country</b>
					</p></td>
				<td><select><option>America</option>
						<option>Afghanistan</option>
						<option>Australia</option>
						<option>Belgium</option>
						<option>Bangladesh</option>
						<option>Bhutan/option>
						<option>Canada</option>
						<option>Denmark</option>
						<option>Egypt</option>
						<option>France</option>

						<option>Germany</option>
						<option>Hongkong</option>
						<option>India</option>
						<option>Japan</option>
						<option>Kuwait</option>
						<option>Libya</option>
						<option>Malaysia</option>
						<option>Nepal</option>
						<option>Oman</option>
						<option>Pakistan</option>
						<option>Qatar</option>
						<option>Russia</option>
						<option>Singapore</option>
						<option>Thailand</option>
						<option>United States</option>
						<option>Vatican City</option>
						<option>Wallis</option>
						<option>Yemen</option>
						<option>Zimbabwe</option>

				</select></td>
			</tr>
			<br>

			<tr>
				<td colspan="2" align="center"><h4>SELECT USERNAME AND
						PASSWORD</h4></td>
			</tr>
			<tr>
				<td>
					<p>
						<b>Username</b>
					</p>
				</td>
				<td><input type=email name="email" onblur="validation()" /> <input
					type=submit value="Check" /></td>
			</tr>

			<tr>
				<td><p>
						<b>Password</b>
					</p></td>
				<td><input id="field_pwd1"
					title="Password must contain at least 6 characters, including UPPER/lowercase and numbers."
					type="password" required
					pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="password"
					onblur="lcheck()" />
					</p></td>

			</tr>

			<tr>
				<td><p>
						<b>Re-type Password</b>
					</p></td>
				<td><input id="field_pwd2"
					title="Please enter the same Password as above." type="password"
					required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" name="n5"
					onblur="pcheck()" /></td>>
				</p>


			</tr>
			<br>
			<br>

			<tr>
				<td colspan="2" align="center"><h4>IF U FORGOT YOUR
						PASSWORD OR ID</h4></td>
			</tr>

			<tr>
				<td><p>
						<b>Security Question</b>
					</p></td>
				<td><select name="q"><option>-select one-</option>
						<option>Your Nationality?</option>
						<option>Favorite pasttime?</option>
						<option>Pet's name?</option>
						<option>Father's Profession?</option>
				</select></td>
			</tr>

			<tr>
				<td><p>
						<b>Your Answer</b>
					</p></td>
				<td><input type=text name="n6" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><h4>Key Generation</h4></td>
			</tr>
			<tr>
				<td>
					<p>
						<b>Key</b>
					</p>
				</td>
				<td><input type="text" name="randomfield" value="" /> <input
					type="button" value="Generate Key" onclick="randomString();" /></td>
			</tr>

		</table>
		<br> <b><center>
				<input type=submit value="CREATE MY ACCOUNT" />
			</center></b>
	</form>
</body>
</html>

</form>
</center>
</body>
</html>
