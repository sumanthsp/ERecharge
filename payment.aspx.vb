Imports System.Data.SqlClient
Imports System.Data

Partial Class payment
    Inherits System.Web.UI.Page

    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        If RadioButtonList1.SelectedIndex = 0 Then
            Panel_netbanking.Visible = True
            Panel_debitcard.Visible = False
        Else
            Panel_netbanking.Visible = False
            Panel_debitcard.Visible = True
        End If

    End Sub


    Protected Sub card1_TextChanged(sender As Object, e As EventArgs) Handles card1.TextChanged
        card2.Focus()
    End Sub

    Protected Sub card2_TextChanged(sender As Object, e As EventArgs) Handles card2.TextChanged
        card3.Focus()
    End Sub

    Protected Sub card3_TextChanged(sender As Object, e As EventArgs) Handles card3.TextChanged
        card4.Focus()
    End Sub

   
    Protected Sub but_submit_amount_Click(sender As Object, e As EventArgs) Handles but_submit_amount.Click
        Dim objCn2UDelete As SqlConnection
        objCn2UDelete = New SqlConnection(System.Configuration.ConfigurationManager.AppSettings("HAConnectionString"))
        Dim SQL As String = String.Empty
        Try
            SQL = "Insert into input_selection ("
            SQL = SQL & " oid,"
            SQL = SQL & " email,"
            SQL = SQL & " amount,"
            SQL = SQL & " mobile_number,"
            SQL = SQL & " date)values("
            SQL = SQL & " '" & Session("operator") & "',"
            SQL = SQL & " '" & Session("email") & "',"
            SQL = SQL & " '" & Session("tb_amount") & "',"
            SQL = SQL & " '" & Session("mobile_no") & "',"
            SQL = SQL & " getdate())"
            'Response.Write(SQL)
            'Response.End()
            Dim myIns12UDelete As New SqlCommand(SQL, objCn2UDelete)
            If myIns12UDelete.Connection.State = ConnectionState.Closed Then myIns12UDelete.Connection.Open()
            myIns12UDelete.ExecuteNonQuery()
        Finally
            objCn2UDelete.Close()
        End Try

        Response.Write("<script language='javascript'>alert('Rechrage sucessfull.');window.location.href='recharge.aspx';</script>")
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            lab_user.Text = Session("email")
            amt.Text = Session("tb_amount")

        End If
    End Sub
End Class
