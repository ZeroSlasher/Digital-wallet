<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Mobile2.aspx.cs" Inherits="Guest_Mobile2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="step17" class="tab-pane active" role="tabpanel">
        <div class="mobile-grids">
            <div class="mobile-left text-center">
                <img alt="" src="../images/mobile.png" />
            </div>
            <div class="mobile-right ">
                <h4>Which operator?</h4>
                <ul class="rchge-icons">
                    <li><a href="#">Airtel</a></li>
                    <li><a href="#">Aircel</a></li>
                    <li><a href="#">Bsnl</a></li>
                    <li><a href="#">Idea</a></li>
                    <li><a href="#">Vodafone</a></li>
                    <li><a href="#">Reliance</a></li>
                    <li><a href="#">Uninor</a></li>
                </ul>
                <div class="section_room">
                    <asp:DropDownList ID="ddl_country" CssClass="frm-field required" runat="server">
                        

                    </asp:DropDownList>
                    
                </div>
            </div>
        </div>
       <ul class="list-inline pull-right">
                <li>
                    <asp:Button ID="btn_pre" runat="server" CssClass="mob-btn btn btn-primary next-step"  Text="Previous" OnClick="btn_pre_Click" />
                        
                    
                </li>
                <li>
                    <asp:Button ID="btn_next" runat="server" CssClass="mob-btn btn btn-primary next-step"  Text="Next" OnClick="btn_next_Click" />
                        
                     
                </li>
            </ul>
    </div>
   
</asp:Content>

