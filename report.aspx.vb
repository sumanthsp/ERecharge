Imports System.Data.SqlClient
Imports System.Data

Partial Class report
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            fetch_operator()
        End If
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

    Public Sub bindsql()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        'sql = "select  amount,talktime,validity,description from tariff_master where oid='" & dd_operator.Text & "' order by amount"
        sql = "SELECT  sum(amount) as amount,DATEPART(YYYY,date) AS year FROM input_selection where oid='" & dd_operator.Text & "' GROUP BY  DATEPART(YYYY,date)"
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

    Protected Sub rb_report_SelectedIndexChanged(sender As Object, e As EventArgs) Handles rb_report.SelectedIndexChanged
        If rb_report.SelectedValue = "3" Then
            Panel_year.Visible = True
            bindsql()
        ElseIf rb_report.SelectedValue = "2" Then
            Panel_year.Visible = False
            Panel_monthly.Visible = True
        Else
            Panel_daily.Visible = True

        End If
    End Sub


    Public Sub bindsql1()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        'sql = "select  amount,talktime,validity,description from tariff_master where oid='" & dd_operator.Text & "' order by amount"
        sql = "SELECT  sum(amount) as amount,DATEPART(MM,date) AS month FROM input_selection where oid='" & dd_operator.Text & "' and  DATEPART(YYYY,date)= '" & tb_monthly.Text & "' GROUP BY  DATEPART(MM,date)"
        Dim myda As SqlDataAdapter
        Dim ds As DataSet
        myda = New SqlDataAdapter(sql, objCn)
        ds = New DataSet()
        myda.Fill(ds, "Distribution")
        DataGrid1.DataSource = ds

        DataGrid1.DataBind()
        objCn.Close()
        objCn = Nothing

    End Sub

    Protected Sub but_submit_amount_Click(sender As Object, e As EventArgs) Handles but_submit_amount.Click
        bindsql1()
    End Sub

    Public Sub bindsql2()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        'sql = "select  amount,talktime,validity,description from tariff_master where oid='" & dd_operator.Text & "' order by amount"
        sql = "SELECT  sum(amount) as amount,DATEPART(d,date) AS day FROM input_selection where oid='" & dd_operator.Text & "' and  DATEPART(YYYY,date)= '" & dd_year.Text & "' and  DATEPART(Mm,date)= '" & dd_month.Text & "' GROUP BY  DATEPART(d,date)"
        Dim myda As SqlDataAdapter
        Dim ds As DataSet
        myda = New SqlDataAdapter(sql, objCn)
        ds = New DataSet()
        myda.Fill(ds, "Distribution")
        DataGrid2.DataSource = ds

        DataGrid2.DataBind()
        objCn.Close()
        objCn = Nothing

    End Sub

    Protected Sub but_sumbit_Click(sender As Object, e As EventArgs) Handles but_sumbit.Click
        bindsql2()
    End Sub
End Class
