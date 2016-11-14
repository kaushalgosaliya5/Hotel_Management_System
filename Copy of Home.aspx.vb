
Partial Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Profile.IsAnonymous Then
            Session("TempUser") = Profile.UserName
        End If
    End Sub
End Class
