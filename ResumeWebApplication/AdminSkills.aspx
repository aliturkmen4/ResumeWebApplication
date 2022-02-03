<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminSkills.aspx.cs" Inherits="ResumeWebApplication.AdminSkills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">

    <table class="table table-bordered">
        
        <tr>
            <th>ID</th>
            <th>Skills</th>
            <th>Transactions</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <th><%#Eval("ID") %></th>
                        <td><%#Eval("Skill") %></td>                       
                        <td>
                            <asp:HyperLink NavigateUrl='<%# "AdminSkillsDelete.aspx?ID="+Eval("ID") %>' ID="HyperLink1" runat="server" CssClass="btn btn-danger">Delete</asp:HyperLink>
                            <asp:HyperLink NavigateUrl='<%# "AdminSkillsUpdate.aspx?ID="+Eval("ID") %>' ID="HyperLink2" runat="server" CssClass="btn btn-warning">Update</asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
    </table>

         <asp:HyperLink NavigateUrl= "~/AdminSkillsAdd.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Add Skill</asp:HyperLink>
         </form>

</asp:Content>
