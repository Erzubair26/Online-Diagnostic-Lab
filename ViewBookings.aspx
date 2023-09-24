<%@ Page Title="" Language="C#" MasterPageFile="~/LabTechnition/Labtec.Master" AutoEventWireup="true" CodeBehind="ViewBookings.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.LabTechnition.ViewBookings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div>

        <asp:GridView runat="server" ID="gvBookings"  OnRowCommand="gvBookings_RowCommand" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">

            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

            <Columns>

                 <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Name") %>' runat="server" />
                        <asp:HiddenField runat="server" ID="hdnBid" Value='<%# Eval("Bid") %>' />
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

                  <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Address") %>' runat="server" />
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
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Age">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Age") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="App Date">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("AppDate").ToString()==""?"Date not Mention":(Convert.ToDateTime(Eval("AppDate"))).ToLongDateString() %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>


                  <asp:TemplateField HeaderText="Ref By">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("RefBy") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

          
                  <asp:TemplateField HeaderText="Test">
                    <ItemTemplate>
                        <asp:Label Text='<%# (Eval("Test")) %>' runat="server" />
                       
                          <asp:HiddenField runat="server" ID="hdnTestId" Value='<%# Eval("TestId") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton Text="Add Report" ID="lkAddReport"  CommandName="ReportCommand" CommandArgument='<%# Eval("UserId") %>' runat="server" />
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
    <div id="divReport" runat="server" >
        <table class="table-condensed">
            <tr>
                <td>Result</td>
                <td>
                    <asp:TextBox runat="server" ID="txtResult" /></td>
            </tr>
             <tr>
                <td>Description</td>
                <td>
                    <asp:TextBox runat="server" ID="txtDescription" /></td>
            </tr>
            <tr>
                <td>
                    <asp:Button Text="Add" ID="btnAdd" OnClick="btnAdd_Click" runat="server" /></td>
            </tr>
        </table>
    </div>


















</asp:Content>
