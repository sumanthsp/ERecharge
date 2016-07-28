Imports System.Data
Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub btn_cpwd_Click(sender As Object, e As EventArgs) Handles btn_cpwd.Click
        Response.Redirect("p6cpwd.aspx")
    End Sub

    Protected Sub btn_viewth_Click(sender As Object, e As EventArgs) Handles btn_viewth.Click
        Response.Redirect("p4th.aspx")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select USER_NAME as na, ADDRESS as ad,  MOBILE_NO as num, EMAIL_ID as em from reg Where email_ID='" & Session("username") & "'"
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
                lab_name.Text = objDR("na")
                lab_add.Text = objDR("ad")
                lab_mob.Text = objDR("num")
                lab_email.Text = objDR("em")
                lab_name1.Text = objDR("na")
                lab_mob1.Text = objDR("num")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try

    End Sub
End Class
