<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest.master" AutoEventWireup="true" CodeFile="DTH.aspx.cs" Inherits="Guest_DTH" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button aria-label="Close" class="close" data-dismiss="modal" type="button">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">
                <section>
                    <div class="wizard">
                        
                            <div class="tab-content">
                                <div id="step6" class="tab-pane active" role="tabpanel">
                                    <div class="mobile-grids">
                                        <div class="mobile-left text-center">
                                            <img alt="" src="../images/dth.png" />
                                        </div>
                                        <div class="mobile-right ">
                                            <h4>Pay your DTH bill. Which operator?</h4>
                                            <div class="section_room">
                                                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="list-inline pull-right">
                                        <li>

                                            <asp:Button ID="Button1" CssClass="mob-btn btn btn-primary next-step" runat="server" Text="Next" OnClick="Button1_Click" />
                                        </li>
                                    </ul>
                                </div>
                                
                                <div class="clearfix">
                                </div>
                            </div>
                       
                    </div>
                </section>
            </div>
        </div>
    </div>
</asp:Content>

