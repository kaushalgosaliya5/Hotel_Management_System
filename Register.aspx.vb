
Partial Class CreateUser
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    'Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Dim tx As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
    '    tx.Text = Session("TempUser")
    '    FormView1.DefaultMode = FormViewMode.ReadOnly
    'End Sub


    'Protected Sub RadioButton2_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)

    '    Dim rb As RadioButton
    '    rb = CType(FormView1.FindControl("GenderCheckBox"), RadioButton)
    '    rb.Checked = True

    'End Sub

    'Protected Sub RadioButton1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Dim rb As RadioButton
    '    rb = CType(FormView1.FindControl("GenderCheckBox"), RadioButton)
    '    rb.Checked = False

    'End Sub

    Protected Sub CreateUserWizard1_CreatedUser(ByVal sender As Object, ByVal e As System.EventArgs) Handles CreateUserWizard1.CreatedUser
        Session("TempUser") = Profile.UserName
    End Sub

    Protected Sub CreateUserWizard1_NextButtonClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.WizardNavigationEventArgs) Handles CreateUserWizard1.NextButtonClick
        Session("TempUser") = Profile.UserName
    End Sub

    Protected Sub ContinueButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\WebSite56\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True"
        cn.Open()

        Dim cmd As New SqlCommand
        cmd.CommandText = "insert into Login_Details (User_Name) values ('" & Profile.UserName & "')"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()

    End Sub
End Class
