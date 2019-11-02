<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyPost.aspx.cs" Inherits="Webtest.WebForm2"  MasterPageFile="~/Test.Master"%>

<asp:Content ID="mypost_content" ContentPlaceHolderID="TestContent" runat ="server">
    <h2>My Post</h2>
    <table class="w-100">
                <tr>
                    <td style="width: 162px"><asp:Button ID="Button1" runat="server" Text="Buat Post" OnClick="Button1_Click" PostBackUrl="~/CreatePost.aspx" />
                    <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Logout" CssClass="offset-sm-0" /></td>
                </tr>
            </table>
           <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" Height="193px" Width="359px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                    <asp:BoundField DataField="post" HeaderText="post" SortExpression="post" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TestDBConnection %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Posts] WHERE ([username] = @username)" DeleteCommand="DELETE FROM [Posts] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Posts] ([username], [post]) VALUES (@username, @post)" UpdateCommand="UPDATE [Posts] SET [username] = @username, [post] = @post WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="post" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="UserLogin" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="post" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </asp:Content>
