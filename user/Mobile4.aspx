<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Mobile4.aspx.cs" Inherits="Guest_Mobile4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="step19" class="tab-pane active" role="tabpanel">
        <div class="mobile-grids">
            <div class="mobile-left text-center">
                <img alt="" src="../images/mobile.png" />
            </div>
            <div class="mobile-right ">
                <h4>How Much To Recharge?</h4>
                <div class="mobile-rchge">
                   <asp:TextBox ID="txtamt" runat="server" CssClass="mobile-text" onblur="if (this.value == '') {this.value = '10';}" onfocus="this.value = '';" required="" type="text" value="10" ></asp:TextBox>
                </div>
                <div class="mobile-rchge">
                    <%--<a href="single.html">VIEW PLANS</a>--%>
                </div>
                <div class="clearfix">
                </div>
            </div>
        </div>
        <ul class="list-inline pull-right">
             <li>
                    <asp:Button ID="btn_pre" runat="server" CssClass="mob-btn btn btn-primary next-step"  Text="Previous" OnClick="btn_pre_Click" />
                        
                    
                </li>
                <li>
                    <asp:Button ID="btn_next" runat="server" CssClass="mob-btn btn btn-primary next-step"  Text="Finish" OnClick="btn_next_Click" />
                        
                     
                </li>
        </ul>
    </div>
</asp:Content>

