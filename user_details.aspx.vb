Imports System.Data.SqlClient
Imports System.Data

Partial Class user_details
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lab_user.Text = Session("email")
        End If

        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select name as na, address as ad, state as st, city as ci, mobile_number as num, email as em from user_list Where email='" & Session("email") & "'"
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
                lab_address.Text = objDR("ad")
                lab_state.Text = objDR("st")
                lab_city.Text = objDR("ci")
                lab_mobile.Text = objDR("num")
                lab_email.Text = objDR("em")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try
        
    End Sub

    Public Sub bindsql()
        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select name as na, address as ad, state as st, city as ci, mobile_number as num, email as em from user_list Where email='" & Session("email") & "'"
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
                tb_name.Text = objDR("na")
                tb_address.Text = objDR("ad")
                tb_state.Text = objDR("st")
                tb_city.Text = objDR("ci")
                tb_mobile.Text = objDR("num")
                tb_email.Text = objDR("em")
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try
    End Sub

    Protected Sub but_edit_Click(sender As Object, e As EventArgs) Handles but_edit.Click
        panel2.Visible = True
        panel_1.Visible = False
        bindsql()
    End Sub

    Protected Sub but_save_Click(sender As Object, e As EventArgs) Handles but_save.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "UPDATE user_list SET name='" & tb_name.Text & "',address='" & tb_address.Text & "',state='" & tb_state.Text & "',city='" & tb_city.Text & "',mobile_number='" & tb_mobile.Text & "',email='" & tb_email.Text & "'   WHERE email = '" & Session("email") & "'"

            'SQL = "Insert into user_list ("
            'SQL = SQL & " name,"
            'SQL = SQL & " address,"
            'SQL = SQL & " state,"
            'SQL = SQL & " city,"
            'SQL = SQL & " mobile_number,"
            'SQL = SQL & " email,"
            'SQL = SQL & " role,"
            'SQL = SQL & " pwd,"
            'SQL = SQL & " gender,"
            'SQL = SQL & " entered_date)values("
            'SQL = SQL & " '" & tb_name.Text & "',"
            'SQL = SQL & " '" & tb_address.Text & "',"
            'SQL = SQL & " '" & dd_state.Text & "',"
            'SQL = SQL & " '" & tb_city.Text & "',"
            'SQL = SQL & " '" & tb_mobile.Text & "',"
            'SQL = SQL & " '" & tb_emailid.Text & "',"
            'SQL = SQL & "user,"
            'SQL = SQL & " '" & tb_password.Text & "',"
            'SQL = SQL & " '" & rb_gender.Text & "',getdate())"
            'Response.Write(sql)
            'Response.End()
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try

        panel_1.Visible = True
        panel2.Visible = False
        bindsql()
        Response.Write("<script language='javascript'>alert(' Changes Saved.');window.location.href='user_details.aspx';</script>")

    End Sub
     

End Class
