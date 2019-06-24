<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAllotAsset.aspx.cs" Inherits="ITAssetManagementTool.AdminAllotAsset" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <br />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AssetRecordConnectionString %>" SelectCommand="SELECT * FROM [AllotAssetTable]"></asp:SqlDataSource>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="Assign_Id" Height="249px" Width="1160px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="Assign_Id" HeaderText="Assign_Id" SortExpression="Assign_Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" SortExpression="Emp_ID" />
                <asp:BoundField DataField="Emp_Name" HeaderText="Emp_Name" SortExpression="Emp_Name" />
                <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                <asp:BoundField DataField="Asset_type" HeaderText="Asset_type" SortExpression="Asset_type" />
                <asp:BoundField DataField="Asset_Serial_No" HeaderText="Asset_Serial_No" SortExpression="Asset_Serial_No" />
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
