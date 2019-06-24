<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchAsset.aspx.cs" Inherits="ITAssetManagementTool.SearchAsset" MasterPageFile="~/MasterPage.Master" %>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="auto-style1">
            <strong><span class="auto-style2">Enter Employee Details to trace Asset History:</span></strong><br />
            <br />
            <br />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Enter Asset Serial Number:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBoxSerialNo" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxSerialNo" ErrorMessage="Enter Asset Serial No" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" Width="50px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Assigned to Employee_ID:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Assigned to Employee_Name:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox3" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Employee&#39;s Department</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox4" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Asset Type:</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox5" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
 
    </asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: medium;
        }
    </style>
</asp:Content>
