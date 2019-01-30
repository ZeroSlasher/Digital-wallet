<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Guest_Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal-body modal-spa">
        <div class="login-grids">
            <div class="login">
                <div class="login-left">
                    <ul>
                        <li><a class="fb" href="#">Sign in with Facebook</a></li>
                        <li><a class="goog" href="#">Sign in with Google</a></li>
                        <li><a class="linkin" href="#">Sign in with Linkedin</a></li>
                    </ul>
                </div>
                <div class="login-right">
                    
                        <h3>Create your account </h3>
                        <asp:TextBox ID="txtname" runat="server" onblur="if (this.value == '') {this.value = 'Name';}" onfocus="this.value = '';" required="" type="text" value="Name" ></asp:TextBox>
                        <asp:TextBox ID="txtoccupation" runat="server"  onblur="if (this.value == '') {this.value = 'Occupation';}" onfocus="this.value = '';" required="" type="text" value="Occupation" ></asp:TextBox>
                        <asp:TextBox ID="txtemail" runat="server"  onblur="if (this.value == '') {this.value = 'Email id';}" onfocus="this.value = '';" required="" type="text" value="Email id" ></asp:TextBox>
                        <asp:TextBox ID="txtmobile" runat="server"  onblur="if (this.value == '') {this.value = 'Mobile number';}" onfocus="this.value = '';" required="" type="text" value="Mobile number" ></asp:TextBox>
                        <asp:TextBox ID="txtpassword" runat="server"  onblur="if (this.value == '') {this.value = 'Password';}" onfocus="this.value = '';" required="" TextMode="Password" value="Password" ></asp:TextBox>
                        <asp:TextBox ID="txtcpwd" runat="server"  onblur="if (this.value == '') {this.value = 'Password';}" onfocus="this.value = '';" required="" TextMode="Password" value="Password" ></asp:TextBox>
                        <asp:Button ID="btn_submit" runat="server" Text="CREATE ACCOUNT"/>
                        
                     
                </div>
                <div class="clearfix">
                </div>
            </div>
            <p>
                By logging in you agree to our <span>Terms and Conditions</span> and <span>Privacy Policy</span></p>
        </div>
    </div>
</asp:Content>

