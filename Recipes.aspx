<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="addback">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="IDRECIPE" DataSourceID="SqlDSListRecipes" OnItemCommand="lvtRecipes_ItemCommand">
            <EditItemTemplate>
                <tr style="" class="LblAdd">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="IDRECIPELabel1" runat="server" Text='<%# Eval("IDRECIPE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RECIPENAMETextBox" runat="server" Text='<%# Bind("RECIPENAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CATEGORYRECIPETextBox" runat="server" Text='<%# Bind("CATEGORYRECIPE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="COOKINGTIMETextBox" runat="server" Text='<%# Bind("COOKINGTIME") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="" class="LblAdd">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="IDRECIPETextBox" runat="server" Text='<%# Bind("IDRECIPE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RECIPENAMETextBox" runat="server" Text='<%# Bind("RECIPENAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CATEGORYRECIPETextBox" runat="server" Text='<%# Bind("CATEGORYRECIPE") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="COOKINGTIMETextBox" runat="server" Text='<%# Bind("COOKINGTIME") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="" class="LblAdd">
                    <td>
                        <asp:LinkButton ID="IDRECIPELabel" runat="server" Text='<%# Eval("IDRECIPE") %>' CommandName="RecipeDetails" CommandArgument='<%# Eval("IDRECIPE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RECIPENAMELabel" runat="server" Text='<%# Eval("RECIPENAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CATEGORYRECIPELabel" runat="server" Text='<%# Eval("CATEGORYRECIPE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="COOKINGTIMELabel" runat="server" Text='<%# Eval("COOKINGTIME") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server" class="LblAdd">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">ID RECIPE</th>
                                    <th runat="server">NAME</th>
                                    <th runat="server">CATEGORY</th>
                                    <th runat="server">COOKING TIME</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="IDRECIPELabel" runat="server" Text='<%# Eval("IDRECIPE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RECIPENAMELabel" runat="server" Text='<%# Eval("RECIPENAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CATEGORYRECIPELabel" runat="server" Text='<%# Eval("CATEGORYRECIPE") %>' />
                    </td>
                    <td>
                        <asp:Label ID="COOKINGTIMELabel" runat="server" Text='<%# Eval("COOKINGTIME") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDSListRecipes" runat="server" ConnectionString="<%$ ConnectionStrings:RecipesConnectionString %>" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:RecipesConnectionString.ProviderName %>" SelectCommand="SELECT &quot;IDRECIPE&quot;, &quot;RECIPENAME&quot;, &quot;CATEGORYRECIPE&quot;, &quot;COOKINGTIME&quot; FROM &quot;RECIPES&quot;"></asp:SqlDataSource>
    </div>
</asp:Content>

