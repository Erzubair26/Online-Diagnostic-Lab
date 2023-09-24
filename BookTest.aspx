<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="BookTest.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.User.BookTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   
       
   <div class="container-fluid">
         <div class="col-md-12 top">
             <table>
                 <tr>
                     <td>
                         <asp:TextBox runat="server" ID="txtSearch" PlaceHolder="Search" /></td>
                <td>
                    <asp:Button Text="Search" ID="btnSearch" OnClick="btnSearch_Click" runat="server" /></td>
                     </tr>
             </table>
         </div>
      
   
   
          <div class="col-md-12">
        <asp:GridView ID="gvTests" OnRowCommand="gvTests_RowCommand" EmptyDataText="No Record Found" AutoGenerateColumns="False" Width="100%" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
            <Columns>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                         <asp:LinkButton Text="BookNow" ID="lblBookNow"  CommandArgument='<%# Eval("Id") %>' OnClientClick="return confirm('are you sure you want to Book')" CommandName="BookCommand" runat="server" />
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

              <%--   <asp:TemplateField HeaderText="Unit">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Unit") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>--%>

              <%--   <asp:TemplateField HeaderText="Note">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Note") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>--%>
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
    </div>

        <div runat="server" id="bookDiv" >
            <table class="table table-bordered table-hover">
                 <tr>
                    <td> RefBy:
                       
                   
                    
                        <asp:TextBox runat="server" ID="txtRefBy" />
                    </td>
                     <td>Age
                    
                        <asp:TextBox runat="server" ID="txtAge" />
            </td>
                    <td>Appointment Date
                        <asp:TextBox runat="server" ID="txtAppDate" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Submit" ID="btnSubmit" OnClick="btnSubmit_Click" runat="server" />
                    </td>
                </tr>
            </table>
            <asp:Label Font-Bold="true" ID="lblMessage" runat="server" />
        </div>
       



    <br />
    <br /><br />



     <script>
        $(document).ready(function () {
            $('#ContentPlaceHolder1_txtAppDate').datepicker({
                appendText: 'dd/mm/yyyy',
                dateFormat: 'dd/MM/yy',
                noOfMonths: '1',
                changeMonth: 'True',
                changeYear: 'True'
            });
        });

    </script>

</asp:Content>
