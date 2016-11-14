
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        form1.Attributes.Add("onMouseOver", "this.style.backgroundColor='" & Profile.COLOR & "'")
    End Sub

   
End Class

