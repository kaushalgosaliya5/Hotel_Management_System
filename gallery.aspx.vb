
Partial Class gallary
    Inherits System.Web.UI.Page

    Public Shared i As Integer = 1
    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        Dim x As New System.IO.DirectoryInfo(Server.MapPath("~/Images/Gallery/"))
        DataList1.DataSource = x.GetFiles
        DataList1.DataBind()
    End Sub

    Protected Sub LinkButton5_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton5.Click

        i -= 1
        Image1.ImageUrl = CStr("~/Images/Gallery/" & i & ".jpg")
        If i <= 1 Then i = 7
    End Sub

    Protected Sub LinkButton6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton6.Click
        i += 1
        Image1.ImageUrl = CStr("~/Images/Gallery/" & i & ".jpg")
        If i >= 7 Then i = 0
    End Sub
End Class
