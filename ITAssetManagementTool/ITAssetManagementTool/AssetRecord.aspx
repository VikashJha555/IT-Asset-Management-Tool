<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AssetRecord.aspx.cs" Inherits="ITAssetManagementTool.AssetRecord" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="auto-style1">
            <strong><span class="auto-style1">IT Asset Record View</span></strong><br />
            <br />
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Type:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListType" runat="server" Width="180px">
                        <asp:ListItem>Select Type</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Blackberry Mobile Phone</asp:ListItem>
                        <asp:ListItem>Data Card</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownListType" ErrorMessage="Type is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Model Number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxModelNumber" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxModelNumber" ErrorMessage="Model number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Serial Number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxSerialNumber" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSerialNumber" ErrorMessage="Serial number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PO Number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPoNumber" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxPoNumber" ErrorMessage="PO number is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">PO Date and Time:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxPoDate" runat="server" Width="180px" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPoDate" ErrorMessage="PO date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Support Start Date and&nbsp; Time:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxSupportDate" runat="server" Width="180px" TextMode="DateTimeLocal"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxSupportDate" ErrorMessage="Support start date is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Status:</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownListStatus" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="180px">
                        <asp:ListItem>Select Asset Status</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Lost</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownListStatus" ErrorMessage="Status is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Remarks:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxRemarks" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxRemarks" ErrorMessage="Remarks is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button_View" runat="server" Text="View" Width="120px" OnClick="Button_View_Click" />
&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
  
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    </style>
</asp:Content>
