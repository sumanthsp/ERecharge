<%@ Page Language="VB" AutoEventWireup="false" CodeFile="report.aspx.vb" Inherits="report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            width: 593px;
        }

        .auto-style3 {
            width: 577px;
        }

        .auto-style4 {
            width: 131px;
            height: 48px;
        }

        .auto-style5 {
            width: 131px;
            height: 23px;
        }

        .auto-style6 {
            height: 23px;
        }

        .auto-style7 {
            width: 131px;
            height: 71px;
        }

        .auto-style8 {
            height: 71px;
        }

        .auto-style9 {
            height: 48px;
        }

        .auto-style10 {
            width: 235px;
            height: 71px;
        }

        .auto-style11 {
            width: 235px;
            height: 23px;
        }

        .auto-style12 {
            width: 235px;
            height: 48px;
        }

        .auto-style13 {
            width: 289px;
        }

        .auto-style14 {
            width: 216px;
        }

        .auto-style15 {
            width: 215px;
        }

        .auto-style16 {
            width: 68px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table>

                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl="~/images/new_logo.png" Width="646px" />
                    </td>
                    <td class="auto-style1">
                        <table class="auto-style2">
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style3">&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label1" runat="server" Text="Welcome Admin |" ForeColor="#009933"></asp:Label>
                                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

            <hr>




            <table class="auto-style1">
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style7"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style5"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style4">
                        <asp:Label ID="Label2" runat="server" Style="font-size: large" Text="Select Operator :"></asp:Label>&nbsp;

                    </td>
                    <td class="auto-style12">
                        <asp:DropDownList ID="dd_operator" runat="server" AutoPostBack="True" Height="31px" Width="109px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:Label ID="Label3" runat="server" Style="font-size: large" Text="Select type of report"></asp:Label>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style12">
                        <asp:RadioButtonList ID="rb_report" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
                            <asp:ListItem Value="1">Daily</asp:ListItem>
                            <asp:ListItem Value="2">Monthly</asp:ListItem>
                            <asp:ListItem Value="3">Yearly</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>


            <asp:Panel ID="Panel_year" runat="server" Visible="false">
                <table>

                    <tr>
                        <td class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:DataGrid runat="server" ID="Dg1" PagerStyle-Visible="False"
                                ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
                                ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="202px">
                                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
                                <EditItemStyle BackColor="#2461BF" />
                                <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
                                <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
                                <AlternatingItemStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Total Recharge Amount">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_amount" Text='<%# Bind("amount")%>' Height="30"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Year">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_date" Text='<%# Bind("month")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </td>
                    </tr>
                </table>

            </asp:Panel>

            <asp:Panel ID="Panel_monthly" runat="server" Visible="false">
                <table>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">Enter year: </td>
                        <td class="auto-style14">
                            <asp:TextBox ID="tb_monthly" runat="server" Height="30px" Width="227px"> </asp:TextBox>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style14">
                            <asp:Button ID="but_submit_amount" runat="server" CausesValidation="true" CssClass="btn" Height="49px" Style="margin-left: 0px" Text="Submit" Width="116px" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:DataGrid runat="server" ID="DataGrid1" PagerStyle-Visible="False"
                                ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
                                ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="202px">
                                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
                                <EditItemStyle BackColor="#2461BF" />
                                <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
                                <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
                                <AlternatingItemStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Total Recharge Amount">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_amount" Text='<%# Bind("amount")%>' Height="30"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="Month">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_date" Text='<%# Bind("month")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>

                </table>
            </asp:Panel>

            <asp:Panel ID="Panel_daily" runat="server" Visible="false">

                <table>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">Select Year: </td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="dd_year" runat="server" AutoPostBack="True" Height="31px" Width="109px">
                                <asp:ListItem >2016</asp:ListItem>
                                <asp:ListItem >2015</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                     <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">Select Month: </td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="dd_month" runat="server" AutoPostBack="True" Height="31px" Width="109px">
                                <asp:ListItem Value ="1" >Jan</asp:ListItem>
                                <asp:ListItem Value="2">Feb</asp:ListItem>
                                <asp:ListItem Value="3">mar</asp:ListItem>
                                <asp:ListItem Value="4">apr</asp:ListItem>
                                <asp:ListItem Value="5">may</asp:ListItem>
                                <asp:ListItem Value="6">Jun</asp:ListItem>
                                <asp:ListItem Value="7">Jul</asp:ListItem>
                                <asp:ListItem Value="8">Aug</asp:ListItem>
                                <asp:ListItem Value="9">Sep</asp:ListItem>
                                <asp:ListItem Value="10">Oct</asp:ListItem>
                                <asp:ListItem Value="11">nov</asp:ListItem>
                                <asp:ListItem Value="12">Dec</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                        <td class="auto-style14">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style14">&nbsp;</td>
                        <td class="auto-style16">&nbsp;</td>
                        <td class="auto-style14">
                            <asp:Button ID="but_sumbit" runat="server" CausesValidation="true" CssClass="btn" Height="49px" Style="margin-left: 0px" Text="Submit" Width="116px" />
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <asp:DataGrid runat="server" ID="DataGrid2" PagerStyle-Visible="False"
                                ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
                                ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="202px">
                                <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
                                <EditItemStyle BackColor="#2461BF" />
                                <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
                                <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
                                <AlternatingItemStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateColumn HeaderText="Total Recharge Amount">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_amount" Text='<%# Bind("amount")%>' Height="30"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                    <asp:TemplateColumn HeaderText="day">
                                        <ItemTemplate>
                                            <asp:Label runat="server" ID="Lbl_date" Text='<%# Bind("day")%>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateColumn>
                                </Columns>
                            </asp:DataGrid>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>

                </table>

            </asp:Panel>

        </div>
    </form>
</body>
</html>
