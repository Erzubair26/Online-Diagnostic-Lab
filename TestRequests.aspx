<%@ Page Title="" Language="C#" MasterPageFile="~/LabTechnition/Labtec.Master" AutoEventWireup="true" CodeBehind="TestRequests.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.LabTechnition.TestRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

    <asp:GridView ID="gvTestReq" AutoGenerateColumns="false" runat="server" CellPadding="4" ForeColor="#333333" 
        OnRowCommand="gvTestReq_RowCommand" GridLines="None" Width="100%">
        <Columns>
             <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                         <asp:LinkButton Text="Accept" ID="lbApprove"  CommandArgument='<%# Eval("BId") %>' CommandName="AcceptCommand" runat="server" />
                         
                        
                        <asp:LinkButton Text="Reject" ID="lbReject"   CommandArgument='<%# Eval("BId") %>' CommandName="RejectCommand" runat="server" />
                        
                        <asp:LinkButton Text="Cancel" ID="lbCancel" Visible="false" CommandName="CancelCommand" runat="server" />
                        
                        <asp:LinkButton Text="Delete" ID="lbDelete" Visible='<%#  Convert.ToInt32(Eval("Status"))==2?true :false %>' CommandName="DeleteCommand" CommandArgument='<%# Eval("BId") %>' OnClientClick='return confirm("Are you sure you want to delete")' runat="server" />
                        <asp:TextBox runat="server" ID="txtReason" Visible="false" />
                        <asp:LinkButton Text="Send" ID="lbAcceptReason" Visible="false" CommandArgument='<%# Eval("BId") %>' CommandName="AddAcceptReasonCommand" runat="server" />
                      <asp:LinkButton Text="Send" ID="lbRejectReason" Visible="false" CommandArgument='<%# Eval("BId") %>' CommandName="AddRejectReasonCommand" runat="server" />
                       
                        
                      
                        </ItemTemplate>
                </asp:TemplateField>
           
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:HiddenField runat="server" ID="hdnBid" />
                        <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                    </ItemTemplate>

                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Gender") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Age">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Age") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

              <asp:TemplateField HeaderText="Test">
                    <ItemTemplate>
                        <%--<asp:HiddenField  runat="server" ID="testId" Value='<%# Eval("TestId") %>'      />--%>
                        <asp:Label Text='<%# Eval("Test") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

             <asp:TemplateField HeaderText="Booking Date">
                    <ItemTemplate>
                        <asp:Label Text='<%#  Eval("BookingDate").ToString()==""?"Date not Mention":(Convert.ToDateTime(Eval("BookingDate"))).ToLongDateString() %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>



              <asp:TemplateField HeaderText="Appointment Date">
                    <ItemTemplate>
                        <asp:Label Text='<%#Eval("AppDate").ToString()==""?"Date not Mention":(Convert.ToDateTime(Eval("AppDate"))).ToLongDateString() %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>


          <%--    <asp:TemplateField HeaderText="RefBy">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("RefBy") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>--%>


              <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label Text='<%# BusinessObject.BookBO.GetStatus(Eval("Status").ToString()) %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
           

              <asp:TemplateField >
                    <ItemTemplate>
                        <asp:LinkButton Text="View More" ID="lbViewMore" CommandName="ViewCommand" CommandArgument='<%# Eval("BId")   %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

           
                
        </Columns>       
        
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        
    </asp:GridView>
        </div>
</asp:Content>
