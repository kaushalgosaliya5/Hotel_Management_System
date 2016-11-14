
Partial Class User_SelectFood
    Inherits System.Web.UI.Page


    Dim cn As New SqlConnection

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

       

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()
        MsgBox(Session("FD"))
        MsgBox(GridView1.SelectedValue)
        Dim cmd1 As New SqlCommand
        cmd1.CommandText = "select price from Food where Food_Id = " & GridView1.SelectedValue
        cmd1.Connection = cn
        Dim i As Integer = cmd1.ExecuteScalar()
        MsgBox(i)
        Dim cmd As New SqlCommand
        cmd.CommandText = "insert into Food_Delivery (FDelivery_Id,Food_Id,Price) values (" & Session("FD") & "," & GridView1.SelectedValue & "," & i & ")"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()

        Response.Redirect("FoodSelect.aspx")
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
        Dim i As Integer = Request.QueryString("FCAT")

        If i = 1 Then
            Image1.ImageUrl = "~/Images/Foods/a.jpg"
        ElseIf i = 2 Then
            Image1.ImageUrl = "~/Images/Foods/b.jpg"
        ElseIf i = 3 Then
            Image1.ImageUrl = "~/Images/Foods/c.jpg"
        ElseIf i = 4 Then
            Image1.ImageUrl = "~/Images/Foods/d.jpg"
        Else
            Response.Redirect("~/User/FoodSelect.aspx")
        End If

    End Sub
End Class
