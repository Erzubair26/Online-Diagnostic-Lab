<%@ Page Title="" Language="C#" MasterPageFile="~/LabTechnition/Labtec.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.LabTechnition.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div>

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

                   <asp:Button Text="Save" runat="server"  ID="btnEdit" OnClick="btnEdit_Click"/>

               </td>


           </tr>
            
            
        </table>
    </div>



    </div>




















</asp:Content>
