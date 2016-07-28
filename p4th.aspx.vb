Imports System.Data.SqlClient
Imports System.Data

Partial Class Default4
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select USER_NAME as na,MOBILE_NO as num from reg Where email_ID='" & Session("username") & "'"
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
                lab_name1.Text = objDR("na")
                lab_mob1.Text = objDR("num")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try

    End Sub

    Protected Sub btn_cpwd_Click(sender As Object, e As EventArgs) Handles btn_cpwd.Click
        Response.Redirect("p6cpwd.aspx")
    End Sub
End Class
