
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

  
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath("~/images/Gallery/" & FileUpload1.FileName))
        End If
    End Sub

    Protected Sub FileUpload1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FileUpload1.PreRender
        Dim x As New System.IO.DirectoryInfo(Server.MapPath("~/images/Gallery/"))
        DataList1.DataSource = x.GetFiles
        DataList1.DataBind()
    End Sub
End Class
