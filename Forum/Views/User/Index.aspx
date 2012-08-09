<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Forum.Models.UserSet>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>
                UserId
            </th>
            <th>
                UserType
            </th>
            <th>
                UserName
            </th>
            <th>
                Password
            </th>
            <th>
                Email
            </th>
            <th>
                IsApproved
            </th>
            <th>
                IsActive
            </th>
            <th>
                RegistrationDate
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "Edit", new { id=item.UserId }) %> |
                <%: Html.ActionLink("Details", "Details", new { id=item.UserId })%> |
                <%: Html.ActionLink("Delete", "Delete", new { id=item.UserId })%>
            </td>
            <td>
                <%: item.UserId %>
            </td>
            <td>
                <%: item.UserType %>
            </td>
            <td>
                <%: item.UserName %>
            </td>
            <td>
                <%: item.Password %>
            </td>
            <td>
                <%: item.Email %>
            </td>
            <td>
                <%: item.IsApproved %>
            </td>
            <td>
                <%: item.IsActive %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.RegistrationDate) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>

