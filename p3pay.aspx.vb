

Imports System.Data.SqlClient
Imports System.Data

Partial Class Default5
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            fetch_operator()
        End If
        If Not IsPostBack Then
            lab_name.Text = Session("username")
        End If
    End Sub
    Protected Sub dd_op_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd_op.SelectedIndexChanged
        bindsql()
    End Sub

    Public Sub bindsql()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "select amount,talktime,validity,description from tariff_master where oid='" & dd_op.Text & "'"
        
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

    Public Sub fetch_operator()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "Select oid,operator from operator_master"
        Dim myda As SqlDataAdapter
        Dim ds As DataSet
        myda = New SqlDataAdapter(sql, objCn)
        ds = New DataSet()
        myda.Fill(ds, "Distribution")
        dd_op.DataSource = ds
        dd_op.DataTextField = "operator"
        dd_op.DataValueField = "oid"
        dd_op.Items.Insert(0, "")
        dd_op.DataBind()
        objCn.Close()
        objCn = Nothing
    End Sub

   


   

    Protected Sub btn_myacc_Click(sender As Object, e As EventArgs) Handles btn_myacc.Click
        Response.Redirect("p5profile.aspx")
    End Sub



End Class
