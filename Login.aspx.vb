
Partial Class Login
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim userName = Request.Form("Login$UserName")
        Dim password = Request.Form("Login$Password")
        If userName <> "" And password <> "" Then
            Dim Role = "Guest"
            Dim objCn As System.Data.SqlClient.SqlConnection
            objCn = New System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
            Try
                Dim Sql As String
                Sql = "SELECT [role] FROM [eRecharge].[dbo].[tblUser] Where username='" & userName & "' and password='" & password & "'"
                Dim objCmd As New System.Data.SqlClient.SqlCommand(Sql, objCn)
                objCmd.CommandType = System.Data.CommandType.Text
                Dim objDR As System.Data.SqlClient.SqlDataReader
                objCmd.Connection.Open()
                objDR = objCmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection)
                If objDR.Read Then
                    Role = objDR("role")
                End If
                objDR.Close()
            Finally
                objCn.Close()
            End Try
            If Role = "ADMIN" Then
                Response.Redirect("Admin.aspx")
            ElseIf Role = "CUSTOMER" Then
                Response.Redirect("MyAccount.aspx")
            Else
                Response.Write("<script language='javascript'>alert('Invalid Credentials.');window.location.href='Login.aspx';</script>")
            End If
        End If
        
    End Sub
End Class
