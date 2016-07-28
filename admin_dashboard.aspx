<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin_dashboard.aspx.vb" Inherits="admin_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .btn {
  background: #34add9;
  background-image: -webkit-linear-gradient(top, #34add9, #2980b9);
  background-image: -moz-linear-gradient(top, #34add9, #2980b9);
  background-image: -ms-linear-gradient(top, #34add9, #2980b9);
  background-image: -o-linear-gradient(top, #34add9, #2980b9);
  background-image: linear-gradient(to bottom, #34add9, #2980b9);
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0px;
  font-family: Arial;
  color: #ffffff;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  text-decoration: none;
}

.btn:hover {
  background: #3c5ffc;
  background-image: -webkit-linear-gradient(top, #3c5ffc, #3498db);
  background-image: -moz-linear-gradient(top, #3c5ffc, #3498db);
  background-image: -ms-linear-gradient(top, #3c5ffc, #3498db);
  background-image: -o-linear-gradient(top, #3c5ffc, #3498db);
  background-image: linear-gradient(to bottom, #3c5ffc, #3498db);
  text-decoration: none;
}
        .auto-style1 {
            width: 512px;
        }
        .auto-style2 {
            width: 122%;
        }
        .auto-style3 {
            width: 67px;
        }
        .auto-style4 {
            height: 48px;
        }
        .auto-style5 {
            height: 48px;
            width: 128px;
        }
        .auto-style6 {
            width: 128px;
            height: 35px;
        }
        .auto-style7 {
            width: 128px;
            height: 50px;
        }
        .auto-style8 {
            height: 50px;
        }
        .auto-style9 {
            height: 48px;
            width: 151px;
        }
        .auto-style10 {
            height: 50px;
            width: 151px;
        }
        .auto-style11 {
            width: 151px;
            height: 35px;
        }
        .auto-style12 {
            height: 35px;
        }
        .auto-style13 {
            height: 48px;
            width: 90px;
        }
        .auto-style14 {
            height: 50px;
            width: 90px;
        }
        .auto-style15 {
            width: 90px;
            height: 35px;
        }
        .auto-style16 {
            height: 101px;
            width: 128px;
        }
        .auto-style17 {
            height: 101px;
            width: 151px;
        }
        .auto-style18 {
            height: 101px;
            width: 90px;
        }
        .auto-style19 {
            height: 101px;
        }
        .auto-style20 {
            width: 100%;
        }
        .auto-style22 {
            width: 779px;
        }
        .auto-style23 {
            width: 300px;
        }
        .auto-style24 {
            width: 156px;
            height: 38px;
        }
        .auto-style25 {
            width: 193px;
            height: 38px;
        }
        .auto-style26 {
            width: 156px;
            height: 46px;
        }
        .auto-style27 {
            width: 193px;
            height: 46px;
        }
        .auto-style28 {
            width: 156px;
            height: 43px;
        }
        .auto-style29 {
            width: 193px;
            height: 43px;
        }
        .auto-style30 {
            width: 156px;
            height: 37px;
        }
        .auto-style31 {
            width: 193px;
            height: 37px;
        }
        .auto-style32 {
            width: 156px;
            height: 35px;
        }
        .auto-style33 {
            width: 193px;
            height: 35px;
        }
        .auto-style34 {
            width: 156px;
            height: 44px;
        }
        .auto-style35 {
            width: 193px;
            height: 44px;
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
                                      <td>
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Welcome Admin |" ForeColor="#009933"></asp:Label>
                                          <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Red" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
                                      </td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
          </table>

        <hr>
   
        <asp:Label ID="lab_dash" runat="server" Text="Admin Dashboard" style="font-size: x-large"></asp:Label>
       

        
         <table class="auto-style2">
             <tr>
                 <td class="auto-style5">
                     <asp:Button ID="but_report" runat="server" Text="Report" CssClass =" btn " />
                 </td>
                 <td class="auto-style5"></td>
                 <td class="auto-style9">&nbsp;</td>
                 <td class="auto-style13"></td>
                 <td class="auto-style4">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style7">&nbsp;</td>
                 <td class="auto-style7">
                     <asp:Label ID="Label2" runat="server" style="font-size: large" Text="Select Operator :"></asp:Label>
                 </td>
                 <td class="auto-style10">
                     <asp:DropDownList ID="dd_operator" runat="server" AutoPostBack="True" Height="31px" Width="109px">
                         



                     </asp:DropDownList>
                 </td>
                 <td class="auto-style14"></td>
                 <td class="auto-style8">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style6"></td>
                 <td class="auto-style6"></td>
                 <td class="auto-style11"></td>
                 <td class="auto-style15">
                     <asp:Button ID="but_add_operator" runat="server" Text="Add Operator " CssClass="btn" />
                 </td>
                 <td class="auto-style12">&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style16"></td>
                 <td class="auto-style16"></td>
                 <td class="auto-style17"></td>
                 <td class="auto-style18"></td>
                 <td class="auto-style19">
                      <asp:Panel ID="Panel_add_operator" runat="server" Visible="false">

                          <table>
                              <tr>
                                  <td>
                                      Enter Operator Name:
                                  </td>
                                  <td>
                                      <asp:TextBox ID="tb_oname" runat="server" Height="29px" Width="205px"></asp:TextBox>
                                  </td>
                                    </tr>
                                  <tr>
                                  <td>
                                      Enter Operator ID:
                                  </td>
                                  <td>
                                      <asp:TextBox ID="tb_oid" runat="server" Height="29px" Width="205px"></asp:TextBox>
                                  </td>
                                      </tr>
                               <tr>
                                  <td>
                                      Enter Operator address:
                                  </td>
                                  <td>
                                      <asp:TextBox ID="tb_oaddress" runat="server" Height="29px" Width="205px"></asp:TextBox>
                                  </td>
                                      </tr>
                            

                              <tr>
                                  <td>&nbsp;</td>
                                  <td>
                                      <asp:Button ID="but_add_operator0" runat="server" CssClass="btn" Text="Add " CausesValidation ="false"  />
                                  </td>
                              </tr>
                            

                          </table>
      
                       </asp:Panel>




                 </td>
             </tr>
         </table>
       
        <asp:Panel ID="Panel_tariffplan" runat="server" Visible="false">
        <table class="auto-style20">
            <tr>
                <td class="auto-style22">
                    <asp:Label ID="Label3" runat="server" ForeColor="#003366" style="font-size: large" Text=" Tariff Plan"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;
                    <asp:DataGrid runat="server" ID="Dg1" PagerStyle-Visible="False" OnItemCommand="grid_click"
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
                        <asp:Label runat="server" ID="Lbl_amount" Text='<%# Bind("amount")%>' Height="30"></asp:Label>
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

                <asp:TemplateColumn>
                <ItemTemplate>
                        <asp:Button ID="but_delete" runat="server" CssClass="btn" Text="Delete" CausesValidation ="false" CommandName ="delete_command" />
                    </ItemTemplate>
                    </asp:TemplateColumn>
                 </Columns>
        </asp:DataGrid>

                    
                </td>           
            </tr>
           
        </table>
            <table>
                 <tr>
                     <td class="auto-style23">

                     </td>
                 
                <td>
                    <asp:Button ID="but_update" runat="server" CssClass="btn" Text="Update Tariff  " />
                </td>
            </tr>
            </table>
       </asp:Panel>

        <asp:Panel ID="Panel_addnew" runat="server" Visible="false">
            <table>
                <tr>
                    <td class="auto-style26">

                        &nbsp;</td>
                    <td class="auto-style26">Enter Tariff ID :</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="tb_tdi" runat="server" Height="29px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">&nbsp;</td>
                    <td class="auto-style28">Enter MRP :</td>
                    <td class="auto-style29">
                        <asp:TextBox ID="tb_mrp" runat="server" Height="29px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">&nbsp;</td>
                    <td class="auto-style34">Enter Talktime :</td>
                    <td class="auto-style35">
                        <asp:TextBox ID="tb_talktime" runat="server" Height="29px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style32">&nbsp;</td>
                    <td class="auto-style32">Enter Validity :</td>
                    <td class="auto-style33">
                        <asp:TextBox ID="tb_validity" runat="server" Height="29px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">Enter Description :</td>
                    <td class="auto-style25">
                        <asp:TextBox ID="tb_description" runat="server" Height="29px" Width="205px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style25">
                        <asp:Button ID="btu_submit" runat="server" Text="Submit" CssClass ="btn" />
                    </td>
                </tr>
            </table>

        </asp:Panel>


 </div>
       

    </form>
</body>
</html>
