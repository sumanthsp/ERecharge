<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="login.aspx.vb" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 10px;
            height: 14px;
        }
        .auto-style2 {
            width: 11px;
        }
        .auto-style3 {
            width: 13px;
        }
        .auto-style4 {
            width: 14px;
        }
        .auto-style6 {
            width: 16px;
        }
        .auto-style7 {
            width: 17px;
        }
        .auto-style9 {
            width: 134px;
        }
        .auto-style10 {
            width: 587px;
        }
        .auto-style12 {
            width: 184px;
            height: 19px;
        }
        .auto-style13 {
            width: 11px;
            height: 19px;
        }
        .auto-style14 {
            width: 184px;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style16 {
            width: 184px;
            height: 14px;
        }
    .auto-style17 {
        width: 54px;
    }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <table>
            <tr>
                <td class="auto-style9">
                     &nbsp;&nbsp;
                </td>
                <td>&nbsp;<td>

        <table style="height: 624px; width: 1120px">
            <tr>
                <td class="auto-style10">
        <table style="width:503px; height: 211px;">
                

                     <tr><td class="auto-style14"></td> <td class="auto-style3" >

                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         
                               <h1 align="center";margin-top: 3.0em;margin-bottom: 3.0em;>
                               Login
                               </h1>
                          </td>
                         
                         

                     </tr>
                     <tr>
                         <td class="auto-style12" align ="center"><strong><span class="auto-style15">Email</span>:</strong></td>
                         <td class="auto-style13"><asp:TextBox ID="txt_username" runat="server" Width="227px" Height="30px" required="required"></asp:TextBox></td>
                     </tr>
                     <tr>
                         <td class="auto-style14" align ="center"><strong><span class="auto-style15">Password</span></strong>:</td>
                         <td class="auto-style2">
                             
                             <asp:TextBox ID="txt_password" TextMode="password" runat="server" Width="227px" Height="30px" required="required"></asp:TextBox>

                             <asp:TextBox ID="Txt_Check" runat="server" Height="22px" Width="148px" Visible="false"></asp:TextBox>

                         </td>
                     </tr>
                     <tr>
                         <td class="auto-style16"></td>
                         <td class="auto-style1">

                             <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/forgot_password.aspx">Forgot Password?</asp:HyperLink>

                         </td> 
                     </tr>
                     <tr>
                         <td class="auto-style14"></td>
                         <td><asp:Button ID="but_submit" runat="server" Text="Submit" style="margin-left: 0px" Width="117px" Height="53px"  cssclass="btn" CausesValidation ="false "/></td>
                        
                        
                     </tr>
                     <tr>
                         <td class="auto-style14"></td>
                         <td>Not Registered with us? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/register.aspx">click here</asp:HyperLink> &nbsp;to Register</td>
                     </tr>


                     
                     </table>
                    </td>
                <td class="auto-style4">
                    <table>
                        <tr>
                            <td class="auto-style17">

                                &nbsp;&nbsp;</td>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="605px" Width="355px" ImageUrl="~/images/Untitled.jpg" />
                            </td>
                        </tr>
                    </table>
                </td>
                </tr>
 </table> 
             </tr>
        </table> 

</asp:Content>

