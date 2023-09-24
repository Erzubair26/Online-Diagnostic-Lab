<%@ Page Title="" Language="C#" MasterPageFile="~/LabTechnition/Labtec.Master" AutoEventWireup="true" CodeBehind="ViewBookingDetails.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.LabTechnition.ViewBookingDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Image ID="imgProfile" Width="500" Height="300" runat="server" />
    </div>
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
                <td>Age</td>
                <td><asp:Label ID="lblAge" runat="server" /></td> 
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
              
                   <td>Test</td>
                   <td><asp:Label ID="lblTest" runat="server" />
                        <asp:HiddenField runat="server" ID="hdnTestId"  />
                   </td>
                   
                     <td>BookingDate</td>
                     <td><asp:Label ID="lblBookingdate" runat="server" /></td> 

            </tr>
             <tr>
                 
                <td>Appointment Date</td>
                <td><asp:Label ID="lblAppointmentDate" runat="server" /></td> 
                 <td>RefBy</td>
                <td><asp:Label ID="lblRefBy" runat="server" /></td> 
              
            </tr>
             <tr>
                
                <td>Status</td>
               <td><asp:Label ID="lblStatus" runat="server" /></td> 
            </tr>
           
            
            
        </table>
    </div>
</asp:Content>
