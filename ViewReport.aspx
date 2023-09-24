<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="ViewReport.aspx.cs" Inherits="ONLINEDIAGNOSTICLAB.User.ViewReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">

       <div class="col-md-12">
       <div runat="server" id="printDiv">
        <table class="table table-condensed table-bordered table-hover text-center">

            <tr>

                <td colspan="3">
                    <div class="jumbotron">
                    <h3>Govt Shopian Hospital</h3>
                    <p>main town shopian j&K</p>
                        <p>989898989, 989898967676</p>
                        </div>

                </td>

            </tr>



            <tr>
                <td>Test::
                    <asp:Label ID="lblTest" CssClass="form-control" runat="server" /></td>
           
                <td>Name::
                    <asp:Label ID="lblName" CssClass="form-control" runat="server" /></td>
            
                <td>Parentage::
                    <asp:Label ID="lblParent" CssClass="form-control" runat="server" /></td>
            </tr>
             <tr>
                <td>Gender::
                    <asp:Label ID="lblGender" CssClass="form-control" runat="server" /></td>
           
                <td>Address::
                    <asp:Label ID="lblAddress" CssClass="form-control" runat="server" /></td>
            
                <td>ContactNo::
                    <asp:Label ID="lblContactNo" CssClass="form-control" runat="server" /></td>
            </tr>
             <tr>
                <td>Email::
                    <asp:Label ID="lblEmail" CssClass="form-control" runat="server" /></td>
            
                <td>Age::
                    <asp:Label ID="lblAge" CssClass="form-control" runat="server" /></td>
            
                <td>Test Date::
                    <asp:Label ID="lblTestDate" CssClass="form-control" runat="server" /></td>
            </tr>
            <tr>
                <td>Ref By</td>
                <td>
                    <asp:Label ID="lblRefBy" CssClass="form-control" runat="server" /></td>
            </tr>
</table>

           <table class="table table-bordered table-hover">
            <tr>
                <th>Min Value</th>
                <th>Max Value</th>
                <th>Normal</th>
                <th>Unit</th>
                 <th>Result</th>
                <th>Test Description</th>
            </tr>

             <tr>

                  <td><asp:Label ID="lblMinValue" runat="server" /></td>

               
                <td>
                    <asp:Label ID="lblMaxValue" runat="server" /></td>
                  <td>
                    <asp:Label ID="lblNormal" runat="server" /></td>
           
                
                <td>
                    <asp:Label ID="lblUnit" runat="server" /></td>
            
               
                <td>
                    <asp:Label ID="lblResult" runat="server" /></td>
           
                
                <td>
                    <asp:Label ID="lblTestDesc" runat="server" /></td>
            </tr>

               <tr>

                   <td colspan="3"><asp:Button Text="Print" OnClientClick="return printPage();" runat="server" /></td>

               </tr>

</table>
       
      </div>
       



           </div>

   </div>
    <script type="text/javascript">
         function printPage()
        {
            var printArea = document.getElementById('<%= printDiv.ClientID %>');
            var printWindow = window.open('', '', 'height = 500, width = 500');
            printWindow.document.write('<html><head><title>Print Page</title></head>');
            printWindow.document.write('<body>');
            printWindow.document.write(printArea.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
            return false;
        }
    </script>
       
</asp:Content>
