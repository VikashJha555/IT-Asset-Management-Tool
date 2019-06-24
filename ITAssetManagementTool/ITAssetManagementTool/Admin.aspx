<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="ITAssetManagementTool.Admin" MasterPageFile="~/MasterPage.Master"%>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:sqlDataSource ID="SqlDataSourceRegistration"
   SelectCommand="SELECT * FROM [UserData]"   ConnectionString="<%$ ConnectionStrings:AssetRecordConnectionString %>"  RunAt="server"> </asp:sqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="UserDataId" DataSourceID="SqlDataSourceRegistration1" ForeColor="#333333" GridLines="None" Height="258px" Width="1324px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="UserDataId" HeaderText="UserDataId" ReadOnly="True" SortExpression="UserDataId" InsertVisible="False" />
                <asp:BoundField DataField="User_ID" HeaderText="User_ID" SortExpression="User_ID" />
                <asp:BoundField DataField="User_Name" HeaderText="User_Name" SortExpression="User_Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" SortExpression="Branch" />
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
        <asp:SqlDataSource ID="SqlDataSourceRegistration1" runat="server" ConnectionString="<%$ ConnectionStrings:AssetRecordConnectionString %>" SelectCommand="SELECT * FROM [UserData]"></asp:SqlDataSource>
 </asp:Content>