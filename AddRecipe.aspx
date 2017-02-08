<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddRecipe.aspx.cs" Inherits="AddRecipe" %>

<%@ Register Src="UCIngredients.ascx" TagName="LabelTextUC" TagPrefix="uc1" %>


<%@ Register Src="UCIngredients.ascx" TagName="UCIngredients" TagPrefix="uc2" %>
<%@ Register Src="~/UCIngredients.ascx" TagPrefix="uc1" TagName="UCIngredients" %>

<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="addback">
        <p>
            <asp:Label ID="LabelAdd" runat="server" CssClass="LblAdd" Text="Add Recipe" Font-Size="XX-Large"></asp:Label>
        </p>
        <p class="LblAdd">
            Name of Recipe:
            <asp:TextBox ID="TextBoxName" runat="server" Width="308px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" EnableTheming="True" ErrorMessage="The name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p class="LblAdd">
            Submitted by:
            <asp:TextBox ID="TextBoxSubmittedBy" runat="server" Width="326px" ReadOnly="True"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Submitted by is required" ForeColor="Red" ControlToValidate="TextBoxSubmittedBy"></asp:RequiredFieldValidator>
        </p>
        <p class="LblAdd">
            Category:
            <asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SQLDSddlCategory" AppendDataBoundItems="true" DataTextField="CATEGORYRECIPE" DataValueField="CATEGORYRECIPE" >
                <asp:ListItem Selected="false" Text="" Value="" />
            </asp:DropDownList>
            Enter here a new category:
            <asp:TextBox ID="TextBoxCategory" runat="server" Width="129px"></asp:TextBox>
            <asp:SqlDataSource ID="SQLDSddlCategory" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT &quot;CATEGORYRECIPE&quot; FROM &quot;RECIPES&quot;"></asp:SqlDataSource>
        </p>
        <p class="LblAdd">
            Cooking Time:
            <asp:TextBox ID="TextBoxCookingTime" runat="server" Width="97px"></asp:TextBox>
            &nbsp;
        </p>
        <p class="LblAdd">
            Number of Servings:
            <asp:TextBox ID="TextBoxServings" runat="server" Width="35px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Number of servings is required" ForeColor="Red" ControlToValidate="TextBoxServings"></asp:RequiredFieldValidator>
        </p>
        <p class="LblAdd">
            Recipe Description:
        </p>
        <p>
            &nbsp;<asp:TextBox ID="TextBoxDescription" runat="server" Height="175px" Width="425px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Recipe description is required" ForeColor="Red" ControlToValidate="TextBoxDescription"></asp:RequiredFieldValidator>
        </p>
        <p class="LblAdd">
            Upload a image:
        <asp:FileUpload ID="uplImage" runat="server" Width="235px" /><br />
            <asp:Button ID="btnUploadImg" runat="server" Text="Upload Image " OnClick="btnUploadImg_Click" CausesValidation="false" /><br />
            <asp:Image ID="imgRecipe" runat="server" Height="126px" Width="208px" />
        </p>

        <%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

        <asp:Panel ID="pnlIngredient" runat="server" Width="100%">
            <p class="LblAdd">
                Ingredients List:
                <asp:Button ID="btnAddIngredient" runat="server" CausesValidation="false" Font-Bold="true" Font-Size="Large" OnClick="btnAddIngredient_Click" Text="+" /><br />
            </p>
        </asp:Panel>
        <p>
            <br />
        </p>


        <p aria-orientation="horizontal">
            <asp:Button ID="Bt_add" runat="server" OnClick="Button1_Click" Text="Save recipe" Width="103px" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="103px" OnClick="btnCancel_Click" CausesValidation="false" />
            &nbsp;&nbsp;
        </p>
        <p aria-orientation="horizontal">
            &nbsp;
        </p>
    </div>
</asp:Content>
<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>
