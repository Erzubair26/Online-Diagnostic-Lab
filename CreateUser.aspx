<%@ Page Title="CreateUser" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.Admin.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
<div class="col-md-12">

    <h2 class="text-center">CreateUser</h2>

    <div class="col-md-6 col-md-push-3">

    <table class="table table-hover">
        <tr>
            <td> Name

                <asp:TextBox ID="txtName" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>Perentage

                <asp:TextBox ID="txtParentage" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
         <tr>
            <td>Gender

           <asp:DropDownList runat="server" ID="ddlGender" >
               <asp:ListItem Text="Select Gender" Value="-1" />
               <asp:ListItem Text="Male" Value="Male" />
               <asp:ListItem Text="Female" Value="Female" />
           </asp:DropDownList>

            </td>
        </tr>



        <tr>
            <td>Address

                <asp:TextBox ID="txtAddress" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
       

        <tr>
            <td>PhoneNumber

                <asp:TextBox ID="txtPhoneNnumber" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td>Email

                <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>
                Role
            </td>
            <td>
                <asp:DropDownList ID="ddlRole" runat="server">
                    <asp:ListItem Text="Select Role" Value="-1" />
                    <asp:ListItem Text="Admin" Value="Admin" />
                    <asp:ListItem Text="Lab Technition" Value="Lab" />
                </asp:DropDownList>
            </td>
        </tr>
         <tr>
            <td>UserName

                <asp:TextBox ID="txtUserName" cssclass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>Password

                <asp:TextBox ID="txtPassword" cssclass="form-control" runat="server"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button Text="Register" ID="btnRegister" OnClick="btnRegister_Click" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStatus" Font-Bold="true" runat="server" />
            </td>
        </tr>
        </table>

</div>

</div>



</div>




</asp:Content>
