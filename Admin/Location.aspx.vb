
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim dp As DropDownList = CType(FormView1.FindControl("DropDownList1"), DropDownList)
        Dim TX As TextBox = CType(FormView1.FindControl("City_IdTextBox"), TextBox)
        TX.Text = dp.SelectedValue
        MsgBox("Do you want to add this Area ?", MsgBoxStyle.YesNo, "Confirmation")

    End Sub

    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        If RadioButtonList1.SelectedValue = " Area" Then
            FormView1.Visible = True
        End If
    End Sub
End Class
