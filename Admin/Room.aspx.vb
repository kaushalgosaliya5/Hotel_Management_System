
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd1 As New SqlCommand
        cmd1.CommandText = "select max(Room_Id) from Room"
        cmd1.Connection = cn
        Dim i As Integer = cmd1.ExecuteScalar + 1
        MsgBox(DropDownList2.SelectedValue)
        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Room values (" & i & "," & DropDownList2.SelectedValue & "," & DropDownList1.SelectedValue & "," & Val(TextBox1.Text) & ",'" & FileUpload1.FileName & "')"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()
        MsgBox("Room Detail Inserted Successfully", MsgBoxStyle.OkOnly, "Room Detail")

        If FileUpload1.HasFile Then
            FileUpload1.SaveAs(Server.MapPath("~/images/Rooms/" & FileUpload1.FileName))
        End If

    End Sub

   
    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        MsgBox("DO you want to delete this Room ?", MsgBoxStyle.YesNoCancel, "Confirmation Message")
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
    End Sub
End Class
