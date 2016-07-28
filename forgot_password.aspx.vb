
Partial Class forgot_password
    Inherits System.Web.UI.Page

    Protected Sub but_submit_Click(sender As Object, e As EventArgs) Handles but_submit.Click
        Response.Write("<script language='javascript'>alert('New Password is sent to registred email id.');window.location.href='forgot_password.aspx';</script>")
    End Sub
End Class
