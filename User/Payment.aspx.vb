
Partial Class User_Payment
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    Protected Sub FormView1_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles FormView1.PreRender
        Dim tx As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
        tx.Text = Session("FD")

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd As New SqlCommand
        cmd.CommandText = "select sum(Quantity*Price) from Food_Delivery where FDelivery_Id = " & Session("FD") & " Group by (FDelivery_Id)"
        cmd.Connection = cn

        Dim tx1 As TextBox = CType(FormView1.FindControl("PaymentTextBox"), TextBox)
        tx1.Text = cmd.ExecuteScalar * 1.04

    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        MsgBox("Are you sure for make Payment ?", MsgBoxStyle.YesNo, "Payment Confirmation")
        Dim dp As DropDownList = CType(FormView1.FindControl("DropDownList1"), DropDownList)
        Dim tx As TextBox = CType(FormView1.FindControl("TypeTextBox"), TextBox)
        tx.Text = dp.SelectedValue

        MsgBox("SuccessFully Payment")
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub
End Class
