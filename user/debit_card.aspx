<%@ Page Language="C#" AutoEventWireup="true" CodeFile="debit_card.aspx.cs" Inherits="OtherWebsites_debit_card" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style type="text/css">
        .auto-style1
        {
            width: 40%;
        }
        .auto-style2
        {
            color: #990000;
            font-style: italic;
            font-weight: bold;
        }
        .auto-style3
        {
            height: 40px;
            text-align: justify;
        }
        .auto-style5
        {
            height: 28px;
            font-weight: bold;
        }
        .auto-style6
        {
            color: #808000;
        }
        .auto-style7
        {
            height: 28px;
            font-weight: bold;
            color: #808000;
            text-align: right;
            width: 189px;
        }
        .auto-style9
        {
            height: 28px;
            text-align: center;
        }
        .auto-style10
        {
            height: 28px;
            text-align: right;
            font-weight: bold;
            color: #000080;
            width: 189px;
        }
        .auto-style11
        {
            text-align: right;
            height: 28px;
            width: 189px;
        }
        .auto-style12
        {
            height: 28px;
            text-align: left;
        }
        .auto-style14
        {
            height: 28px;
            text-align: left;
            font-weight: bold;
        }
        .auto-style16
        {
            color: #000080;
        }
        .auto-style17
        {
            width: 189px;
        }
        .auto-style18
        {
            height: 28px;
            text-align: center;
            width: 189px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style17">
                    <asp:Image ID="Image1" runat="server" Height="56px" ImageUrl="~/images/visa.png" Width="136px" />
                </td>
                <td>
                    <%--<asp:Image ID="Image2" runat="server" Height="77px" ImageUrl="~/user/images/canaraBank.png" Width="235px" />--%>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">Enter Your Password</td>
            </tr>
            <tr>
                <td class="auto-style3" colspan="2">Please enter your Verified by Visa* password in the field below to confirm your identity for this purchase. This information is not shared with the merchant.</td>
            </tr>
            <tr>
                <td class="auto-style7">Date:</td>
                <td class="auto-style5">
                    <asp:Label ID="lblDate" runat="server" CssClass="auto-style6"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Time:</td>
                <td class="auto-style5">
                    <asp:Label ID="lbltime" runat="server" style="color: #808000"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Charge:</td>
                <td class="auto-style14">
                    Rs.
                    <asp:Label ID="lblamount" runat="server" CssClass="auto-style16"></asp:Label>
                &nbsp;/-</td>
            </tr>
            <tr>
                <td class="auto-style10">Card Number:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblcnumber" runat="server" CssClass="auto-style16"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style12"></td>
            </tr>
            <tr>
                <td class="auto-style10">Name:</td>
                <td class="auto-style14">
                    <asp:Label ID="lblname" runat="server" CssClass="auto-style16"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Password:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtpwd" runat="server" Height="21px" TextMode="Password" Width="215px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpwd" ErrorMessage="*enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style18"></td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#999999" Text="Submit" OnClick="btnSubmit_Click1" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btncancel" runat="server" BackColor="#999999" Text="Cancel" OnClick="btncancel_Click1" />
                </td>
            </tr>
            <tr>
                <td class="auto-style18">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
