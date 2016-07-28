<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="register.aspx.vb" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 25px;
        }

        .auto-style2 {
            height: 26px;
        }

        .auto-style3 {
            height: 27px;
        }

        .auto-style4 {
            height: 28px;
        }
        .auto-style5 {
            width: 526px;
        }
        .auto-style6 {
            width: 514px;
        }
        .auto-style7 {
            width: 508px;
        }
        .auto-style8 {
            width: 493px;
        }
    .auto-style9 {
        width: 12px;
    }
    .auto-style10 {
        width: 147px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">


    <table style="height: 747px; width: 1256px">
        <tr>
            <td class="auto-style26"></td>
        </tr>

        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style3">
                <asp:Image ID="Image2" runat="server" Height="504px" Width="389px" ImageUrl="~/images/Untitled.jpg" style="margin-top: 0px" />

            </td>
            <td class="auto-style10"></td>

            <td class="auto-style4">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style5"><span class="auto-style13"><strong>&nbsp; Personal Details: </strong></span></td>
                        <td class="auto-style8">&nbsp;</td>
                        <td class="auto-style2"></td>
                    </tr>
                    <tr>
                        <td class="auto-style4">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"><span class="auto-style13">Name</span>:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_name" runat="server" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="name_validator" runat="server" ControlToValidate="tb_name"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                        <td class="auto-style11">&nbsp;&nbsp;&nbsp; Gender: </td>
                    </tr>
                    <tr>
                        <td class="auto-style14"><span class="auto-style13">Address</span>:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_address" TextMode="MultiLine" runat="server" Height="67px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tb_address"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        
                        <td class="auto-style16">
                            <asp:RadioButtonList ID="rb_gender" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><span class="auto-style13">State</span>:</td>
                        <td class="auto-style8">

                            <asp:DropDownList ID="dd_state" runat="server" Height="29px" Width="205px">
                                <asp:ListItem Value="0">--select--</asp:ListItem>
                                <asp:ListItem Value="1">Karnataka</asp:ListItem>
                                <asp:ListItem Value="2">Maharastra</asp:ListItem>
                                <asp:ListItem Value="3">Telangana</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td class="auto-style24"></td>
                    </tr>
                    <tr>
                        <td class="auto-style17"><span class="auto-style13">City</span>:</td>
                        <td class="auto-style8">

                            <asp:TextBox ID="tb_city" runat="server" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb_city"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                         </td>  


                            <td class="auto-style19"></td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Mobile Number:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_mobile" runat="server" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tb_mobile"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator runat="server" ID="regexp_mobile" ControlToValidate="tb_mobile" ErrorMessage="Enter a valid mobile number" Display="Dynamic" ValidationExpression="[0-9]{10}">
                                </asp:RegularExpressionValidator>
                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Email ID:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_emailid" runat="server" TextMode="Email" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tb_emailid"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                        </td>
                        
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Password:</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_password" TextMode="Password" runat="server" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tb_password"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6"><span class="auto-style13">Confirm</span><br class="auto-style13" />
                            <span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Password :</span></td>
                        <td class="auto-style8">
                            <asp:TextBox ID="tb_confirmpassword" TextMode="Password" runat="server" Height="29px" Width="205px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="tb_confirmpassword"
                                ErrorMessage="This field can not be empty" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="compare1" runat="server" ControlToValidate="tb_password" ControlToCompare="tb_confirmpassword" Operator="Equal" Type="String" ErrorMessage="Password is not matching" ForeColor="Red">
                                </asp:CompareValidator>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">&nbsp;</td>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:Button ID="but_register" runat="server" Height="52px" Text="Register" Width="139px" Font-Bold="True" CssClass="btn" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

</asp:Content>

