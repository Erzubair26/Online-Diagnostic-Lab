<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Appointments.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.User.Appointments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <asp:GridView ID="gvAppointment"  OnRowCommand="gvAppointment_RowCommand"  AutoGenerateColumns="false" EmptyDataText="No Record Found" runat="server" CellPadding="3" GridLines="Vertical" Width="101%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" Height="317px">
        
        <Columns>
            <asp:TemplateField  HeaderText="Test">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Test") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField  HeaderText="Booking Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("BookDate") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
              <asp:TemplateField  HeaderText="Appointment Date">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("AppDate") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField  HeaderText="RefBy">
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("RefBy") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>

             <asp:TemplateField  HeaderText="Status">
                <ItemTemplate>
                    <asp:Label Text='<%#  BusinessObject.BookBO.GetStatus(Eval("Status").ToString()) %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField  >
                <ItemTemplate>
                    <asp:Label Text='<%# Eval("Reason") %>' runat="server" />
                    <asp:HiddenField runat="server" ID="hdnBID" Value='<%# Eval("Id") %>' />
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField  >
                <ItemTemplate>
                    <asp:LinkButton Text="View Report" ID="lkViewReport" CommandName="ViewCommand" Visible='<%#  Convert.ToInt32(Eval("Status"))==4?true :false %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        
        
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
        
    </asp:GridView>
        </div>

  
</asp:Content>
