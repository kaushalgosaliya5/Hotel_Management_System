
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd1 As New SqlCommand
        cmd1.CommandText = "select max(RFDetail_Id) from Room_Facility_Detail"
        cmd1.Connection = cn
        Dim i As Integer = cmd1.ExecuteScalar + 1

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Room_Facility_Detail values (" & i & ",'" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "')"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()

        MsgBox("DO you want to add this services ?", MsgBoxStyle.YesNoCancel, "Confirmation Message")
    End Sub
End Class
