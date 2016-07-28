Imports System.Data.SqlClient
Imports System.Data
Partial Class user_account
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lab_user.Text = Session("email")
        End If
        If Not IsPostBack Then
            bindsql()
        End If

        Dim objCn As SqlConnection
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Try
            Dim Sql As String
            Sql = "Select name as na, convert(char,getdate(),106) as da from user_list Where email='" & Session("email") & "'"
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
                Lab_name.Text = objDR("na")
                lab_date.Text = objDR("da")
               
            End If
            objDR.Close()
        Finally
            objCn.Close()
        End Try
    End Sub

    Public Sub bindsql()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "Select convert(char,input_selection.date,106) as date,input_selection.mobile_number,input_selection.amount,operator_master.oname"
        sql = sql & " from input_selection right join operator_master"
        sql = sql & " operator_master on input_selection.oid=operator_master.oid where input_selection.email='" & Session("email") & "'"
        Dim myda As SqlDataAdapter
        Dim ds As DataSet
        myda = New SqlDataAdapter(sql, objCn)
        ds = New DataSet()
        myda.Fill(ds, "Distribution")
        Dg1.DataSource = ds
        Dg1.DataBind()
        objCn.Close()
        objCn = Nothing
    End Sub

   
    Protected Sub but_changepassword_Click(sender As Object, e As EventArgs) Handles but_changepassword.Click
        Response.Redirect("change_password.aspx")

    End Sub

   
    Protected Sub but_viewprofile_Click(sender As Object, e As EventArgs) Handles but_viewprofile.Click
        Response.Redirect("user_details.aspx")
    End Sub

    Protected Sub but_logout_Click(sender As Object, e As EventArgs) Handles but_logout.Click
        Response.Redirect("login.aspx")
    End Sub
End Class
