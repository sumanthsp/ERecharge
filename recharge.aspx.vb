Imports System.Data.SqlClient
Imports System.Data

Partial Class recharge
    Inherits System.Web.UI.Page



    Public Sub but_submit_amount_Click(sender As Object, e As EventArgs) Handles but_submit_amount.Click
        Session("mobile_no") = tb_mobileno.Text
        Session("operator") = dd_operator.Text
        Session("tb_amount") = tb_amount.Text

        Response.Redirect("payment.aspx")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lab_user.Text = Session("email")
        End If
        If Not IsPostBack Then
            fetch_operator()
        End If
    End Sub


    Protected Sub dd_operator_SelectedIndexChanged(sender As Object, e As EventArgs) Handles dd_operator.SelectedIndexChanged
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
    
   
End Class
