<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.Admin.ManageUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <table>
            <tr>
                <td><asp:TextBox runat="server" ID="txtSearchUserName" placeholder="UserName" /></td>
                  <td><asp:TextBox runat="server" ID="txtSearchName" placeholder="UserName" /></td>
                  <td><asp:TextBox runat="server" ID="txtSearchAdd" placeholder="UserName" /></td>
                <td>
                    <asp:DropDownList runat="server" ID="ddlRole" >
                        <asp:ListItem Text="Select Role" Value="-1" />
                        <asp:ListItem Text="Admin" Value="Admin" />
                        <asp:ListItem Text="Lab Technition" Value="Lab" />
                        <asp:ListItem Text="User" Value="User" />
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>
                <asp:Button Text="Search" ID="btnSearch" OnClick="btnSearch_Click" runat="server" /></td>
            </tr>
        </table>
    </div>
        <div>
        <asp:GridView ID="gvUsers" runat="server" OnRowCommand="gvUsers_RowCommand" AutoGenerateColumns="false" EmptyDataText="No Record Found" CellPadding="3" GridLines="Vertical" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>


                <asp:TemplateField>

                   <ItemTemplate>

                        <asp:LinkButton Text="Delete" OnClientClick="return confirm('Are you Sure You Want To Delete')" runat="server"  CommandName="DeleteCommand" CommandArgument='<%# Eval("Id") %>' />

                   </ItemTemplate>

                </asp:TemplateField>

              

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

                 <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Address") %>' runat="server" />
                    </ItemTemplate>
                  
                </asp:TemplateField>


                   <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                    </ItemTemplate>
                  
                </asp:TemplateField>


                 <asp:TemplateField HeaderText="PhoneNumber">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("ContactNo") %>' runat="server" />
                    </ItemTemplate>
                   
                </asp:TemplateField>


                 <asp:TemplateField HeaderText="UserName">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("UserName") %>' runat="server" />
                    </ItemTemplate>
                  
                </asp:TemplateField>

     
                 



                   <asp:TemplateField HeaderText="ImagePath">
                    <ItemTemplate>
                     
                        <asp:Image ImageUrl='<%# Eval("ImagePath") %>' Width="150" Height="120" runat="server" />
                    </ItemTemplate>
                  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Role">
                    <ItemTemplate>
                        <asp:Label ID="lblRoleName" Text='<%# Eval("RoleName") %>' runat="server" />
                    </ItemTemplate>
                  
                </asp:TemplateField>


            </Columns>



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
