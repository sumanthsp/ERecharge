Imports System.Data.SqlClient
Imports System.Data

Partial Class Default3
    Inherits System.Web.UI.Page

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "UPDATE reg SET password='" & txt_newpwd.Text & "' WHERE email_ID = '" & Session("username") & "'"

            'Response.Write(sql)
            'Response.End()
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try

        Response.Write("<script language='javascript'>alert('Password changed.');window.location.href='p6cpwd.aspx';</script>")

    End Sub


    Protected Sub btn_viewth_Click(sender As Object, e As EventArgs) Handles btn_viewth.Click
        Response.Redirect("p4th.aspx")
    End Sub
End Class
