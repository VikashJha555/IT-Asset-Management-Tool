<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAttachments.aspx.cs" Inherits="ITAssetManagementTool.AdminAttachments" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <br />
        </div>
        <asp:SqlDataSource ID="SqlDataSourceAttachments" runat="server" ConnectionString="<%$ ConnectionStrings:AssetRecordConnectionString %>" SelectCommand="SELECT * FROM [Attachment]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Attachment_Id" DataSourceID="SqlDataSourceAttachments" ForeColor="#333333" GridLines="None" Height="448px" Width="1298px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Attachment_Id" HeaderText="Attachment_Id" InsertVisible="False" ReadOnly="True" SortExpression="Attachment_Id" />
                <asp:BoundField DataField="FId_AssetId" HeaderText="FId_AssetId" SortExpression="FId_AssetId" />
                <asp:BoundField DataField="FId_AssignmentId" HeaderText="FId_AssignmentId" SortExpression="FId_AssignmentId" />
                <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" SortExpression="Emp_Name" />
                <asp:BoundField DataField="File_Name" HeaderText="File_Name" SortExpression="File_Name" />
                <asp:BoundField DataField="File_Path" HeaderText="File_Path" SortExpression="File_Path" />
                <asp:BoundField DataField="Upload_DateTime" HeaderText="Upload_DateTime" SortExpression="Upload_DateTime" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </asp:Content>