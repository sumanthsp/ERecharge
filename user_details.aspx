<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="user_details.aspx.vb" Inherits="user_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 97px;
            width: 87px;
        }
        .auto-style2 {
            height: 96px;
        }
        .auto-style5 {
            height: 93px;
        }
        .auto-style6 {
            height: 92px;
        }
        .auto-style7 {
            height: 91px;
        }
        .auto-style8 {
            height: 90px;
        }
        .auto-style9 {
            height: 88px;
        }
        .auto-style18 {
            height: 64px;
        }
        .auto-style19 {
            height: 50px;
        }
        .auto-style20 {
            height: 82px;
        }
        .auto-style21 {
            height: 32px;
        }
        .auto-style22 {
            height: 53px;
        }
        .auto-style23 {
            height: 46px;
        }
        .auto-style24 {
            height: 41px;
        }
        .auto-style26 {
            height: 64px;
            width: 214px;
        }
        .auto-style27 {
            height: 50px;
            width: 214px;
        }
        .auto-style28 {
            height: 82px;
            width: 214px;
        }
        .auto-style29 {
            height: 46px;
            width: 214px;
        }
        .auto-style30 {
            height: 41px;
            width: 214px;
        }
        .auto-style31 {
            height: 90px;
            width: 214px;
        }
        .auto-style33 {
            height: 64px;
            width: 145px;
        }
        .auto-style34 {
            height: 50px;
            width: 145px;
        }
        .auto-style35 {
            height: 82px;
            width: 145px;
        }
        .auto-style36 {
            height: 46px;
            width: 145px;
        }
        .auto-style37 {
            height: 41px;
            width: 145px;
        }
        .auto-style38 {
            height: 91px;
            width: 145px;
        }
        .auto-style39 {
            height: 94px;
            width: 1020px;
        }
        .auto-style40 {
            height: 28px;
        }
        .auto-style41 {
            height: 64px;
            width: 190px;
        }
        .auto-style42 {
            height: 50px;
            width: 190px;
        }
        .auto-style43 {
            height: 82px;
            width: 190px;
        }
        .auto-style44 {
            height: 32px;
            width: 190px;
        }
        .auto-style45 {
            height: 53px;
            width: 190px;
        }
        .auto-style46 {
            height: 46px;
            width: 190px;
        }
        .auto-style47 {
            height: 41px;
            width: 190px;
        }
        .auto-style48 {
            height: 93px;
            width: 190px;
        }
        .auto-style50 {
            height: 12px;
            width: 190px;
        }
        .auto-style51 {
            height: 12px;
            width: 145px;
        }
        .auto-style52 {
            height: 12px;
            width: 214px;
        }
        .auto-style53 {
            height: 12px;
        }
        .auto-style58 {
            height: 32px;
            width: 87px;
        }
        .auto-style59 {
            height: 53px;
            width: 87px;
        }
        .auto-style60 {
            height: 12px;
            width: 87px;
        }
        .auto-style61 {
            height: 64px;
            width: 87px;
        }
        .auto-style62 {
            height: 50px;
            width: 87px;
        }
        .auto-style63 {
            height: 82px;
            width: 87px;
        }
        .auto-style64 {
            height: 46px;
            width: 87px;
        }
        .auto-style65 {
            height: 41px;
            width: 87px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table>
        <tr>
            <td class="auto-style40">

            </td>
        </tr>
        <tr>
            <td>

            </td>
             <td class="auto-style39">

            </td>
            <td> <span class="auto-style5">welcome</span>
                <asp:Label ID="lab_user" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    <asp:Panel ID="panel_1" runat="server" Visible ="true" >
    <table style="height: 728px; width: 1169px">
            <tr>
                <td class="auto-style60">

                </td>
                <td class="auto-style50">

                </td>
                <td class="auto-style51">

                </td>
                <td class="auto-style52">

                </td>
                <td class="auto-style53">

                    </td>
            </tr>
            <tr>
                <td class="auto-style61">

                    </td>
                <td class="auto-style41">

                    <strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style9" Text="My Details"></asp:Label>
                    </strong>

                </td>
                <td class="auto-style33">

                    </td>
                <td class="auto-style26">

                    </td>
                <td class="auto-style18">

                    <asp:Button ID="but_edit" runat="server" cssclass="btn" Height="49px" Text="Edit Details" Width="166px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style62">

                    </td>
                <td class="auto-style42">

                    </td>
                <td class="auto-style34">

                    Name:</td>
                <td class="auto-style27">

                    <asp:Label ID="lab_name" runat="server" ></asp:Label>

                </td>
                <td class="auto-style19">

                    </td>
            </tr>
            <tr>
                <td class="auto-style63">

                </td>
                <td class="auto-style43">

                </td>
                <td class="auto-style35">

                    Address:</td>
                <td class="auto-style28">

                    <asp:Label ID="lab_address" runat="server" ></asp:Label>

                </td>
                <td class="auto-style20">

                </td>
            </tr>
            <tr>
                <td class="auto-style58">

                    </td>
                <td class="auto-style44">

                    </td>
                <td class="auto-style34">

                    State:</td>
                <td class="auto-style27">

                    <asp:Label ID="lab_state" runat="server" ></asp:Label>

                </td>
                <td class="auto-style21">

                    </td>
            </tr>
            <tr>
                <td class="auto-style59">

                </td>
                <td class="auto-style45">

                </td>
                <td class="auto-style34">

                    City:</td>
                <td class="auto-style27">

                    <asp:Label ID="lab_city" runat="server" ></asp:Label>

                </td>
                <td class="auto-style22">

                    </td>
            </tr>
            <tr>
                <td class="auto-style64">

                    </td>
                <td class="auto-style46">

                    </td>
                <td class="auto-style36">

                    Mobile Number:</td>
                <td class="auto-style29">

                    <asp:Label ID="lab_mobile" runat="server" ></asp:Label>

                </td>
                <td class="auto-style23">

                    </td>
            </tr>
            <tr>
                <td class="auto-style65">

                    </td>
                <td class="auto-style47">

                    </td>
                <td class="auto-style37">

                    Email ID:</td>
                <td class="auto-style30">

                    <asp:Label ID="lab_email" runat="server"></asp:Label>

                </td>
                <td class="auto-style24">

                    </td>
            </tr>
            <tr>
                <td class="auto-style1">

                    &nbsp;</td>
                <td class="auto-style48">

                    &nbsp;</td>
                <td class="auto-style38">

                    &nbsp;</td>
                <td class="auto-style31">

                    &nbsp;</td>
                <td class="auto-style8">

                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="panel2" runat="server" Visible ="false" >

        <table style="height: 728px; width: 1169px">
            <tr>
                <td class="auto-style60">

                </td>
                <td class="auto-style50">

                </td>
                <td class="auto-style51">

                </td>
                <td class="auto-style52">

                </td>
                <td class="auto-style53">

                    </td>
            </tr>
            <tr>
                <td class="auto-style61">

                    </td>
                <td class="auto-style41">

                    <strong> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="My Details"></asp:Label>
                    </strong>

                </td>
                <td class="auto-style33">

                    </td>
                <td class="auto-style26">

                    </td>
                <td class="auto-style18">

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style62">

                    </td>
                <td class="auto-style42">

                    </td>
                <td class="auto-style34">

                    Name:</td>
                <td class="auto-style27">

                    <asp:TextBox ID="tb_name" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style19">

                    </td>
            </tr>
            <tr>
                <td class="auto-style63">

                </td>
                <td class="auto-style43">

                </td>
                <td class="auto-style35">

                    Address:</td>
                <td class="auto-style28">

                    <asp:TextBox ID="tb_address" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style20">

                </td>
            </tr>
            <tr>
                <td class="auto-style58">

                    </td>
                <td class="auto-style44">

                    </td>
                <td class="auto-style34">

                    State:</td>
                <td class="auto-style27">

                    <asp:TextBox ID="tb_state" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style21">

                    </td>
            </tr>
            <tr>
                <td class="auto-style59">

                </td>
                <td class="auto-style45">

                </td>
                <td class="auto-style34">

                    City:</td>
                <td class="auto-style27">

                    <asp:TextBox ID="tb_city" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style22">

                    </td>
            </tr>
            <tr>
                <td class="auto-style64">

                    </td>
                <td class="auto-style46">

                    </td>
                <td class="auto-style36">

                    Mobile Number:</td>
                <td class="auto-style29">

                    <asp:TextBox ID="tb_mobile" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style23">

                    </td>
            </tr>
            <tr>
                <td class="auto-style65">

                    </td>
                <td class="auto-style47">

                    </td>
                <td class="auto-style37">

                    Email ID:</td>
                <td class="auto-style30">

                    <asp:TextBox ID="tb_email" runat ="server" Height="21px" Width="159px" />

                </td>
                <td class="auto-style24">

                    </td>
            </tr>
            <tr>
                <td class="auto-style1">

                    &nbsp;</td>
                <td class="auto-style48">

                    &nbsp;</td>
                <td class="auto-style38">

                    &nbsp;</td>
                <td class="auto-style31">

                    &nbsp;</td>
                <td class="auto-style8">

                    <asp:Button ID="but_save" runat="server" Height="51px" Text="Save" Width="99px" cssclass="btn" />

                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

