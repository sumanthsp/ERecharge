
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub but_service_Click(sender As Object, e As EventArgs) Handles but_service.Click
        Panel_services.Visible = True
        Panel_howtorecharge.Visible = False
        Panel_benefits.Visible = False
        Panel_contact.Visible = False


    End Sub

    Protected Sub but_howtorecharge_Click(sender As Object, e As EventArgs) Handles but_howtorecharge.Click
        Panel_services.Visible = False
        Panel_howtorecharge.Visible = True
        Panel_benefits.Visible = False
        Panel_contact.Visible = False
    End Sub

    Protected Sub but_benefits_Click(sender As Object, e As EventArgs) Handles but_benefits.Click
        Panel_services.Visible = False
        Panel_howtorecharge.Visible = False
        Panel_benefits.Visible = True
        Panel_contact.Visible = False
    End Sub

    Protected Sub but_contactus_Click(sender As Object, e As EventArgs) Handles but_contactus.Click

        Panel_services.Visible = False
        Panel_howtorecharge.Visible = False
        Panel_benefits.Visible = False
        Panel_contact.Visible = True
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub but_home_Click(sender As Object, e As EventArgs) Handles but_home.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub but_myaccount_Click(sender As Object, e As EventArgs) Handles but_myaccount.Click
        
        If Session("email") = "" Then
            Response.Redirect("login.aspx")
        Else
            Response.Redirect("user_account.aspx")
        End If
    End Sub
End Class

