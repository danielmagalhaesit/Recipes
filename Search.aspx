<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

        <%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="addback">
        <div class="LblAdd">
            Submitted By:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlSubmittedBy" runat="server" DataSourceID="SqlDataSourceSubmitted" AppendDataBoundItems="true" DataTextField="SUBMITTEDBY" DataValueField="SUBMITTEDBY" Width="106px">
                <asp:ListItem Selected="True" Text="All" Value="" />
            </asp:DropDownList><br />
            Category:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList ID="ddlCategory" runat="server" DataSourceID="SqlDataSourceCategory" AppendDataBoundItems="true" DataTextField="CATEGORYRECIPE" DataValueField="CATEGORYRECIPE" Width="106px">
                <asp:ListItem Selected="True" Text="All" Value="" />
            </asp:DropDownList>
            &nbsp;<br />
            Name of Ingredient:&nbsp;<asp:DropDownList ID="ddlIngredientName" runat="server" DataSourceID="SqlDataSourceIngredient" AppendDataBoundItems="true" DataTextField="INGREDIENTNAME" DataValueField="INGREDIENTNAME" Width="106px">
                <asp:ListItem Selected="True" Text="All" Value="" />
            </asp:DropDownList>
            <br />
            <asp:Button ID="btnSearch" runat="server" Text="Search" />
        </div>

        <%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>
        <asp:SqlDataSource ID="SqlDataSourceIngredient" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;INGREDIENTNAME&quot; FROM &quot;INGREDIENTS&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceSubmitted" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;SUBMITTEDBY&quot; FROM &quot;RECIPES&quot;"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT DISTINCT &quot;CATEGORYRECIPE&quot; FROM &quot;RECIPES&quot;"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="LblAdd" DataKeyNames="IDRECIPE" DataSourceID="SqlDataSourceGridView">
            <Columns>
                <asp:BoundField DataField="IDRECIPE" HeaderText="IDRECIPE" ReadOnly="True" SortExpression="IDRECIPE" />
                <asp:BoundField DataField="RECIPENAME" HeaderText="RECIPENAME" SortExpression="RECIPENAME" />
                <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTEDBY" SortExpression="SUBMITTEDBY" />
                <asp:BoundField DataField="CATEGORYRECIPE" HeaderText="CATEGORYRECIPE" SortExpression="CATEGORYRECIPE" />
                <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKINGTIME" SortExpression="COOKINGTIME" />
                <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBEROFSERVINGS" SortExpression="NUMBEROFSERVINGS" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGridView" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;RECIPES&quot; WHERE ((&quot;CATEGORYRECIPE&quot; = :CATEGORYRECIPE) AND (&quot;SUBMITTEDBY&quot; = :SUBMITTEDBY))">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlCategory" Name="CATEGORYRECIPE" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="ddlSubmittedBy" Name="SUBMITTEDBY" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>



    </div>


</asp:Content>
<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

