<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Datacard2.aspx.cs" Inherits="Guest_Datacard2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal-body">
        <section>
            <div class="wizard">
                <div class="tab-content">
          
                    <div id="step17" class="tab-pane active" role="tabpanel">
                        <div class="mobile-grids">
                            <div class="mobile-left text-center">
                                <img alt="" src="../images/landline.png" />
                            </div>
                            <div class="mobile-right ">
                                <h4>How much did you wish to pay?</h4>
                                <div class="dth-rchge">
                                    
                                    <asp:TextBox ID="Txtpay" onblur="if (this.value == '') {this.value = '100';}" onfocus="this.value = '';" runat="server"></asp:TextBox>
                                   
                                    
                                </div>
                            </div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li>

                                <asp:Button ID="btnprev1" CssClass="mob-btn btn btn-default prev-step" runat="server" Text="Previous" OnClick="btnprev1_Click" />
                               
                            </li>
                            <li>

                                <asp:Button ID="btnfnsh1" CssClass="mob-btn btn btn-primary btn-info-full" runat="server" Text="Finish" OnClick="btnfnsh1_Click" />
                              
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

