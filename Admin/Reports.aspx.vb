
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        'MsgBox(RadioButtonList1.SelectedValue)

        If RadioButtonList1.SelectedValue = " Food" Then
            Response.Redirect("~/Admin/FoodReport.aspx")
        ElseIf RadioButtonList1.SelectedValue = " Room" Then
            Response.Redirect("~/Admin/RoomReport.aspx")
        ElseIf RadioButtonList1.SelectedValue = " Feedback" Then
            Response.Redirect("~/Admin/FeedbackReport.aspx")
        ElseIf RadioButtonList1.SelectedValue = " Food Delivery" Then
            Response.Redirect("~/Admin/FoodDeliveryReport.aspx")
        ElseIf RadioButtonList1.SelectedValue = " Room Booking" Then
            Response.Redirect("~/Admin/RoomBookingReport.aspx")
        Else
        End If

    End Sub


   
  
End Class
