

Imports System.Data.SqlClient
Imports System.Data

Partial Class p3pay
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
       
        If Not IsPostBack Then
            bindsql()
        End If
    End Sub

    Public Sub bindsql()
        Dim objCn As SqlConnection
        Dim sql As String
        objCn = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        sql = "Select convert(char,input_selection1.date,106) as date,input_selection1.mobile_number,input_selection1.amount,operator_master.oname"
        sql = sql & " from input_selection1 right join operator_master"
        sql = sql & " operator_master on input_selection1.old=operator_master.oid where input_selection1.email='" & Session("email") & "'"
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


End Class
