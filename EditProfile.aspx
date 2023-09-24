<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.User.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    
         <div>
             <asp:Image ID="imgProfile" Width="300" Height="200" runat="server" />
          </div>
              <div>
        <table class="table table-condensed table-hover">
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" /></td> 
                <td>Parentage</td>
                <td><asp:TextBox ID="txtParent" runat="server" /></td> 
            </tr>
             <tr>
                <td>Gender</td>
                <td>
                    <asp:DropDownList ID="ddlGender" runat="server">
                        <asp:ListItem Text="Select" Value="-1" />
                        <asp:ListItem Text="Male" Value="Male" />
                        <asp:ListItem Text="Female" Value="Female" />
                    </asp:DropDownList></td> 
                <td>Address</td>
               <td><asp:TextBox ID="txtAddress" runat="server" /></td> 
            </tr>
             <tr>
                
                <td>ContactNo</td>
               <td><asp:TextBox ID="txtContactNo" runat="server" /></td> 
            </tr>
             <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" /></td> 
                   <td>UserName</td>
                <td><asp:Label ID="lblUserName" runat="server" /></td> 
              
            </tr>
         
           <tr>
               <td>
                   Upload Image:
               </td>
               <td>
                   <asp:FileUpload  runat="server" ID="fileUpImage" />
               </td>
               <td>

                   <asp:Button Text="Save" runat="server"  ID="btnUpdate" OnClick="btnUpdate_Click"/>

               </td>


           </tr>
            
            
        </table>
                  <div>
                      <asp:Label ID="lblMsg" runat="server" />
                  </div>
    </div>


    </div>
</asp:Content>
