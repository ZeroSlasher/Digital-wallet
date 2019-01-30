<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="company_payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        border-style: none;
        border-color: inherit;
        border-width: 2px;
        background: rgb(28, 184, 65);
        text-transform: uppercase;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel3" runat="server" Height="159px" Width="548px">
        <table class="auto-style16">
            <tr>
                <td class="auto-style29" colspan="2">Enter Debit Card Number:</td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtdebitno" runat="server" onblur="if (this.value == '') {this.value = 'Name';}" onfocus="this.value = '';"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdebitno" ErrorMessage="*Mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
                    &nbsp; </td>
                <td class="auto-style19">
                    <asp:Image ID="Image1" runat="server" Height="37px" ImageUrl="~/images/logos_01.jpg" Width="120px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style28">Expiry Date:</td>
                <td class="auto-style31">
                    <asp:DropDownList ID="ddlmmdebit" runat="server" CssClass="textbox" Height="23px">
                        <asp:ListItem>MM</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlyydebit" runat="server" CssClass="textbox" Height="23px">
                        <asp:ListItem>YY</asp:ListItem>
                        <asp:ListItem Value="15">2015</asp:ListItem>
                        <asp:ListItem Value="16">2016</asp:ListItem>
                        <asp:ListItem Value="17">2017</asp:ListItem>
                        <asp:ListItem Value="18">2018</asp:ListItem>
                        <asp:ListItem Value="19">2019</asp:ListItem>
                        <asp:ListItem Value="20">2020</asp:ListItem>
                        <asp:ListItem Value="21">2021</asp:ListItem>
                        <asp:ListItem Value="22">2022</asp:ListItem>
                        <asp:ListItem Value="23">2023</asp:ListItem>
                        <asp:ListItem Value="24">2024</asp:ListItem>
                        <asp:ListItem Value="25">2025</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td  style="text-align: right; font-style: italic">CVV:
                    </td>
                <td  >
                    <asp:TextBox ID="txtcvvdebit" runat="server" onblur="if (this.value == '') {this.value = 'Name';}" onfocus="this.value = '';" OnTextChanged="txtcvvdebit_TextChanged"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtcvvdebit" ErrorMessage="enter cvv" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style28">&nbsp;</td>
                <td class="auto-style31">&nbsp;</td>
                <td style="text-align: right; font-style: italic">
                    <asp:Button ID="btndebitPay" runat="server" Height="40px" OnClick="btndebitPay_Click" Text="Pay Now" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td   colspan="2">
                    &nbsp;</td>
                <td  colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

