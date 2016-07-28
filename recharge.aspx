<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="recharge.aspx.vb" Inherits="recharge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 92px;
        }
        .auto-style4 {
            width: 1016px;
        }
        .auto-style5 {
            font-size: large;
        }
    .auto-style6 {
        height: 23px;
    }
    .auto-style7 {
        height: 24px;
    }
    .auto-style8 {
        height: 25px;
    }
    .auto-style9 {
        height: 53px;
    }
        .auto-style10 {
            height: 33px;
            width: 226px;
        }
        .auto-style11 {
            height: 25px;
            width: 226px;
        }
        .auto-style12 {
            height: 23px;
            width: 226px;
        }
        .auto-style13 {
            width: 226px;
        }
        .auto-style15 {
            width: 991px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table>
        <tr>
            <td class="auto-style9">

            </td>
        </tr>
        <tr>
            <td>

            </td>
             <td class="auto-style4">

            </td>
            <td> <span class="auto-style5">welcome</span>
                <asp:Label ID="lab_user" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    <table style="height: 696px; width: 1093px">
            <tr>
                <td class="auto-style1">&nbsp;<td class="auto-style15">

        <table>
            <tr>
                <td>
                    <table style="width:699px; height: 368px;">
                

                     <tr><td class="auto-style13"></td> <td >

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          </td>
                     </tr>
                     <tr>
                         <td class="auto-style10" align ="center"><strong>&nbsp;Enter Mobile Number:</strong></td>
                         <td class="auto-style2"><asp:TextBox ID="tb_mobileno" runat="server"  Width="227px" Height="30px"></asp:TextBox>

                              
                            <asp:RegularExpressionValidator runat="server" ID="regexp_mobile" ControlToValidate="tb_mobileno" ErrorMessage="Enter a valid mobile number" Display="Dynamic" ValidationExpression="[0-9]{10}">
                                </asp:RegularExpressionValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style11" align ="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <strong>Select Operator</strong>:</td>
                         <td class="auto-style8">
                             
                             <asp:DropDownList ID="dd_operator" runat="server" AutoPostBack="True">
                             </asp:DropDownList>

                             <asp:Label ID="Label1" runat="server" Text="Select Operator to display tariff plan"></asp:Label>

                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;&nbsp;&nbsp; Enter TopUp Amount:</strong></td>
                         <td class="auto-style6">

                             <asp:TextBox ID="tb_amount" runat="server" Width="227px" Height="30px"> </asp:TextBox>
                             

                         </td> 
                     </tr>
                     <tr>
                         <td class="auto-style13"></td>
                         <td>
                             <td>
                                 <asp:Button ID="but_submit_amount" runat="server" Text="Submit" style="margin-left: 0px" Width="116px" Height="49px" cssclass="btn" CausesValidation ="true" />

                             </td>
                             

                         </td> 
                         
                        
                     </tr>
                     </table>               
                </td>
                    &nbsp;<td class="auto-style15">

                        <asp:DataGrid runat="server" ID="Dg1" PagerStyle-Visible="False"
            ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
            ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="849px">
            <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
            <EditItemStyle BackColor="#2461BF" />
            <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
            <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
            <AlternatingItemStyle BackColor="White" />
            <Columns>
                <asp:TemplateColumn HeaderText="MRP">
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
                  </td>
                </tr>
            </table>

                </td>  
                    </td>
                    </tr>
            </table> 

                        
                        
</asp:Content>

