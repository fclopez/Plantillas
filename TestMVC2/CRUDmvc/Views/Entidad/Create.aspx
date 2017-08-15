<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CRUDmvc.Models.Entidad1>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IdEntidad1) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.IdEntidad1) %>
                <%: Html.ValidationMessageFor(model => model.IdEntidad1) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.NombreEntidad) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.NombreEntidad) %>
                <%: Html.ValidationMessageFor(model => model.NombreEntidad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.DetalleEntidad) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.DetalleEntidad) %>
                <%: Html.ValidationMessageFor(model => model.DetalleEntidad) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Cantidad) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cantidad) %>
                <%: Html.ValidationMessageFor(model => model.Cantidad) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

