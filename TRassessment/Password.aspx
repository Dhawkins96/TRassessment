<%@ Page Title="Password" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="TRassessment.Password" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <!--Password Checker-->
    <div class="w3-row w3-padding-64">
        <div class="w3-twothird w3-container" >
            <br />
            <!-- html for password checker-->
            <h1> Password Strength Checker</h1>
            <label> Enter Password:&nbsp;&nbsp;     </label> <input type="password" id="password" /><br/>
            <label id="lblMessage"></label>
            <br /><br /><input type="checkbox" onclick="myFunction()">Show Password<br /><br/>
            <progress max="100" value="0" id="strength" style="width: 377px" />
            <br /><br />

            <!--script for password checker-->
            <script type="text/javascript">
                var pass = document.getElementById("password");
                var lbl = document.getElementById("lblStrength");

                pass.addEventListener('keyup', function () {
                    checkPassword(pass.value)
                });
                // this function check the password and if it matches the elements it then adds 1 to strength and ticks the check box
                function checkPassword(password) {
                    var strengthBar = document.getElementById("strength");
                    var strength = -1;
                    var lbl = "";
                    if (password.match(/[a-z]+/)) {
                        strength += 1
                        document.getElementById("checkLilAlpha").checked = true;
                    } else {
                        document.getElementById("checkLilAlpha").checked = false;
                    }
                    if (password.match(/[A-Z]+/)) {
                        strength += 1
                        document.getElementById("checkBigAlpha").checked = true;
                    } else {
                        document.getElementById("checkBigAlpha").checked = false;
                    }
                    if (password.match(/[0-9]+/)) {
                        strength += 1
                        document.getElementById("checkNum").checked = true;
                    } else {
                        document.getElementById("checkNum").checked = false;
                    }
                    if (password.match(/[!@£$%^&*()<>#~?"]+/)) {
                        strength += 1
                        document.getElementById("checkSpecChar").checked = true;
                    } else {
                        document.getElementById("checkSpecChar").checked = false;
                    }
                    if (password.length > 6) {
                        strength += 1
                        document.getElementById("checkLength").checked = true;
                    } else {
                        document.getElementById("checkLength").checked = false;
                    } //resets everything back to 0 or unchecked
                    if (password.length === 0) {
                        document.getElementById("checkLilAlpha").checked = false;
                        document.getElementById("checkBigAlpha").checked = false;
                        document.getElementById("checkNum").checked = false;
                        document.getElementById("checkSpecChar").checked = false;
                        document.getElementById("checkLength").checked = false;

                        strengthBar.value = 0;
                        pass.style.background = "White";
                    }
                    // switch statement to change the textbox/Hue lights/Label and increase the progress bar
                    switch (strength) {
                        case 0:
                            strengthBar.value = 20;
                            pass.style.backgroundColor = "Maroon";
                            lbl = "Very Weak";
                           
                            break;
                        case 1:
                            strengthBar.value = 40;
                            pass.style.backgroundColor = "Red";
                            lbl = "Weak";
                            break;
                        case 2:
                            strengthBar.value = 60;
                            pass.style.backgroundColor = "Orange";
                            lbl = "Good";
                            break;
                        case 3:
                            strengthBar.value = 80;
                            pass.style.backgroundColor = "#91FB6E";
                            lbl = "Strong";
                            break;
                        case 4:
                            strengthBar.value = 100;
                            pass.style.backgroundColor = "#3FFF00";
                            lbl = "Very Strong";
                    }

                    document.getElementById("lblMessage").innerHTML = lbl;
                }
                // function to show and hide password
                function myFunction() {
                    var x = document.getElementById("password");
                    if (x.type === "password") {
                        x.type = "text";
                    } else {
                        x.type = "password";
                    }
                }
               
            </script>
        </div>
        
    </div>
    <!-- Checkboxes to help improve the password strength-->
    <div id="content-wrap">
        <p>What you should include to make a very strong password!</p>
        <label>a - z   </label> <input id="checkLilAlpha" type="checkbox" onclick="return false;" /><br />
        <label>A - Z   </label> <input id="checkBigAlpha" type="checkbox" onclick="return false;" /><br />
        <label>0 - 9   </label> <input id="checkNum" type="checkbox" onclick="return false;" /><br />
        <label>Any Special Characters   </label> <input id="checkSpecChar" type="checkbox" onclick="return false;" /><br />
        <label>More than 7 Characters   </label> <input id="checkLength" type="checkbox" onclick="return false;" /><br />

    </div>
    
</asp:Content>
