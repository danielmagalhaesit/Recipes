<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RecipeDetails.aspx.cs" Inherits="RecipeDetails" %>

<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="addback">
        <asp:Image ID="imgRecipe" runat="server" CssClass="recipeimg" Height="222px" Width="483px" />
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="446px" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="IDRECIPE" CssClass="LblAdd">
            <Fields>
                <asp:BoundField DataField="SUBMITTEDBY" HeaderText="SUBMITTED BY" SortExpression="SUBMITTEDBY" ControlStyle-CssClass="LblAdd" ReadOnly="true">
                    <ControlStyle CssClass="LblAdd" />
                </asp:BoundField>
                <asp:BoundField DataField="RECIPENAME" HeaderText="RECIPE NAME" SortExpression="RECIPENAME" ControlStyle-CssClass="LblAdd">
                    <ControlStyle CssClass="LblAdd"></ControlStyle>
                </asp:BoundField>
                <asp:BoundField DataField="CATEGORYRECIPE" HeaderText="CATEGORY RECIPE" SortExpression="CATEGORYRECIPE" ControlStyle-CssClass="LblAdd">
                    <ControlStyle CssClass="LblAdd"></ControlStyle>
                </asp:BoundField>
                <asp:BoundField DataField="COOKINGTIME" HeaderText="COOKING TIME" SortExpression="COOKINGTIME" ControlStyle-CssClass="LblAdd">
                    <ControlStyle CssClass="LblAdd"></ControlStyle>
                </asp:BoundField>
                <asp:BoundField DataField="NUMBEROFSERVINGS" HeaderText="NUMBER OF SERVINGS" SortExpression="NUMBEROFSERVINGS" ControlStyle-CssClass="LblAdd">
                    <ControlStyle CssClass="LblAdd"></ControlStyle>
                </asp:BoundField>
                <asp:BoundField DataField="RECIPEDESCRIPTION" HeaderText="RECIPE DESCRIPTION" SortExpression="RECIPEDESCRIPTION" ControlStyle-CssClass="LblAdd">
                    <ControlStyle CssClass="LblAdd"></ControlStyle>
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" DeleteCommand="DELETE FROM &quot;RECIPES&quot; WHERE &quot;IDRECIPE&quot; = :IDRECIPE" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;RECIPES&quot; WHERE (&quot;IDRECIPE&quot; = :IDRECIPE)" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO &quot;RECIPES&quot; (&quot;IDRECIPE&quot;, &quot;RECIPENAME&quot;, &quot;SUBMITTEDBY&quot;, &quot;CATEGORYRECIPE&quot;, &quot;COOKINGTIME&quot;, &quot;NUMBEROFSERVINGS&quot;, &quot;RECIPEDESCRIPTION&quot;) VALUES (?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE &quot;RECIPES&quot; SET &quot;RECIPENAME&quot; = :RECIPENAME, &quot;SUBMITTEDBY&quot; = :SUBMITTEDBY, &quot;CATEGORYRECIPE&quot; = :CATEGORYRECIPE, &quot;COOKINGTIME&quot; = :COOKINGTIME, &quot;NUMBEROFSERVINGS&quot; = :NUMBEROFSERVINGS, &quot;RECIPEDESCRIPTION&quot; = :RECIPEDESCRIPTION WHERE &quot;IDRECIPE&quot; = : AND ((&quot;RECIPENAME&quot; = :RECIPENAME) OR (&quot;RECIPENAME&quot; IS NULL AND :RECIPENAME IS NULL)) AND ((&quot;SUBMITTEDBY&quot; = :SUBMITTEDBY) OR (&quot;SUBMITTEDBY&quot; IS NULL AND :SUBMITTEDBY IS NULL)) AND ((&quot;CATEGORYRECIPE&quot; = :CATEGORYRECIPE) OR (&quot;CATEGORYRECIPE&quot; IS NULL AND :CATEGORYRECIPE IS NULL)) AND ((&quot;COOKINGTIME&quot; = :COOKINGTIME) OR (&quot;COOKINGTIME&quot; IS NULL AND :COOKINGTIME IS NULL)) AND ((&quot;NUMBEROFSERVINGS&quot; = :NUMBEROFSERVINGS) OR (&quot;NUMBEROFSERVINGS&quot; IS NULL AND :NUMBEROFSERVINGS IS NULL)) AND ((&quot;RECIPEDESCRIPTION&quot; = :RECIPEDESCRIPTION) OR (&quot;RECIPEDESCRIPTION&quot; IS NULL AND :RECIPEDESCRIPTION IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_IDRECIPE" Type="Decimal" />
                <asp:Parameter Name="original_RECIPENAME" Type="String" />
                <asp:Parameter Name="original_RECIPENAME" Type="String" />
                <asp:Parameter Name="original_SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="original_SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="original_CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="original_CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="original_COOKINGTIME" Type="String" />
                <asp:Parameter Name="original_COOKINGTIME" Type="String" />
                <asp:Parameter Name="original_NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="original_NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="original_RECIPEDESCRIPTION" Type="String" />
                <asp:Parameter Name="original_RECIPEDESCRIPTION" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="IDRECIPE" Type="Decimal" />
                <asp:Parameter Name="RECIPENAME" Type="String" />
                <asp:Parameter Name="SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="COOKINGTIME" Type="String" />
                <asp:Parameter Name="NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="RECIPEDESCRIPTION" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="IDRECIPE" QueryStringField="IdRecipe" Type="Decimal" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RECIPENAME" Type="String" />
                <asp:Parameter Name="SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="COOKINGTIME" Type="String" />
                <asp:Parameter Name="NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="RECIPEDESCRIPTION" Type="String" />
                <asp:Parameter Name="original_IDRECIPE" Type="Decimal" />
                <asp:Parameter Name="original_RECIPENAME" Type="String" />
                <asp:Parameter Name="original_RECIPENAME" Type="String" />
                <asp:Parameter Name="original_SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="original_SUBMITTEDBY" Type="String" />
                <asp:Parameter Name="original_CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="original_CATEGORYRECIPE" Type="String" />
                <asp:Parameter Name="original_COOKINGTIME" Type="String" />
                <asp:Parameter Name="original_COOKINGTIME" Type="String" />
                <asp:Parameter Name="original_NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="original_NUMBEROFSERVINGS" Type="Decimal" />
                <asp:Parameter Name="original_RECIPEDESCRIPTION" Type="String" />
                <asp:Parameter Name="original_RECIPEDESCRIPTION" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:ListView ID="ListView1" runat="server" DataSourceID="SQLDSDetailIngredient">
            <AlternatingItemTemplate>
                <li style="" class="LblAdd">INGREDIENT NAME:
                    <asp:Label ID="INGREDIENTNAMELabel" runat="server" Text='<%# Eval("INGREDIENTNAME") %>' />
                    <br />
                    QUANTITY:
                    <asp:Label ID="QUANTITYLabel" runat="server" Text='<%# Eval("QUANTITY") %>' />
                    <br />
                    UNIT OF MEASURE:
                    <asp:Label ID="UNITOFMEASURELabel" runat="server" Text='<%# Eval("UNITOFMEASURE") %>' />
                    <br />
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="" class="LblAdd">INGREDIENT NAME:
                    <asp:TextBox ID="INGREDIENTNAMETextBox" runat="server" Text='<%# Bind("INGREDIENTNAME") %>' />
                    <br />
                    QUANTITY:
                    <asp:TextBox ID="QUANTITYTextBox" runat="server" Text='<%# Bind("QUANTITY") %>' />
                    <br />
                    UNIT OF MEASURE:
                    <asp:TextBox ID="UNITOFMEASURETextBox" runat="server" Text='<%# Bind("UNITOFMEASURE") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </li>
            </EditItemTemplate>
            <EmptyDataTemplate>
                No data was returned.
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <li style="" class="LblAdd">INGREDIENT NAME:
                    <asp:TextBox ID="INGREDIENTNAMETextBox" runat="server" Text='<%# Bind("INGREDIENTNAME") %>' />
                    <br />
                    QUANTITY:
                    <asp:TextBox ID="QUANTITYTextBox" runat="server" Text='<%# Bind("QUANTITY") %>' />
                    <br />
                    UNIT OF MEASURE:
                    <asp:TextBox ID="UNITOFMEASURETextBox" runat="server" Text='<%# Bind("UNITOFMEASURE") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </li>
            </InsertItemTemplate>
            <ItemSeparatorTemplate>
                <br />
            </ItemSeparatorTemplate>
            <ItemTemplate>
                <li style="" class="LblAdd">INGREDIENT NAME:
                    <asp:Label ID="INGREDIENTNAMELabel" runat="server" Text='<%# Eval("INGREDIENTNAME") %>' />
                    <br />
                    QUANTITY:
                    <asp:Label ID="QUANTITYLabel" runat="server" Text='<%# Eval("QUANTITY") %>' />
                    <br />
                    UNIT OF MEASURE:
                    <asp:Label ID="UNITOFMEASURELabel" runat="server" Text='<%# Eval("UNITOFMEASURE") %>' />
                    <br />
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="" class="LblAdd">INGREDIENT NAME:
                    <asp:Label ID="INGREDIENTNAMELabel" runat="server" Text='<%# Eval("INGREDIENTNAME") %>' />
                    <br />
                    QUANTITY:
                    <asp:Label ID="QUANTITYLabel" runat="server" Text='<%# Eval("QUANTITY") %>' />
                    <br />
                    UNIT OF MEASURE:
                    <asp:Label ID="UNITOFMEASURELabel" runat="server" Text='<%# Eval("UNITOFMEASURE") %>' />
                    <br />
                </li>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SQLDSDetailIngredient" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT &quot;INGREDIENTNAME&quot;, &quot;QUANTITY&quot;, &quot;UNITOFMEASURE&quot; FROM &quot;INGREDIENTS&quot; WHERE (&quot;IDRECIPE&quot; = :IDRECIPE)" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:QueryStringParameter Name="IDRECIPE" QueryStringField="IdRecipe" Type="Decimal" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

