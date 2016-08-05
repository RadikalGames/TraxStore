
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="TraxStoreProject.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 23px; background-color: #F0F0F0">
    <form id="form1" runat="server">
    <div style="background-color: indianred;width:100%; height: 99px;">
    
        <br />
        <h2>       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ADMIN PANEL FOR TRAXSTORE                                 </h2>
        <br />
    
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div><hr />
        <div style="width: 364px;float:left">
        <br />
        <br />
        <asp:Button ID="btncntluser" runat="server" style="font-weight: 700; font-size: large; text-decoration: underline" Text="Controll The Users" />
            <br />
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="221px" DataKeyNames="User Id" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="User Id" HeaderText="User Id" InsertVisible="False" ReadOnly="True" SortExpression="User Id" />
                <asp:BoundField DataField="Name " HeaderText="Name " SortExpression="Name " />
                <asp:BoundField DataField="Email id " HeaderText="Email id " SortExpression="Email id " />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="blue" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="blue" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="blue" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="blue" ForeColor="#333333" />
            <SelectedRowStyle BackColor="blue" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [userinfo] WHERE [User Id] = @original_User_Id AND [Name] = @original_Name AND [Email id] = @original_Email_id AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND [Password] = @original_Password" InsertCommand="INSERT INTO [userinfo] ([Name], [Email id], [Mobile], [Password]) VALUES (@Name, @Email_id, @Mobile, @Password)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [userinfo]" UpdateCommand="UPDATE [userinfo] SET [Name] = @Name, [Email id] = @Email_id, [Mobile] = @Mobile, [Password] = @Password WHERE [User Id] = @original_User_Id AND [Name] = @original_Name AND [Email id] = @original_Email_id AND (([Mobile] = @original_Mobile) OR ([Mobile] IS NULL AND @original_Mobile IS NULL)) AND [Password] = @original_Password">
            <DeleteParameters>
                <asp:Parameter Name="original_User_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email_id" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="Int64" />
                <asp:Parameter Name="original_Password" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email_id" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email_id" Type="String" />
                <asp:Parameter Name="Mobile" Type="Int64" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="original_User_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email_id" Type="String" />
                <asp:Parameter Name="original_Mobile" Type="Int64" />
                <asp:Parameter Name="original_Password" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div style="height: 329px; margin-left: 600px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:Button ID="btnaddtrack" runat="server" OnClick="btnaddtrack_Click" style="font-weight: 700; font-size: large" Text="Add Track" Width="125px" />--%>
            <asp:Button ID="btnaddtrack" runat="server" Text="ADD A USER" style="font-weight: 700; font-size: large; text-decoration: underline" />
            <br />
            <br />
            Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:TextBox ID="tbtrackname" runat="server" OnTextChanged="tbtrackname_TextChanged" Width="162px"></asp:TextBox>--%>
            <asp:TextBox ID="tbtrackname" runat="server" Width="162px"></asp:TextBox>
            <br />
            <br />
            Genere&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:TextBox ID="tbtrackgenre" runat="server" OnTextChanged="tbtrackgenre_TextChanged" Width="162px"></asp:TextBox>--%>
            <asp:TextBox ID="tbtrackgenere" runat="server" Width="161px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Artist&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:TextBox ID="tbtrackartist" runat="server" OnTextChanged="tbtrackartist_TextChanged" Width="164px"></asp:TextBox>--%>
            <asp:TextBox ID="tbtrackartist" runat="server" Width="160px"></asp:TextBox>
            <br />
            <br />
            <br />
            Album&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
            <%--<asp:TextBox ID="tbtrackalbum" runat="server" OnTextChanged="tbtrackalbum_TextChanged" Width="161px"></asp:TextBox>--%>
            <asp:TextBox ID="tbtrackalbum" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            upload track&nbsp; :&nbsp;&nbsp;&nbsp; <asp:FileUpload ID="fullsong" runat="server" style="margin-left: 0px" />
            <br />
            <br />
            upload Art&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :<asp:FileUpload ID="uploadart" runat="server" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btntrackadd" runat="server" OnClick="btntrackadd_Click" style="font-weight: 700; font-size: large" Text="ADD" />
        </div>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <div style="float:left">
            <asp:Button ID="btncntrltracks" runat="server" style="font-weight: 700; font-size: large" Text="Control Tracks" />
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Track Id" DataSourceID="SqlDataSource2" GridLines="Vertical" style="margin-bottom: 0px" AllowPaging="True" AllowSorting="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="Track Id" HeaderText="Track Id" InsertVisible="False" ReadOnly="True" SortExpression="Track Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Path" HeaderText="Path" SortExpression="Path" />
                    <asp:BoundField DataField="Downloads" HeaderText="Downloads" SortExpression="Downloads" />
                    <asp:BoundField DataField="Genere" HeaderText="Genere" SortExpression="Genere" />
                    <asp:BoundField DataField="Artist" HeaderText="Artist" SortExpression="Artist" />
                    <asp:BoundField DataField="Album" HeaderText="Album" SortExpression="Album" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tracks]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Tracks] WHERE [Track Id] = @original_Track_Id AND [Name] = @original_Name AND [Path] = @original_Path AND [Downloads] = @original_Downloads AND (([Genere] = @original_Genere) OR ([Genere] IS NULL AND @original_Genere IS NULL)) AND (([Artist] = @original_Artist) OR ([Artist] IS NULL AND @original_Artist IS NULL)) AND [Album] = @original_Album" InsertCommand="INSERT INTO [Tracks] ([Name], [Path], [Downloads], [Genere], [Artist], [Album]) VALUES (@Name, @Path, @Downloads, @Genere, @Artist, @Album)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Tracks] SET [Name] = @Name, [Path] = @Path, [Downloads] = @Downloads, [Genere] = @Genere, [Artist] = @Artist, [Album] = @Album WHERE [Track Id] = @original_Track_Id AND [Name] = @original_Name AND [Path] = @original_Path AND [Downloads] = @original_Downloads AND (([Genere] = @original_Genere) OR ([Genere] IS NULL AND @original_Genere IS NULL)) AND (([Artist] = @original_Artist) OR ([Artist] IS NULL AND @original_Artist IS NULL)) AND [Album] = @original_Album">
                <DeleteParameters>
                    <asp:Parameter Name="original_Track_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter Name="original_Downloads" Type="Int32" />
                    <asp:Parameter Name="original_Genere" Type="String" />
                    <asp:Parameter Name="original_Artist" Type="String" />
                    <asp:Parameter Name="original_Album" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter Name="Downloads" Type="Int32" />
                    <asp:Parameter Name="Genere" Type="String" />
                    <asp:Parameter Name="Artist" Type="String" />
                    <asp:Parameter Name="Album" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Path" Type="String" />
                    <asp:Parameter Name="Downloads" Type="Int32" />
                    <asp:Parameter Name="Genere" Type="String" />
                    <asp:Parameter Name="Artist" Type="String" />
                    <asp:Parameter Name="Album" Type="String" />
                    <asp:Parameter Name="original_Track_Id" Type="Int32" />
                    <asp:Parameter Name="original_Name" Type="String" />
                    <asp:Parameter Name="original_Path" Type="String" />
                    <asp:Parameter Name="original_Downloads" Type="Int32" />
                    <asp:Parameter Name="original_Genere" Type="String" />
                    <asp:Parameter Name="original_Artist" Type="String" />
                    <asp:Parameter Name="original_Album" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <p style="margin-left: 40px">
        <br />
        <br />
        <br />
        </p>
        <div style="height: 111px">
            <asp:Button ID="btncntrlpuchase" runat="server" style="font-weight: 700; font-size: large" Text="Control Purchase" />
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Purchase Id" DataSourceID="SqlDataSource3">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Purchase Id" HeaderText="Purchase Id" InsertVisible="False" ReadOnly="True" SortExpression="Purchase Id" />
                    <asp:BoundField DataField="User Id" HeaderText="User Id" SortExpression="User Id" />
                    <asp:BoundField DataField="Track Id" HeaderText="Track Id" SortExpression="Track Id" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Purchase] WHERE [Purchase Id] = @Purchase_Id" InsertCommand="INSERT INTO [Purchase] ([User Id], [Track Id]) VALUES (@User_Id, @Track_Id)" SelectCommand="SELECT * FROM [Purchase]" UpdateCommand="UPDATE [Purchase] SET [User Id] = @User_Id, [Track Id] = @Track_Id WHERE [Purchase Id] = @Purchase_Id">
                <DeleteParameters>
                    <asp:Parameter Name="Purchase_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="User_Id" Type="Int32" />
                    <asp:Parameter Name="Track_Id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="User_Id" Type="Int32" />
                    <asp:Parameter Name="Track_Id" Type="Int32" />
                    <asp:Parameter Name="Purchase_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
