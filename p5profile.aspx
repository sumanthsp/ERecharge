﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="p5profile.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 791px;
        }

        .auto-style2 {
            width: 399px;
            height: 428px;
        }

        .auto-style3 {
            height: 143px;
        }

        .auto-style4 {
            width: 548px;
            height: 428px;
        }
    </style>
</head>
<body style="height: 743px">
    <form id="form1" runat="server">

        <asp:Panel ID="head" runat="server">
            <img alt="" class="irc_mi i9Xgqust8yYk-pQOPx8XEepE" src="http://www.easyrechargeonline.com/images/eroLOGO.gif" style="margin-top: 3px; width: 136px; height: 70px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;WELCOME <asp:label ID="Label1" runat="server" Height="22px" Style="margin-left: 0px" Width="109px"></asp:label>
            <asp:HyperLink ID="logout" runat="server" NavigateUrl="P1login.aspx">Logout</asp:HyperLink>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <hr />
        <asp:Panel ID="Panel1" runat="server" Height="44px">
            <asp:Button ID="Button3" runat="server" Height="35px" Text="HOME" Width="110px" />
            <asp:Button ID="Button4" runat="server" Height="35px" Text="ABOUT US" Width="110px" />
            <asp:Button ID="Button5" runat="server" Height="35px" Text="SUPPORT" Width="110px" />
            <asp:Button ID="Button6" runat="server" Height="35px" Text="BENEFITS" Width="110px" />
            <asp:Button ID="Button10" runat="server" Height="35px" Text="MY ACCOUNT" Width="110px" />
            <asp:Button ID="Button11" runat="server" Height="35px" Text="EDIT PROFILE" Width="110px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Height="35px" Text="ADMIN LOGIN" Width="110px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <hr />
        &nbsp;<table style="width: 1001px; height: 142px">
            <td class="auto-style3">&nbsp;&nbsp;&nbsp; MY ACCOUNT:<br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; USER NAME: 
                <asp:label ID="lab_name1" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>&nbsp;&nbsp;&nbsp;&nbsp; MOBILE NO: 
                <asp:label ID="lab_mob1" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>
                <br />
            </td>
        </table>
        <table>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btn_viewp" runat="server" Height="58px" Text="VIEW PROFILE" Width="195px" />
                    <br />
                    <asp:Button ID="btn_cpwd" runat="server" Height="58px" Text="CHANGE PASSWORD" Width="195px" />
                    <br />
                    <asp:Button ID="btn_viewth" runat="server" Height="58px" Text="VIEW TRANSACTION HISTORY" Width="195px" />
                    <br />
                    <asp:Button ID="btn_viewgc" runat="server" Height="58px" Text="VIEW GROWTH CHART" Width="195px" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <td class="auto-style4">
                    <br />
                    <table>
                        <tr>
                            <td>
                                My Profile:
                                <br />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Name:
                            </td>
                            <td>
                                <asp:label ID="lab_name" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Address:
                            </td>
                            <td>
                                <asp:label ID="lab_add" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                                Mobile Number:
                            </td>
                            <td>
                               <asp:label ID="lab_mob" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>
                            </td>
                        </tr>
                         <tr>
                            <td>
                               E-mail ID:
                            </td>
                            <td>
                               <asp:label ID="lab_email" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:label>
                            </td>
                        </tr>

                    </table>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
        </table>
        <br />
        <br />
        <br />



    </form>
</body>
</html>
