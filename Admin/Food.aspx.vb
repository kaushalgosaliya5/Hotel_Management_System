
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd1 As New SqlCommand
        cmd1.CommandText = "select max(Food_Id) from Food"
        cmd1.Connection = cn
        Dim i As Integer = cmd1.ExecuteScalar + 1
        MsgBox("Inserted Successfully")

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Food values (" & i & "," & DropDownList1.SelectedValue & ",'" & TextBox1.Text & "'," & Val(TextBox2.Text) & " )"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()


    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        MsgBox("Do you want to delete this record ?", MsgBoxStyle.YesNo, "Confirmation")

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
End Class
