<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="payment.aspx.vb" Inherits="payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 7px;
        }
        .auto-style5 {
        width: 160px;
    }
        .auto-style6 {
            width: 9px;
        }
        .auto-style7 {
            width: 11px;
        }
        .auto-style8 {
            width: 253px;
        }
        .auto-style9 {
            width: 292px;
        }
        .auto-style10 {
            width: 97px;
        }
        .auto-style11 {
            width: 187px;
        }
        .auto-style12 {
            height: 23px;
        }
        .auto-style13 {
            width: 255px;
        }
        .auto-style14 {
            width: 258px;
        }
        .auto-style15 {
            width: 259px;
        }
        .auto-style16 {
            width: 260px;
        }
        .auto-style17 {
            width: 293px;
        }
    .auto-style18 {
        width: 8px;
    }
    .auto-style19 {
        width: 12px;
    }
    .auto-style20 {
        width: 15px;
    }
    .auto-style21 {
        width: 731px;
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
             <td class="auto-style21">

            </td>
            <td> <span class="auto-style5">welcome</span>
                <asp:Label ID="lab_user" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
        </tr>
    </table>

     <table style="height: 719px; width: 1452px">
            <tr>
                <td class="auto-style4">&nbsp;<td class="auto-style10">        

        <table>
            <tr>
                <td>
                    <table style="width:729px; height: 532px;">
                

                     <tr><td class="auto-style9"></td> <td class="auto-style8" >

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          </td>
                         <td class="auto-style17" >

                             &nbsp;</td>
                         <td class="auto-style12" >

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                          </td>
                         <td class="auto-style12" >

                          </td>
                         <td class="auto-style20">

                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style9" align ="center"><strong>Payable Amount :</strong></td>
                         <td class="auto-style8">
                           
                             <asp:Label ID="amt" runat="server" ></asp:Label>
                           
                     </tr>
                         <td class="auto-style17">
                           
                             &nbsp;</tr>
                     <tr>
                         <td align ="center" class="auto-style9">&nbsp;&nbsp;<strong>Select Payment Method</strong>:</td>
                         <td class="auto-style8">

                             <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" AutoPostBack="true">
                                 <asp:ListItem Value="0">Net Banking</asp:ListItem>
                                 <asp:ListItem Value="1">Debit Card</asp:ListItem>
                             </asp:RadioButtonList>

                                  

                         </td>
                         <td class="auto-style17">

                             &nbsp;</td>
                     </tr>
                     <tr>
                         <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         <td class="auto-style8">

                             &nbsp;
                              <asp:Panel ID="Panel_netbanking" runat="server" Visible="false">
                                  <table>
                                      <tr>
                                          <td>
                                               <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="205px">
                                                <asp:ListItem>--select--</asp:ListItem>
                                                <asp:ListItem>SBI</asp:ListItem>
                                                <asp:ListItem>Andra Bank</asp:ListItem>
                                                <asp:ListItem>Bank Of America</asp:ListItem>
                                                <asp:ListItem>HDFC</asp:ListItem>
                                               </asp:DropDownList>
                                          </td>
                                      </tr>
                                  </table>
                                 
                             </asp:Panel> 

                             
                           
                         </td> 
                         <td class="auto-style17">

                                  <asp:Panel ID="Panel_debitcard" runat="server" Visible="false">
                                 <table>
                                     <tr>
                                         <td>
                                             <asp:DropDownList ID="dd_bank" runat="server" Height="29px" Width="205px">
                                             <asp:ListItem>--select--</asp:ListItem>
                                             <asp:ListItem>SBI</asp:ListItem>
                                             <asp:ListItem>Andra Bank</asp:ListItem>
                                             <asp:ListItem>Bank Of America</asp:ListItem>
                                             <asp:ListItem>HDFC</asp:ListItem>
                                             </asp:DropDownList>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td class="auto-style12">
                                             <asp:Label ID="Label1" runat="server" Text="Card Number"></asp:Label>
                                         </td>
                                     </tr>
                                     <tr>
                                         <td>
                                             <table>
                                                 <tr>
                                                     <td class="auto-style11">
                                                         <asp:TextBox ID="card1" runat="server" MaxLength="4" Width="37px" Height="25px" AutoPostBack="false"></asp:TextBox>
                                                         <asp:TextBox ID="card2" runat="server" MaxLength="4" Width="37px" Height="25px" AutoPostBack="false"></asp:TextBox>
                                                         <asp:TextBox ID="card3" runat="server" MaxLength="4" Width="37px" Height="25px" AutoPostBack="false"></asp:TextBox>
                                                         <asp:TextBox ID="card4" runat="server" MaxLength="4" Width="37px" Height="25px" AutoPostBack="false"></asp:TextBox>
                                                     </td>
                                                 </tr>
                                                 <table>
                                                     <tr>
                                                         <td>
                                                             <asp:Label ID="Label5" runat="server" Text="CVV"></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td>
                                                             <asp:TextBox ID="cvv" runat="server" MaxLength="3" Width="37px" Height="25px" AutoPostBack="false"></asp:TextBox>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td class="auto-style11">
                                                             <asp:Label ID="Label4" runat="server" Text="Expiry Date "></asp:Label>
                                                         </td>
                                                     </tr>
                                                     <tr>
                                                         <td class="auto-style11">
                                                             <asp:DropDownList ID="dd_expirydatemonth" runat="server">
                                                                 <asp:ListItem>month</asp:ListItem>
                                                                 <asp:ListItem>jan</asp:ListItem>
                                                                 <asp:ListItem>feb</asp:ListItem>
                                                                 <asp:ListItem>mar</asp:ListItem>
                                                                 <asp:ListItem>apr</asp:ListItem>
                                                             </asp:DropDownList>
                                                         </td>
                                                         <td>
                                                             <asp:DropDownList ID="dd_expirydateyear" runat="server">
                                                                 <asp:ListItem>year</asp:ListItem>
                                                                 <asp:ListItem>2016</asp:ListItem>
                                                                 <asp:ListItem>2017</asp:ListItem>
                                                                 <asp:ListItem>2018</asp:ListItem>
                                                                 <asp:ListItem>2019</asp:ListItem>
                                                             </asp:DropDownList>
                                                         </td>
                                                         <td>
                                                             <asp:TextBox ID="date" runat="server" AutoPostBack="false" Height="25px" MaxLength="2" Width="37px"></asp:TextBox>
                                                         </td>
                                                     </tr>
                                                 </table>
                                             </table>

                                         </td>
                                     </tr>
                                 </table>
                                   
                                  
                                  </td>
                                 </tr>
                                 </table>
                                   
                                  
                                  </asp:Panel>


                         </td> 
                     </tr>
                     <tr>
                         <td class="auto-style9">&nbsp;</td>
                         <td class="auto-style8">

                              
                             </td> 
                         <td class="auto-style17">
                              &nbsp;</td> 
                     </tr>
                     <tr>
                         <td class="auto-style9"></td>
                         <td class="auto-style8">
                            

                                  <td class="auto-style17">
                                      &nbsp;<td>
                                 <asp:Button ID="but_submit_amount" runat="server" Text="Submit" style="margin-left: 0px" Width="127px" Height="51px" cssclass="btn"/>

                             </td>
                             

                         </td>    
                        
                             <td>
                                 &nbsp;</td>
                             

                     </tr>
                     </table>
                 </td>
                <td class="auto-style13">

                    <table class="auto-style14">
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style16">
                                <asp:Label ID="Label2" runat="server" style="font-size: x-large; font-weight: 700" Text="Our Banks"></asp:Label>
                            </td>
                            <td class="auto-style24">&nbsp;</td>
                            <td class="auto-style15">&nbsp;</td>
                            <td class="auto-style15"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style18">
                                <asp:Image ID="Image2" runat="server" Height="147px" ImageUrl="~/images/index.png" Width="144px" />
                            </td>
                            <td class="auto-style25">&nbsp;</td>
                            <td class="auto-style19">
                                <asp:Image ID="Image4" runat="server" Height="162px" ImageUrl="~/images/ll.png" Width="114px" />
                            </td>
                            <td class="auto-style19"></td>
                        </tr>
                        <tr>
                            <td class="auto-style5">&nbsp;</td>
                            <td class="auto-style27">
                                <asp:Image ID="Image3" runat="server" Height="149px" ImageUrl="~/images/kjklkjnm.png" Width="118px" />
                            </td>
                            <td class="auto-style26">&nbsp;</td>
                            <td>
                                <asp:Image ID="Image5" runat="server" Height="126px" ImageUrl="~/images/images.png" Width="225px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>

                </td>
             </tr>
         </table>
                  </td>    
            </tr>
            </table>





</asp:Content>

