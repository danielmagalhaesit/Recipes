<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="Setup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="addback">

        <h1 class="LblAdd">Theme Choice</h1>

        <p>
            <asp:RadioButton ID="rdbLight" runat="server" Text="Light (Veggie)" GroupName="rdbTheme" CssClass="LblAdd" /><br />
            <asp:RadioButton ID="RdbDark" runat="server" Text="Dark (Meat)" GroupName="rdbTheme" CssClass="LblAdd" />
        </p>
        <asp:Button ID="btnTheme" runat="server" OnClick="btnTheme_Click" Text="Save" />
        <p>
            &nbsp;
        </p>

    </div>
</asp:Content>

