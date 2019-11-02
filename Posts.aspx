<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Posts.aspx.cs" Inherits="Webtest.WebForm1" MasterPageFile="~/Test.Master" %>
<asp:Content ID="post_content" ContentPlaceHolderID="TestContent" runat ="server">

        <div>
            <asp:Label ID="labeltext" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <h1>Forum</h1>
             
              
           
            <table class="w-100">
                <tr>
                    <td style="width: 162px"><asp:Button ID="Button1" runat="server" Text="Buat Post" OnClick="Button1_Click" PostBackUrl="~/CreatePost.aspx" />
                    <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Logout" CssClass="offset-sm-0" /></td>
                </tr>
            </table>
           
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="320px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="540px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="post" HeaderText="Post" SortExpression="post" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle Width="10px" BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnection %>" SelectCommand="SELECT [username], [post] FROM [Posts]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
        </div>
</asp:Content> 
