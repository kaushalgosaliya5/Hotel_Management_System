
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        MsgBox("DO you want to delete this Record ?", MsgBoxStyle.YesNoCancel, "Confirmation Message")
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
