<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/Guest.master" AutoEventWireup="true" CodeFile="DTH1.aspx.cs" Inherits="Guest_DTH1" %>

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
                                <div id="step7" class="tab-pane active" role="tabpanel">
                                    <div class="mobile-grids">
                                        <div class="mobile-left text-center">
                                            <img alt="" src="../images/dth.png" />
                                        </div>
                                        <div class="mobile-right">
                                            <h4>What&#39;s your DTH Number?</h4>
                                            <div class="dth-rchge">
                                                <asp:TextBox ID="TextBox1" onblur="if (this.value == '') {this.value = 'Enter Smart Card Number';}" onfocus="this.value = '';" runat="server"></asp:TextBox>
                                                <%--<input onblur="if (this.value == '') {this.value = 'Enter Smart Card Number';}" onfocus="this.value = '';" required="" type="text" value="Enter Smart Card Number" />--%>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="list-inline pull-right">
                                        <li>
                                           
                                              <asp:Button ID="prev1" CssClass="mob-btn btn btn-default prev-step" Text="Previous" runat="server" OnClick="prev1_Click"  />
                                            <%-- <button class="mob-btn btn btn-default prev-step" type="button">
                                                Previous
                                            </button>--%>
                                        </li>
                                        <li>
                                          
                                            <asp:Button ID="next" CssClass="mob-btn btn btn-primary next-step" Text="Next" runat="server" OnClick="next_Click"  />
                                              <%--<button class="mob-btn btn btn-primary next-step" type="button">
                                                Next
                                            </button>--%>
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

