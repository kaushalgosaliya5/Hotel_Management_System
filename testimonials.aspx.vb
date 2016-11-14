
Partial Class testinomials
    Inherits System.Web.UI.Page

    Shared cn As New SqlConnection

    Protected Sub SqlDataSource2_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Profile.IsAnonymous Then
            Session("TempUser") = Profile.UserName
        End If
    End Sub

    Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Profile.IsAnonymous Then
            Response.Redirect("Login.aspx")
        End If

        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\WebSite56\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True"
        cn.Open()
        
        Dim cmd As New SqlCommand
        cmd.CommandText = "select max(Feedback_Id) from Feedback"
        cmd.Connection = cn
        Dim tx As TextBox = CType(FormView1.FindControl("Feedback_IdTextBox"), TextBox)
        tx.Text = cmd.ExecuteScalar() + 1

        Dim txu As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
        txu.Text = Session("TempUser")

        Dim rbl As RadioButtonList = CType(FormView1.FindControl("RadioButtonList2"), RadioButtonList)
        Dim txr As TextBox = CType(FormView1.FindControl("RatingTextBox"), TextBox)
        txr.Text = rbl.SelectedValue

        cn.Close()

    End Sub

    Protected Sub SqlDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
End Class
