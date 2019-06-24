<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAssetView.aspx.cs" Inherits="ITAssetManagementTool.AdminAssetView" MasterPageFile="~/MasterPage.Master" %>



<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:sqlDataSource ID="SqlDataSourceAssetView"
   SelectCommand="SELECT * FROM [AssetRecord]"   ConnectionString="<%$ ConnectionStrings:AssetRecordConnectionString %>"  RunAt="server" DeleteCommand="DELETE FROM [AssetRecord] WHERE [Asset_ID] = @Asset_ID" InsertCommand="INSERT INTO [AssetRecord] ([Type], [Model_No], [Serial_No], [PO_No], [PO_Date], [Support_Date], [Status], [Remarks]) VALUES (@Type, @Model_No, @Serial_No, @PO_No, @PO_Date, @Support_Date, @Status, @Remarks)" UpdateCommand="UPDATE [AssetRecord] SET [Type] = @Type, [Model_No] = @Model_No, [Serial_No] = @Serial_No, [PO_No] = @PO_No, [PO_Date] = @PO_Date, [Support_Date] = @Support_Date, [Status] = @Status, [Remarks] = @Remarks WHERE [Asset_ID] = @Asset_ID">

                 <UpdateParameters>
                    <asp:Parameter Name="Type" Type="String" />
                    <asp:Parameter Name="Model_No" Type="String" />
                    <asp:Parameter Name="Serial_No" Type="String" />
                    <asp:Parameter Name="PO_No" Type="String" />
                    <asp:Parameter Name="PO_Date" Type="DateTime" />
                    <asp:Parameter Name="Support_Date" Type="DateTime" />
                    <asp:Parameter Name="Status" Type="String" />
                    <asp:Parameter Name="Remarks" Type="String" />
                    <asp:Parameter Name="Asset_ID" Type="Int32" />
                </UpdateParameters>
            </asp:sqlDataSource>
            <br />
            </div>
        &nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceAssetView" ForeColor="#333333" GridLines="None" Width="1428px" Height="331px" DataKeyNames="Asset_ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="Asset_ID" HeaderText="Asset_ID" SortExpression="Asset_ID" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="Model_No" HeaderText="Model_No" SortExpression="Model_No" />
                <asp:BoundField DataField="Serial_No" HeaderText="Serial_No" SortExpression="Serial_No" />
                <asp:BoundField DataField="PO_No" HeaderText="PO_No" SortExpression="PO_No" />
                <asp:BoundField DataField="PO_Date" HeaderText="PO_Date" SortExpression="PO_Date" />
                <asp:BoundField DataField="Support_Date" HeaderText="Support_Date" SortExpression="Support_Date" />
                <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                 <asp:TemplateField HeaderText="Upload">
        <ItemTemplate>
            <asp:FileUpload ID="FileUpload1" runat="server" EnableViewState="true" AllowMultiple="true" />
            <asp:Button ID="btnUpload" runat="server" CommandName="Upload"  Text="Upload" style=" color: #ff0000"/> 
             <asp:LinkButton ID="lnkDownload" Text = "Download"  runat="server" OnClick = "DownloadFile"></asp:LinkButton>
        </ItemTemplate>
        </asp:TemplateField>
                
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
  &nbsp;&nbsp; 
  </asp:Content>