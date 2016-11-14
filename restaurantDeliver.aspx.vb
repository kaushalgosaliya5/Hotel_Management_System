
Partial Class restaurant
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    '    FormView1.ChangeMode(FormViewMode.Insert)

    '    If Not Profile.IsAnonymous Then
    '        Session("TempUser") = Profile.UserName
    '    Else
    '        Session("TempUser") = "Anonymous"

    '        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '        cn.Open()

    '        Dim cmd As New SqlCommand
    '        cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
    '        cmd.Connection = cn
    '        Session("FD") = cmd.ExecuteScalar + 1
    '    End If
    'End Sub

    'Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    If Not Profile.IsAnonymous Then
    '    cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    cn.Open()

    '    Dim cmd As New SqlCommand
    '    cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
    '    cmd.Connection = cn


    '        Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '        txF.Text = cmd.ExecuteScalar + 1
    '        Session("FD") = txF.Text
    '    Else
    '        Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '        Session("FD") = TXF.TEXT
    '    End If


    '    Dim txU As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
    '    txU.Text = Session("TempUser")

    '    FormView1.ChangeMode(FormViewMode.ReadOnly)
    'End Sub

    'Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Dim txA As TextBox = CType(FormView1.FindControl("Area_IdTextBox"), TextBox)
    '    Dim dpA As DropDownList = CType(FormView1.FindControl("DropDownList2"), DropDownList)

    '    txA.Text = dpA.SelectedValue
    'End Sub

    'Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    FormView1.DefaultMode = FormViewMode.ReadOnly
    'End Sub

    'Protected Sub SqlDataSource2_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles SqlDataSource2.Selecting

    'End Sub


    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    FormView1.ChangeMode(FormViewMode.Insert)

    '    If Not Profile.IsAnonymous Then
    '        Session("TempUser") = Profile.UserName
    '    End If

    'End Sub

    'Protected Sub InsertButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)

    '    cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    cn.Open()

    '    Dim cmd As New SqlCommand
    '    cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
    '    cmd.Connection = cn


    '    Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '    txF.Text = cmd.ExecuteScalar + 1
    '    Session("FD") = Val(txF.Text)

    '    Dim txU As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
    '    txU.Text = Session("TempUser")

    'End Sub

    'Protected Sub EditButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
    '    FormView1.ChangeMode(FormViewMode.Edit)
    'End Sub

    'Protected Sub InsertButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)


    '    'cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    'cn.Open()

    '    'Dim cmd As New SqlCommand
    '    'cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
    '    'cmd.Connection = cn


    '    'Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '    'txF.Text = cmd.ExecuteScalar + 1
    '    'Session("FD") = Val(txF.Text)

    '    'MsgBox(Session("FD"))

    '    'Dim txU As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
    '    'txU.Text = Session("TempUser")


    'End Sub

    'Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    '    If Not Profile.IsAnonymous Then
    '        Session("TempUser") = Profile.UserName
    '    Else
    '        Session("TempUser") = "Anonymous"
    '    End If
    'End Sub

    'Protected Sub InsertButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)
    '    If Session("TempUser") = "Anonymous" Then
    '        Response.Redirect("Register.aspx")
    '    End If

    '    cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
    '    cn.Open()

    '    Dim cmd As New SqlCommand
    '    cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
    '    cmd.Connection = cn


    '    Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
    '    txF.Text = cmd.ExecuteScalar + 1
    '    Session("FD") = Val(txF.Text)

    '    MsgBox(Session("FD") & " " & Session("TempUser"))

    '    Dim txU As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
    '    txU.Text = Session("TempUser")

    'End Sub

    'Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs)
    '    Dim dp As DropDownList = CType(FormView1.FindControl("DropDownList1"), DropDownList)
    '    Dim tx As TextBox = CType(FormView1.FindControl("Area_IdTextBox"), TextBox)
    '    tx.Text = dp.SelectedValue

    'End Sub

    'Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
    '    MsgBox(Session("FD"))
    '    Response.Redirect("~/User/FoodSelect.aspx")
    'End Sub


    'Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender

    'End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not Profile.IsAnonymous Then
            Session("TempUser") = Profile.UserName
        Else
            Session("TempUser") = "Anonymous"
        End If

        Session("FD") = 0

    End Sub

    Protected Sub InsertButton_Click1(ByVal sender As Object, ByVal e As System.EventArgs)

        If Profile.IsAnonymous Then
            Response.Redirect("Login.aspx")
        Else
            Session("TempUser") = Profile.UserName
        End If

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd As New SqlCommand
        cmd.CommandText = "select max(FDelivery_Id) from Food_Delivery_Master"
        cmd.Connection = cn

        Dim txF As TextBox = CType(FormView1.FindControl("FDelivery_IdTextBox"), TextBox)
        txF.Text = cmd.ExecuteScalar + 1
        Session("FD") = txF.Text

        Dim txU As TextBox = CType(FormView1.FindControl("User_NameTextBox"), TextBox)
        txU.Text = Session("TempUser")

        Dim dp As DropDownList = CType(FormView1.FindControl("DropDownList2"), DropDownList)
        Dim tx As TextBox = CType(FormView1.FindControl("Area_IdTextBox"), TextBox)
        tx.Text = dp.SelectedValue
    End Sub

  
    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim dp As DropDownList = CType(FormView2.FindControl("DropDownList4"), DropDownList)
        Dim tx As TextBox = CType(FormView2.FindControl("Area_IdTextBox"), TextBox)
        tx.Text = dp.SelectedValue

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If Profile.IsAnonymous Then
            Response.Redirect("Login.aspx")
        End If

        Session("FD") = FormView2.SelectedValue
        Response.Redirect("~/User/FoodSelect.aspx")
    End Sub
End Class
