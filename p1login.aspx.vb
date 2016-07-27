Imports System.Data.SqlClient
Imports System.Data

Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub btn_login_Click(sender As Object, e As EventArgs) Handles btn_login.Click
        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select ROLE as r from reg Where EMAIL_ID='" & txt_email.Text & "' and PASSWORD='" & txt_pwd.Text & "'"
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
                txt_check.Text = objDR("r")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try
        If txt_check.Text = "ADMIN" Then
            Response.Redirect("p3pay.aspx")
        ElseIf txt_check.Text = "user" Then
            Response.Redirect("p3pay.aspx")
        Else
            Response.Write("<script language='javascript'>alert('Invalid Credentials.');window.location.href='Login.aspx';</script>")
        End If

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
