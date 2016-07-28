Imports System.Data.SqlClient
Imports System.Data

Partial Class change_password
    Inherits System.Web.UI.Page

    Protected Sub But_submit_Click(sender As Object, e As EventArgs) Handles But_submit.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "UPDATE user_list SET pwd='" & tb_newpassword.Text & "' WHERE email = '" & Session("email") & "'"

            'Response.Write(sql)
            'Response.End()
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try

        Response.Write("<script language='javascript'>alert('Password changed.');window.location.href='change_password.aspx';</script>")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lab_user.Text = Session("email")
        End If
    End Sub
End Class
