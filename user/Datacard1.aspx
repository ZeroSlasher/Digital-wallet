<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Datacard1.aspx.cs" Inherits="Guest_Datacard1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal-body">
        <section>
            <div class="wizard">
                <div class="tab-content">
                 
                    <div id="step16" class="tab-pane active" role="tabpanel">
                        <div class="mobile-grids">
                            <div class="mobile-left text-center">
                                <img alt="" src="../images/landline.png" />
                            </div>
                            <div class="mobile-right">
                                <h4>Telephone Number</h4>
                                <div class="dth-rchge">

                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

                                  
                                    
                                </div>
                            </div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li>

                                <asp:Button ID="btnprev2" CssClass="mob-btn btn btn-default prev-step" runat="server" Text="Previous" OnClick="btnprev2_Click" />
                                
                            </li>
                            <li>

                                <asp:Button ID="btnnxt1" CssClass="mob-btn btn btn-primary next-step" runat="server" Text="Next" OnClick="btnnxt1_Click" />
                                
                            </li>
                        </ul>
                    </div>
                
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </section>
    </div>
</asp:Content>

