
Partial Class restaurant
    Inherits System.Web.UI.Page


    Dim cn As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim i As Integer = Request.QueryString("FCID")

        If i = 1 Then
            Image1.ImageUrl = "~/Images/Foods/a.jpg"
        ElseIf i = 2 Then
            Image1.ImageUrl = "~/Images/Foods/b.jpg"
        ElseIf i = 3 Then
            Image1.ImageUrl = "~/Images/Foods/c.jpg"
        ElseIf i = 4 Then
            Image1.ImageUrl = "~/Images/Foods/d.jpg"
        Else
            Response.Redirect("restaurant.aspx")
        End If

        If Not Profile.IsAnonymous Then
            Session("TempUser") = Profile.UserName
        Else
            Session("TempUser") = "Anonymous"
        End If

        Session("FD") = 2
        'GridView3.EditIndex = GridView3.SelectedIndex
    End Sub


    'Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged

    '    Dim txFD As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '    txFD.Text = Session("FD")


    '    Dim txF As TextBox = CType(FormView1.FindControl("Food_IdTextBox"), TextBox)
    '    txF.Text = GridView2.SelectedValue

    'End Sub

    'Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    FormView1.DefaultMode = FormViewMode.ReadOnly
    'End Sub

    Protected Sub GridView2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView2.SelectedIndexChanged

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()
        MsgBox(Session("FD") & " " & GridView2.SelectedValue)
        Dim cmd As New SqlCommand
        cmd.CommandText = "insert into Food_Delivery (FDelivery_Id,Food_Id) values (" & Session("FD") & "," & GridView2.SelectedValue & ")"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()

        Response.Redirect("restaurant.aspx")
    End Sub

End Class

