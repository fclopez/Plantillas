<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="pruebaflopez._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Oficinas
    </h2>
    <asp:Panel runat="server">
        <asp:GridView ID="gvw_oficinas" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="OFI_OFICINA_ID" DataNavigateUrlFormatString="/about.aspx?id={0}"
                    DataTextField="Oficina" HeaderText="Oficina" />
                    <asp:BoundField DataField="Corresponsal" HeaderText="Corresponsal" />
                    <asp:BoundField DataField="# Giros" HeaderText="# Giros" />
            </Columns>
        </asp:GridView>
    </asp:Panel>
</asp:Content>
