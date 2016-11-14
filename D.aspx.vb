
Partial Class D
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.IsInRole("Admin") Then
            Response.Redirect("~/Home.aspx")
        Else
            Response.Redirect("~/Home.aspx")
        End If
    End Sub
End Class
