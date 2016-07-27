Imports System.Data.SqlClient
Imports System.Data

Partial Class Default4
    Inherits System.Web.UI.Page

    Protected Sub btn_reg_Click(sender As Object, e As EventArgs) Handles btn_reg.Click
        Dim objCn1 As SqlConnection
        objCn1 = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim sql As String
        Try
            sql = "INSERT INTO reg ("
            sql = sql & " USER_NAME,"
            sql = sql & " ADDRESS,"
            sql = sql & " STATE,"
            sql = sql & " CITY,"
            sql = sql & " MOBILE_NO,"
            sql = sql & " EMAIL_ID,"
            sql = sql & " ROLE,"
            sql = sql & " PASSWORD"
            sql = sql & ")values( "
            sql = sql & " '" & txt_username.Text & "',"
            sql = sql & " '" & txt_add.Text & "',"
            sql = sql & " '" & dd_state.Text & "',"
            sql = sql & " '" & dd_city.Text & "',"
            sql = sql & " '" & txt_mob.Text & "',"
            sql = sql & " '" & txt_email.Text & "',"
            sql = sql & "user,"
            sql = sql & " '" & txt_pwd.Text & "')"
            'sql = sql & ")"



            'Response.Write(sql)
            'Response.End()
            Dim myIns11 As New SqlCommand(sql, objCn1)
            If myIns11.Connection.State = ConnectionState.Closed Then myIns11.Connection.Open()
            myIns11.ExecuteNonQuery()
        Finally
            objCn1.Close()
        End Try
        Response.Write("<script language='javascript'>alert('Detailes Saved.');window.location.href='P1login.aspx';</script>")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles txt_username.TextChanged

    End Sub
End Class
