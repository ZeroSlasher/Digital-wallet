<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Mobile1.aspx.cs" Inherits="Guest_Mobile1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="tab-content">
        
        <div id="step16" class="tab-pane active" role="tabpanel">
            <div class="mobile-grids">
                <div class="mobile-left text-center">
                    <img alt="" src="../images/mobile.png" />
                </div>
                <div class="mobile-right ">
                    <h4>Prepaid or Postpaid?</h4>
                    <div class="radio-btns">
                        <div class="swit">
                            <asp:RadioButtonList ID="rbtn_pre_post" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">Prepaid</asp:ListItem>
                                <asp:ListItem>Postpaid</asp:ListItem>
                            </asp:RadioButtonList>
                             
                            
                        </div>
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
        
        <div class="clearfix">
        </div>
    </div>
</asp:Content>

