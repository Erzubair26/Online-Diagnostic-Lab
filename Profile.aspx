<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.User.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div>
             <asp:Image ID="imgProfile" Width="300" Height="200" runat="server" />
          <div>
        <table class="table table-condensed table-hover">
            <tr>
                <td>Name</td>
                <td><asp:Label ID="lblName" runat="server" /></td> 
                <td>Parentage</td>
                <td><asp:Label ID="lblParentage" runat="server" /></td> 
            </tr>
             <tr>
                <td>Gender</td>
                <td><asp:Label ID="lblGender" runat="server" /></td> 
                <td>Address</td>
               <td><asp:Label ID="lblAddress" runat="server" /></td> 
            </tr>
             <tr>
                
                <td>ContactNo</td>
               <td><asp:Label ID="lblContactNo" runat="server" /></td> 
            </tr>
             <tr>
                <td>Email</td>
                <td><asp:Label ID="lblEmail" runat="server" /></td> 
                   <td>UserName</td>
                <td><asp:Label ID="lblUserName" runat="server" /></td> 
              
            </tr>
         
           <tr>

               <td>

                   <asp:Button Text="Edit" runat="server"  ID="btnEdit" OnClick="btnEdit_Click"/>

               </td>


           </tr>
            
            
        </table>
    </div>



    </div>

</asp:Content>
