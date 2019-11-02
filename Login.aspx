<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Webtest.Login" MasterPageFile="~/Test.Master" %>

<asp:Content ID="login_content" ContentPlaceHolderID="TestContent" runat ="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label> <br />
                        <asp:TextBox ID="username" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="usernamevld" runat="server" ErrorMessage="Username harus diisi" ControlToValidate="username" style="color: #FF0000"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label> <br />
                        <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                       <asp:RequiredFieldValidator ID="passwordvld" runat="server" ErrorMessage="Password harus diisi" ControlToValidate="password" style="color: #FF0000"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button_login" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button_login_Click" />
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Belum punya akun? Daftar disini</asp:HyperLink></td>
                </tr>
            </table>
        </div>
</asp:Content>
