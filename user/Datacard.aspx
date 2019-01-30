<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.master" AutoEventWireup="true" CodeFile="Datacard.aspx.cs" Inherits="Guest_Datacard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal-body">
        <section>
            <div class="wizard">
                 
                <div class="tab-content">
                    <div id="step15" class="tab-pane active" role="tabpanel">
                        <div class="mobile-grids">
                            <div class="mobile-left text-center">
                                <img alt="" src="../images/landline.png" />
                            </div>
                            <div class="mobile-right">
                                <h4>Pay your landline bill.Which Provider?</h4>

                                <div class="section_room">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>Airtel Landline</asp:ListItem>
                                        <asp:ListItem>Bsnl Landline</asp:ListItem>
                                        <asp:ListItem>MTNL Delhi</asp:ListItem>
                                    </asp:DropDownList>
                                     
                                </div>
                            </div>
                        </div>
                        <ul class="list-inline pull-right">
                            <li>

                                <asp:Button ID="Btnnxt2" CssClass="mob-btn btn btn-primary next-step" runat="server" Text="Next" OnClick="Btnnxt2_Click" />
                               
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

