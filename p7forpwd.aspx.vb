
Partial Class _Default
    Inherits System.Web.UI.Page

   

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click
        Response.Write("<script language='javascript'>alert('Password has sent to your email id.');window.location.href='P1login.aspx';</script>")
    End Sub

    Protected Sub btn_back_Click(sender As Object, e As EventArgs) Handles btn_back.Click
        Response.Redirect("P1login.aspx")
    End Sub
End Class
