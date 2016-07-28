<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="user_account.aspx.vb" Inherits="user_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 17px;
        }
        .auto-style7 {
            width: 18px;
        }
        .auto-style20 {
            width: 311px;
            height: 367px;
        }
        .auto-style21 {
            width: 243px;
            height: 367px;
        }
        .auto-style22 {
            width: 53px;
        }
        .auto-style23 {
            width: 158px;
        }
        .auto-style24 {
            width: 108px;
        }
    .auto-style27 {
        width: 108px;
        height: 41px;
    }
    .auto-style28 {
        width: 158px;
        height: 41px;
    }
        .auto-style29 {
            width: 243px;
            height: 65px;
        }
        .auto-style30 {
            width: 1022px;
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
             <td class="auto-style30">

            </td>
            <td> <span class="auto-style5">welcome</span>
                <asp:Label ID="lab_user" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>
    
       <table style="height: 524px; width: 1148px">
           <tr>
               <td class="auto-style29"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; My account</td>
           </tr>

           <tr>
               <td class="auto-style21">
                   <table>
                       <tr><td class="auto-style22">
                           <asp:Button ID="but_viewprofile" runat="server" Text="View Profile" Width="209px"  Height="52px" cssclass="btn"  />
                           </td></tr>
                       <tr><td class="auto-style22">
                           <asp:Button ID="but_changepassword" runat="server"  Text="Change Password" Width="209px"  Height="52px" cssclass="btn" />
                           </td></tr>
                       <tr><td class="auto-style22">
                           <asp:Button ID="but_logout" runat="server" Text="Logout" Width="209px"  Height="52px" cssclass="btn"  />
                           </td></tr>
                   </table>
               </td>
               <td class="auto-style20"><table style="height: 125px; width: 394px">
                   <tr><td class="auto-style24">Name</td><td class="auto-style23">
                       <asp:Label ID="Lab_name" runat="server" Text="Display name"></asp:Label>
                       </td></tr>
                   <tr><td class="auto-style27">Today&#39;s Date</td><td class="auto-style28">
                       <asp:Label ID="lab_date" runat="server" Text="display today's date"></asp:Label>
                       </td></tr>
                   <tr><td class="auto-style24"></td><td class="auto-style23"></td></tr>
                    </table></td>
           </tr>
           <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="label_transcation" runat="server" Text="Transaction History" ForeColor="#FF0066" style="font-size: large"></asp:Label>
                </td>

           </tr>

       </table>
  
               

      <asp:DataGrid runat="server" ID="Dg1" PagerStyle-Visible="False"
            ShowFooter="False" AutoGenerateColumns="False" ItemStyle-BorderStyle="Dashed"
            ItemStyle-BorderColor="green" CellPadding="4" ForeColor="#333333" GridLines="Both" Height="339px" Width="849px">
            <HeaderStyle Font-Bold="True" ForeColor="White" BackColor="#507CD1" CssClass="Input"></HeaderStyle>
            <EditItemStyle BackColor="#2461BF" />
            <FooterStyle ForeColor="White" BackColor="#507CD1" CssClass="LAS_Input_DataGrid_Header" Font-Bold="True"></FooterStyle>
            <ItemStyle BorderStyle="None" CssClass="LAS_Input_DataGrid_Item" BackColor="#EFF3FB"></ItemStyle>
            <AlternatingItemStyle BackColor="White" />
            <Columns>
                <asp:TemplateColumn HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="Lbl_date" Text='<%# Bind("date")%>' Height="30"></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Mobile Number">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="Lbl_mobile_number" Text='<%# Bind("mobile_number")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Recharge Amount">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="Lbl_amt" Text='<%# Bind("amount")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn HeaderText="Operator">
                    <ItemTemplate>
                        <asp:Label runat="server" ID="Lbl_operator" Text='<%# Bind("oname")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateColumn>
                 </Columns>
        </asp:DataGrid>
        
</asp:Content>

