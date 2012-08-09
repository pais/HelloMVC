<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Forum.Models.UserSet>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Delete</h2>

    <h3>Silmek istediğinize eminmisiniz?</h3>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">UserId</div>
        <div class="display-field"><%: Model.UserId %></div>
        
        <div class="display-label">UserType</div>
        <div class="display-field"><%: Model.UserType %></div>
        
        <div class="display-label">UserName</div>
        <div class="display-field"><%: Model.UserName %></div>
        
        <div class="display-label">Password</div>
        <div class="display-field"><%: Model.Password %></div>
        
        <div class="display-label">Email</div>
        <div class="display-field"><%: Model.Email %></div>
        
        <div class="display-label">IsApproved</div>
        <div class="display-field"><%: Model.IsApproved %></div>
        
        <div class="display-label">IsActive</div>
        <div class="display-field"><%: Model.IsActive %></div>
        
        <div class="display-label">RegistrationDate</div>
        <div class="display-field"><%: String.Format("{0:g}", Model.RegistrationDate) %></div>
        
    </fieldset>
    <% using (Html.BeginForm()) { %>
        <p>
		    <input type="submit" value="Delete" /> |
		    <%: Html.ActionLink("Back to List", "Index") %>
        </p>
    <% } %>

</asp:Content>

