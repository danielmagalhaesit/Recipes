<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCIngredients.ascx.cs" Inherits="UCIngredients" %>

<%--Antonio Daniel de Oliveira Magalhaes - 300883536--%>

<asp:Label ID="LabelUCIngredient" runat="server" Text="Ingredient: " CssClass="LblAdd"></asp:Label>
 <asp:TextBox ID="TextBoxUCIngredient" runat="server"></asp:TextBox>
&nbsp;
<asp:Label ID="LabelUCQuantity" runat="server" Text="Quantity: " CssClass="LblAdd"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxUCQuantity" runat="server" Width="39px"></asp:TextBox>
&nbsp;&nbsp;
<asp:Label ID="LabelUCUnit" runat="server" Text="Unit: " CssClass="LblAdd"></asp:Label>
&nbsp;<asp:TextBox ID="TextBoxUCUnit" runat="server" Width="63px"></asp:TextBox><br />

