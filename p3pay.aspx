<%@ Page Language="VB" AutoEventWireup="false" CodeFile="p3pay.aspx.vb" Inherits="Default5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 959px;
        }

        .auto-style1 {
            width: 707px;
            height: 602px;
        }

        </style>
</head>
<body style="height: 870px">
    <form id="form1" runat="server">

        <asp:Panel ID="head" runat="server">
            <img alt="" class="irc_mi i9Xgqust8yYk-pQOPx8XEepE" src="http://www.easyrechargeonline.com/images/eroLOGO.gif" style="margin-top: 3px; width: 136px; height: 70px;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;WELCOME <asp:label ID="lab_name" runat="server" Height="22px" Style="margin-left: 0px" Width="109px"></asp:label>
            <asp:HyperLink ID="logout" runat="server" NavigateUrl="P1login.aspx">Logout</asp:HyperLink>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <hr />
        <asp:Panel ID="Panel1" runat="server" Height="44px">
            <asp:Button ID="Button3" runat="server" Height="35px" Text="HOME" Width="110px" />
            <asp:Button ID="Button4" runat="server" Height="35px" Text="ABOUT US" Width="110px" />
            <asp:Button ID="Button5" runat="server" Height="35px" Text="SUPPORT" Width="110px" />
            <asp:Button ID="Button6" runat="server" Height="35px" Text="BENEFITS" Width="110px" />
            <asp:Button ID="btn_myacc" runat="server" Height="35px" Text="MY ACCOUNT" Width="110px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button8" runat="server" Height="35px" Text="ADMIN LOGIN" Width="110px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
        <hr />
        &nbsp;<table style="height: 736px">
            <tr>
                <td class="auto-style1">ENTER MOBILE No:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txt_mob" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OPERATOR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:DropDownList ID="dd_op" runat="server" autopostback="true" Height="22px" Width="171px">
                   
                </asp:DropDownList>
                    <br />
                    <br />
                    RECHARGE TYPE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="dd_rt" runat="server" Height="22px" Width="171px">
                    <asp:ListItem Enabled="true" Text="Select recharge type" Value="-1"></asp:ListItem>
                    <asp:ListItem Text="TOP UP" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Special Recharge" Value="2"></asp:ListItem>
                </asp:DropDownList>
                    <br />
                    &nbsp;<br />
                    ENTER AMOUNT:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="dd_amt" runat="server" Height="22px" Style="margin-left: 0px" Width="163px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SELECT PAYMENT OPTION:<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="dd_payment" runat="server" Height="23px" Style="margin-top: 5px" Width="233px">
                        <asp:ListItem Enabled="true" Text="Select payment method" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="NET BANKING" Value="1"></asp:ListItem>
                        <asp:ListItem Text="DEBIT CARD" Value="2"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="dd_bank" runat="server" Height="23px" Style="margin-top: 5px" Width="233px">
                        <asp:ListItem Enabled="true" Text="Select bank" Value="-1"></asp:ListItem>
                        <asp:ListItem Text="HSBC" Value="1"></asp:ListItem>
                        <asp:ListItem Text="Indus Ind" Value="2"></asp:ListItem>
                        <asp:ListItem Text="SBI" Value="1"></asp:ListItem>
                        <asp:ListItem Text="BOI" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <asp:Button ID="btn_proceed" runat="server" Height="35px" Text="PROCEED" Width="110px" />
                </td>
                <td class="auto-style1">
                    <h3>Tariff plans:</h3>
                    <asp:DataGrid runat="server" ID="Dg1" PagerStyle-Visible="False"
                        ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
                        ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="849px">
                        <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
                        <EditItemStyle BackColor="#2461BF" />
                        <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
                        <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
                        <AlternatingItemStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="Amount">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Lbl_date" Text='<%# Bind("amount")%>' Height="30"></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Talk Time">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Lbl_mobile_number" Text='<%# Bind("talktime")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Validity">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Lbl_amt" Text='<%# Bind("validity")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                            <asp:TemplateColumn HeaderText="Description">
                                <ItemTemplate>
                                    <asp:Label runat="server" ID="Lbl_operator" Text='<%# Bind("description")%>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateColumn>
                        
                        </Columns>
                    </asp:DataGrid>
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
                    <br />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
    </form>
</body>
</html>
