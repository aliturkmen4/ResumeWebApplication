<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEducation.aspx.cs" Inherits="ResumeWebApplication.AdminEducation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    
     <form id="Form1" runat="server">

    <table class="table table-bordered">
        
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Subtitle</th>
            <th>Description</th>
            <th>GPA(Grade Avarage)</th>
            <th>Date</th>
            <th>Transactions</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("ID") %></th>
                        <td><%#Eval("Title") %></td>
                        <td><%#Eval("Subtitle") %></td>
                        <td><%#Eval("Description") %></td>
                        <td><%#Eval("GPA") %></td>
                        <td><%#Eval("Date") %></td>
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminEducationDelete.aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminEducationUpdate.aspx?ID="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Update</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

         <asp:HyperLink NavigateUrl= "~/AdminEducationAdd.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Add Education</asp:HyperLink>
         </form>
</asp:Content>
