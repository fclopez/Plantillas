<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CRUDmvc.Models.Entidad1>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">IdEntidad1</div>
        <div class="display-field"><%: Model.IdEntidad1 %></div>
        
        <div class="display-label">NombreEntidad</div>
        <div class="display-field"><%: Model.NombreEntidad %></div>
        
        <div class="display-label">DetalleEntidad</div>
        <div class="display-field"><%: Model.DetalleEntidad %></div>
        
        <div class="display-label">Cantidad</div>
        <div class="display-field"><%: Model.Cantidad %></div>
        
    </fieldset>
    <p>
        <%: Html.ActionLink("Edit", "Edit", new { id = Model.IdEntidad1 })%> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

