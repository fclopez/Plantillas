<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="About.aspx.cs" Inherits="pruebaflopez.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Giros
    </h2>
    <asp:Panel ID="panelGiros" runat="server">
        <asp:GridView ID="gvw_giros" runat="server">
        </asp:GridView>
    </asp:Panel>
</asp:Content>
