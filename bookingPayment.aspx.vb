
Partial Class Room_Payment
    Inherits System.Web.UI.Page


    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim tx1 As TextBox = CType(FormView1.FindControl("DateTextBox"), TextBox)
        tx1.Text = Now

        MsgBox("Are you sure for make Payment ?", MsgBoxStyle.YesNo, "Payment Confirmation")
        Dim dp As DropDownList = CType(FormView1.FindControl("DropDownList1"), DropDownList)
        Dim tx As TextBox = CType(FormView1.FindControl("TypeTextBox"), TextBox)
        tx.Text = dp.Text
        MsgBox("Payment successfully", MsgBoxStyle.OkOnly, "Payment")
    End Sub

    Protected Sub FormView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        MsgBox("Are you sure for payment ?", MsgBoxStyle.YesNo, "Payment Confirmation ")
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub
End Class
