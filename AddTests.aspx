<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddTests.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.Admin.AddTests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="col-md-12">
        <table>
            <tr>
                <td>Test</td>
                <td>
                    <asp:TextBox runat="server" ID="txtTest"  /></td>
            </tr>
            <tr>
                <td>Rate</td>
                <td>
                    <asp:TextBox runat="server" ID="txtRate"  /></td>
            </tr>
            <tr>
                <td>Min Value</td>
                <td>
                    <asp:TextBox runat="server" ID="txtMin"  /></td>
            </tr>
            <tr>
                <td>Max Value</td>
                <td>
                    <asp:TextBox runat="server" ID="txtMaxValue"  /></td>
            </tr>
             <tr>
                <td>Normal</td>
                <td>
                    <asp:TextBox runat="server" ID="txtNormal"  /></td>
            </tr>
            <tr>
                <td>Unit</td>
                <td>
                    <asp:TextBox runat="server" ID="txtUnit"  /></td>
            </tr>
            <tr>
                <td>Note</td>
                <td>
                    <asp:TextBox runat="server" ID="txtNote"  /></td>
            </tr>
           
            <tr>
                <td>
                    <asp:Button Text="Submit" ID="btnAdd" OnClick="btnAdd_Click" runat="server" />
                </td>
            </tr>
           
        </table>
        <div>
             <asp:Label ID="lblStatus" Font-Bold="true" runat="server" />
        </div>
    </div>
    <br /><br /><br /><br />
    <div class="col-md-12">
        <asp:GridView ID="gvTests" OnRowCommand="gvTests_RowCommand" EmptyDataText="No Record Found" AutoGenerateColumns="False" Width="100%" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                         <asp:LinkButton Text="Delete" ID="lbDelete" CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('are you sure you want to delete')" CommandName="DeleteCommand" runat="server" />
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Test">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Test") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Rate">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Rate") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Min Value">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("MinValue") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Max Value">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("MaxValue") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Normal">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Normal") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Unit">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Unit") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                 <asp:TemplateField HeaderText="Note">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Note") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>    
    </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br />
   
</asp:Content>
