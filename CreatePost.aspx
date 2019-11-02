<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="Webtest.CreatePost"  MasterPageFile ="~/Test.Master" %>
<asp:Content ID="createpost_content" ContentPlaceHolderID="TestContent" runat ="server">


        <div>
            <h1>Buat Post</h1>
            <asp:Label ID="Label1" runat="server" Text="Post"></asp:Label> <br />
            <asp:TextBox ID="cpost" runat="server" Height="138px" Width="560px" OnTextChanged="cpost_TextChanged" TextMode="MultiLine"></asp:TextBox> <br />
            <asp:Button ID="Button1" runat="server" Text="Create" OnClick="Button_Create" />
        </div>

</asp:Content>