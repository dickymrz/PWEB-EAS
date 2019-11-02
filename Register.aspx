<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Webtest.Register" MasterPageFile="~/Test.Master" %>

<asp:Content ID="register_content" ContentPlaceHolderID="TestContent" runat ="server">
    <div>   

        <h1>Registrasi Form</h1>
        
             <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>  <br />
                <asp:TextBox ID="username" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username harus diisi" ControlToValidate="username" CssClass="auto-style5" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>  <br />
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" CssClass="auto-style5" ErrorMessage="Password harus diisi" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Konfirmasi Password"></asp:Label>   <br />
                <asp:TextBox ID="konpas" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="konpas" CssClass="auto-style5" ErrorMessage="Password tidak sama" style="color: #FF0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label> <br />
                <asp:TextBox ID="email" runat="server" OnTextChanged="email_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" CssClass="auto-style5" ErrorMessage="Email harus diisi" style="color: #FF0000"></asp:RequiredFieldValidator> <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Masukan Email yang valid" style="color: #FF0000; background-color: #FFFFFF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>    <br />
                <asp:DropDownList ID="gender" runat="server" OnSelectedIndexChanged="gender_SelectedIndexChanged">
                    <asp:ListItem>Pilih Gender</asp:ListItem>
                    <asp:ListItem>Pria</asp:ListItem>
                    <asp:ListItem>Wanita</asp:ListItem>
            </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="gender" CssClass="auto-style5" ErrorMessage="Harus diisi" InitialValue="Pilih Gender" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" Text="Daftar" OnClick="Button_Daftar" />
            </td>
            <td>
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
    </table>
   
           
   </div>
</asp:Content>
