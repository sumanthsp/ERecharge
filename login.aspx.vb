Imports System.Data
Imports System.Data.SqlClient

Partial Class login
    Inherits System.Web.UI.Page

    Protected Sub but_submit_Click(sender As Object, e As EventArgs) Handles but_submit.Click
        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select role as erole from user_list Where email='" & txt_username.Text & "' and pwd='" & txt_password.Text & "'"
            'Response.Write(strSql)
            'Response.End()
            'objCn.Open()
            Dim objCmd As New SqlCommand(Sql, objCn)
            objCmd.CommandType = CommandType.Text
            'objCmd.Connection.Open()
            Dim objDR As SqlDataReader
            objCmd.Connection.Open()
            objDR = objCmd.ExecuteReader(CommandBehavior.CloseConnection)
            If objDR.Read Then
                Txt_Check.Text = objDR("erole")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try
        Session("email") = txt_username.Text
        If Txt_Check.Text = "dbo" Then
            'MsgBox(Session("email"))
            Response.Redirect("recharge.aspx")
        ElseIf Txt_Check.Text = "admin" Then
            Response.Redirect("admin_dashboard.aspx")
        Else
            Response.Write("<script language='javascript'>alert('Invalid Credentials.');window.location.href='Login.aspx';</script>")
        End If
    End Sub

    
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Session("email") = ""
    End Sub
End Class


