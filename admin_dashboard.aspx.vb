Imports System.Data.SqlClient
Imports System.Data

Partial Class admin_dashboard
    Inherits System.Web.UI.Page

    Protected Sub but_add_operator_Click(sender As Object, e As EventArgs) Handles but_add_operator.Click
        Panel_add_operator.Visible = True
    End Sub

    Protected Sub but_add_operator0_Click(sender As Object, e As EventArgs) Handles but_add_operator0.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "Insert into operator_master ("
            SQL = SQL & " oname,"
            SQL = SQL & " oid,"
            SQL = SQL & " oaddress)values("
            SQL = SQL & " '" & tb_oname.Text & "',"
            SQL = SQL & " '" & tb_oid.Text & "',"
            SQL = SQL & " '" & tb_oaddress.Text & "')"
            'Response.Write(sql)
            'Response.End()
            Response.Write("<script language='javascript'>alert('new operator added.');window.location.href='admin_dashboard.aspx';</script>")
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try
    End Sub

    

    Protected Sub dd_operator_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd_operator.SelectedIndexChanged
        Panel_tariffplan.Visible = True
        bindsql()
    End Sub

    Public Sub bindsql()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "select  amount,talktime,validity,description from tariff_master where oid='" & dd_operator.Text & "' order by amount"

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

    Public Sub grid_click(ByVal sender As Object, ByVal e As DataGridCommandEventArgs)
        If e.CommandName = "delete_command" Then
            Dim Lbl_amount As Label = DirectCast(e.Item.FindControl("Lbl_amount"), Label)
            Dim objCn2UDelete As SqlConnection
            objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
            Dim SQL As String = String.Empty
            Try
                SQL = "Delete from tariff_master Where amount='" & Lbl_amount.Text & "'"
                'Response.Write(sql)
                'Response.End()
                Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
                If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
                myIns12UDelete.ExecuteNonQuery()
            Finally
                objCn2UDelete.Close()
            End Try
            Response.Write("<script language='javascript'>alert(' entry deleted.');window.location.href='admin_dashboard.aspx';</script>")

        End If
    End Sub



    Protected Sub but_update_Click(sender As Object, e As EventArgs) Handles but_update.Click
        Panel_addnew.Visible = True
    End Sub

   
    Public Sub fetch_operator()

        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "Select  oid,oname from operator_master"

        Dim myda As SqlDataAdapter
        Dim ds As DataSet
        myda = New SqlDataAdapter(sql, objCn)
        ds = New DataSet()
        myda.Fill(ds, "Distribution")
        dd_operator.DataSource = ds
        dd_operator.DataTextField = "oname"
        dd_operator.DataValueField = "oid"
        dd_operator.Items.Insert(0, "")
        dd_operator.DataBind()
        objCn.Close()
        objCn = Nothing
    End Sub


    Protected Sub btu_submit_Click(sender As Object, e As EventArgs) Handles btu_submit.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "Insert into tariff_master ("
            SQL = SQL & " oid,"
            SQL = SQL & " tid,"
            SQL = SQL & " amount,"
            SQL = SQL & " talktime,"
            SQL = SQL & " validity,"
            SQL = SQL & " description)values("
            SQL = SQL & " '" & dd_operator.Text & "',"
            SQL = SQL & " '" & tb_tdi.Text & "',"
            SQL = SQL & " '" & tb_mrp.Text & "',"
            SQL = SQL & " '" & tb_talktime.Text & "',"
            SQL = SQL & " '" & tb_validity.Text & "',"
            SQL = SQL & " '" & tb_description.Text & "')"
            'Response.Write(sql)
            'Response.End()
            Response.Write("<script language='javascript'>alert('new .');window.location.href='admin_dashboard.aspx';</script>")
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            fetch_operator()
        End If

    End Sub

    Protected Sub but_report_Click(sender As Object, e As EventArgs) Handles but_report.Click
        Response.Redirect("report.aspx")
    End Sub
End Class
