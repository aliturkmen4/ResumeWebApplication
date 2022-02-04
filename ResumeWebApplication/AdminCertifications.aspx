<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminCertifications.aspx.cs" Inherits="ResumeWebApplication.AdminCertifications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

    <table class="table table-bordered">
        
        <tr>
            <th>ID</th>
            <th>Certificate</th>
            <th>Transactions</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("ID") %></th>
                        <td><%#Eval("Certificate") %></td>                       
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminCertificationsDelete.aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminCertificationsUpdate.aspx?ID="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Update</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

         <asp:HyperLink NavigateUrl= "~/AdminCertificationsAdd.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Add Certificate</asp:HyperLink>
         </form>

</asp:Content>
