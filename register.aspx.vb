Imports System.Data.SqlClient
Imports System.Data

Partial Class register
    Inherits System.Web.UI.Page

    Protected Sub but_register_Click(sender As Object, e As EventArgs) Handles but_register.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "Insert into user_list ("
            SQL = SQL & " name,"
            SQL = SQL & " address,"
            SQL = SQL & " state,"
            SQL = SQL & " city,"
            SQL = SQL & " mobile_number,"
            SQL = SQL & " email,"
            SQL = SQL & " role,"
            SQL = SQL & " pwd,"
            SQL = SQL & " gender,"
            SQL = SQL & " entered_date)values("
            SQL = SQL & " '" & tb_name.Text & "',"
            SQL = SQL & " '" & tb_address.Text & "',"
            SQL = SQL & " '" & dd_state.Text & "',"
            SQL = SQL & " '" & tb_city.Text & "',"
            SQL = SQL & " '" & tb_mobile.Text & "',"
            SQL = SQL & " '" & tb_emailid.Text & "',"
            SQL = SQL & "user,"
            SQL = SQL & " '" & tb_password.Text & "',"
            SQL = SQL & " '" & rb_gender.Text & "',getdate())"
            'Response.Write(sql)
            'Response.End()
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try
    End Sub


   
 
End Class
