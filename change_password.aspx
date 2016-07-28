<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="change_password.aspx.vb" Inherits="change_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 33px;
            width: 207px;
        }
        .auto-style6 {
            width: 187px;
        }
        .auto-style7 {
            width: 188px;
        }
        .auto-style8 {
            width: 207px;
        }
        .auto-style9 {
            height: 33px;
            width: 148px;
        }
        .auto-style10 {
            width: 148px;
        }
        .auto-style11 {
            height: 33px;
            width: 101px;
        }
        .auto-style12 {
            width: 101px;
        }
        .auto-style13 {
            height: 76px;
            width: 101px;
        }
        .auto-style14 {
            height: 76px;
            width: 148px;
        }
        .auto-style15 {
            height: 76px;
            width: 207px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="height: 530px; width: 1173px">
            <tr>
                <td class="auto-style13">

                </td>
                <td class="auto-style14">

                </td>
                <td class="auto-style15">

                </td>
                <td class="auto-style15">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; welcome
                    <asp:Label ID="lab_user" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style11">

                </td>
                <td class="auto-style9">

                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300" Text="Change Password "></asp:Label>

                </td>
                <td class="auto-style5">

                </td>
                <td class="auto-style5">

                    </td>
            </tr>

            <tr>
                <td class="auto-style12">

                    &nbsp;</td>
                <td class="auto-style10">

                    &nbsp;</td>
                <td class="auto-style8">

                    &nbsp;</td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style12">

                    &nbsp;</td>
                <td class="auto-style10">

                    Old Password

                </td>
                <td class="auto-style8">

                    <asp:TextBox ID="tb_oldpasssword" runat="server" Height="31px" Width="177px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_oldpasssword"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style12">

                    &nbsp;</td>
                <td class="auto-style10">

                    New Password</td>
                <td class="auto-style8">

                    <asp:TextBox ID="tb_newpassword" runat="server" Height="31px" Width="177px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="tb_newpassword"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style12">

                    &nbsp;</td>
                <td class="auto-style10">

                    Confirm Password

                </td>
                <td class="auto-style8">

                    <asp:TextBox ID="tb_confirmpassword" runat="server" Height="31px" Width="177px" TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_confirmpassword"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="compare1" runat="server" ControlToValidate="tb_newpassword" ControlToCompare="tb_confirmpassword" Operator="Equal" Type="String" ErrorMessage="Password is not matching" ForeColor="Red">
                                </asp:CompareValidator>
                </td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style12">

                    &nbsp;</td>
                <td class="auto-style10">

                    &nbsp;</td>
                <td class="auto-style8">

                    &nbsp;</td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

            <tr>
                <td class="auto-style12">

                </td>
                <td class="auto-style10">

                </td>
                <td class="auto-style8">

                    <asp:Button ID="But_submit" runat="server" Text="Submit " CssClass="btn" />

                </td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>

        </table>
</asp:Content>

