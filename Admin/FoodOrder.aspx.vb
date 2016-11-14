
Partial Class Admin_Room_Food
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd As New SqlCommand
        cmd.CommandText = "select max(Order_Id) from Order_Master"
        cmd.Connection = cn
        Dim i As Integer = cmd.ExecuteScalar() + 1
        TextBox5.Text = i
        
        Session("OD") = TextBox5.Text
        MsgBox(Session("OD"))

        cn.Close()
    End Sub

    
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Order_Master values (" & TextBox5.Text & ",'" & Session("TempUser") & "','" & TextBox4.Text & "','false')"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()
        cn.Close()
    End Sub

    Protected Sub DropDownList3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList3.SelectedIndexChanged
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "select price from Food where Food_Id = " & DropDownList3.SelectedValue
        cmd2.Connection = cn
        TextBox3.Text = cmd2.ExecuteScalar

        cn.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Order_Detail values (" & Session("OD") & "," & DropDownList3.SelectedValue & "," & TextBox2.Text & "," & TextBox3.Text & ")"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()

        cn.Close()
    End Sub

    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button6.Click

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()
        MsgBox(Session("OD"))
        Dim cmd As New SqlCommand
        cmd.CommandText = "select max(FPayment_Id) from Food_Payment"
        cmd.Connection = cn
        Dim i As Integer = cmd.ExecuteScalar + 1
        Dim cmd3 As New SqlCommand
        cmd3.CommandText = "select sum(Quantity*Price) from Order_Detail where Order_Id = " & Session("OD")
        cmd3.Connection = cn
        Dim pay As Integer = cmd3.ExecuteScalar()
        MsgBox(pay)
        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Food_Payment (Order_Id,Payment) values (" & Session("OD") & "," & pay & ")"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()

        Response.Redirect("~/Admin/FoodOrderPayment.aspx")
        cn.Close()

    End Sub
End Class
