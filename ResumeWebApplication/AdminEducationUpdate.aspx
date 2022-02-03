<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminEducationUpdate.aspx.cs" Inherits="ResumeWebApplication.AdminEducationUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>
                <asp:TextBox ID="TxtID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label>
                <asp:TextBox ID="TxtTitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="Subtitle"></asp:Label>
                <asp:TextBox ID="TxtSubtitle" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                <asp:TextBox ID="TxtDescription" runat="server" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label5" runat="server" Text="GPA"></asp:Label>
                <asp:TextBox ID="TxtGPA" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label4" runat="server" Text="Date"></asp:Label>
                <asp:TextBox ID="TxtDate" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-success" OnClick="Button1_Click"/>
            
        </div>
    </form>

</asp:Content>
