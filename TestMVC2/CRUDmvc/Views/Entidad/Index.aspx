<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CRUDmvc.Models.Entidad1>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ViewUserControl1
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                IdEntidad1
            </th>
            <th>
                NombreEntidad
            </th>
            <th>
                DetalleEntidad
            </th>
            <th>
                Cantidad
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id = item.IdEntidad1 })%> |
                <%: Html.ActionLink("Details", "Details", new { id = item.IdEntidad1 })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id = item.IdEntidad1 })%>
            </td>
            <td>
                <%: item.IdEntidad1 %>
            </td>
            <td>
                <%: item.NombreEntidad %>
            </td>
            <td>
                <%: item.DetalleEntidad %>
            </td>
            <td>
                <%: item.Cantidad %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

    <input type="button" value="Test" onclick="peticionesAjax()" />

   <script type="text/javascript">

       function print() {
           console.log("Test");
       };

       function peticionesAjax() {
           $.ajax({
               url: '/Entidad/DataResult',
               type: 'GET',
               success: function (response) {
                   alert(response);
                   var array = $.map(response, function (item) { return [item] });
                   console.log(array);
               },
               error: function (error) {
                   $(this).remove();
                   DisplayError(error.statusText);
               }
           }); 
       }



   
   </script>
</asp:Content>

