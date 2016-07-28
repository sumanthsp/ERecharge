<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="home.aspx.vb" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
    <asp:Panel ID="panel_test" runat="server" BackColor="">
    <table>
                
                <td class="auto-style1" >
                    &nbsp&nbsp<asp:Image ID="Image2" runat="server" Height="494px" Width="1030px" ImageUrl="~/images/business-proposal-online-recharge-business-2-638.jpg" />

                </td>
                <td>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               </td>
                 
                
                <td>
                    
                    <asp:Button ID="but_login" runat="server" Text="Login" Height="50px" Width="250px" Font-Bold="True" Font-Size="Larger" PostBackUrl="~/login.aspx" CssClass="btn" />
                    <table>
                        <td>
                             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                        </td>
                        <tr>
                          <td>
                        <asp:Button ID="but_register" runat="server" Text="Register" Height="58px" Width="250px" Font-Bold="True" Font-Size="Larger" PostBackUrl="~/register.aspx" cssclass="btn" />
                    
                          </td>
               
                            </tr>
                    </table>
                            

                </td>
                <tr>
                    <td class="auto-style1">
                        <h1 align="center";margin-top: 3.0em;margin-bottom: 3.0em;>
                                Our Service Providers</h1>

                    </td>
                       
                </tr>
             </table>

        </asp:Panel>
    <table>
                <tr>
                     <td class="auto-style1">
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Image ID="Image4" runat="server" Height="206px" Width="251px" ImageUrl="~/images/airtel-new-logo-ver.jpg" />
                          <asp:Image ID="Image5" runat="server" Height="206px" Width="259px" ImageUrl="~/images/unnamed.png" />
                          <asp:Image ID="Image8" runat="server" Height="206px" Width="204px" ImageUrl="~/images/Vodafone-logo-7bf8678a84333f562c2d99ac66b3a8cb.jpg" />
                         <asp:Image ID="Image9" runat="server" Height="206px" Width="204px" ImageUrl="~/images/1024px-Idea_Cellular_Logo.png" />
                     
                      </td>

                </tr>
                  
               </table> 
                   
       

</asp:Content>

