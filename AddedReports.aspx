<%@ Page Title="" Language="C#" MasterPageFile="~/LabTechnition/Labtec.Master" AutoEventWireup="true" CodeBehind="AddedReports.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.LabTechnition.AddedReports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="col-md-12">


    <div>
        <table>
            <tr>
                <td>
                    <asp:TextBox runat="server" ID="txtSearchName" Placeholder="Search By Name" /></td>

                <td>
                    <asp:Button Text="Search" ID="btnSearch" runat="server" OnClick="btnSearch_Click" /></td>
            </tr>
        </table>
    </div>

     <div class="col-md-12">

        <asp:GridView runat="server" ID="gvAddedReports" OnRowCommand="gvAddedReports_RowCommand"   AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">

            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

            <Columns>

                 <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Parentage">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Parentage") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="Gender">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Gender") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                  <asp:TemplateField HeaderText="ContactNo">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("ContactNo") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                        <asp:HiddenField runat="server" ID="hdnTestId" Value='<%# Eval("TestId") %>' />
                        <asp:HiddenField runat="server" ID="hdnBID" Value='<%# Eval("BookingId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>


                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton Text="View Report" ID="lkViewReport"   CommandName="ViewCommand" CommandArgument='<%# Eval("UserId") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
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







</div>


    </div>











</asp:Content>
