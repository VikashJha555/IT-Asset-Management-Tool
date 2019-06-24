<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllotAsset.aspx.cs" Inherits="ITAssetManagementTool.AllotAsset" MasterPageFile="~/MasterPage.Master" %>


<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style1">
            <strong>Enter Employee Details<br />
            <br />
&nbsp; </strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">Employee ID:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpId" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Employee ID" ForeColor="Red" ControlToValidate="TextBoxEmpId"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Employee Name:</td>
                <td>
                    <asp:TextBox ID="TextBoxEmpName" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Employee Name" ForeColor="Red" ControlToValidate="TextBoxEmpName"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Department:</td>
                <td>
                    <asp:TextBox ID="TextBoxDepartment" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Department" ForeColor="Red" ControlToValidate="TextBoxDepartment"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Asset Type:</td>
                <td class="auto-style1">
                    <asp:DropDownList ID="DropDownListType" runat="server" Width="180px">
                        <asp:ListItem>Select Asset Type</asp:ListItem>
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Black Berry Mobile Phone</asp:ListItem>
                        <asp:ListItem>Data Card</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Asset Type" ForeColor="Red" ControlToValidate="DropDownListType"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style3">Asset Serial Number:</td>
                <td>
                    <asp:TextBox ID="TextBoxSerial" runat="server" Width="180px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxSerial" ErrorMessage="Enter Asset Serial Number" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Submit" Width="180px" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
  </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 32px;
        }
    </style>
</asp:Content>

