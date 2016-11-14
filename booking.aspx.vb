
Partial Class booking
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim sum As Integer

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Button2.Visible = True

        If Profile.IsAnonymous Then
            Response.Redirect("Login.aspx")
        End If

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd1 As New SqlCommand
        cmd1.CommandText = "select max(RMaster_Id) from Room_Booking_Master"
        cmd1.Connection = cn
        Dim i As Integer = cmd1.ExecuteScalar()
        Session("RM") = i + 1

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Room_Booking_Master (RMaster_Id,User_Name,Date,Room_Total) values (" & Session("RM") & ",'" & Session("TempUser") & "','" & CDate(Format(Today, "dd/MM/yyyy")) & "'," & DropDownList2.SelectedValue & ")"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()
        Dim cmd3 As New SqlCommand
        cmd3.CommandText = "select max(RBook_Id) from Room_Booking_Detail"
        cmd3.Connection = cn
        Dim j As Integer = cmd3.ExecuteScalar()

        For k As Integer = 0 To DropDownList2.SelectedValue - 1
            j += 1
            Dim cmd4 As New SqlCommand
            cmd4.CommandText = "insert into Room_Booking_Detail (RBook_Id,RMaster_Id) values (" & j & "," & Session("RM") & ")"
            cmd4.Connection = cn
            cmd4.ExecuteNonQuery()
        Next
        'MsgBox(Session("RM"))
        cn.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Profile.IsAnonymous Then
            Session("TempUser") = Profile.UserName
        Else
            Session("TempUser") = "Anonymous"
        End If
    End Sub

    
    Protected Sub UpdateButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim dp1 As DropDownList = CType(FormView1.FindControl("DropDownList5"), DropDownList)
        Dim tx1 As TextBox = CType(FormView1.FindControl("Room_IdTextBox"), TextBox)
        tx1.Text = dp1.Text

        Dim cmd As New SqlCommand
        cmd.CommandText = "select Price from Room where Room_Id = " & Val(tx1.Text)
        cmd.Connection = cn
        Dim j As Integer = cmd.ExecuteScalar()

        Dim tx4 As TextBox = CType(FormView1.FindControl("Check_In_DateTextBox"), TextBox)
        Dim tx5 As TextBox = CType(FormView1.FindControl("Check_Out_DateTextBox"), TextBox)
        Dim i As Integer = Format(CDate(tx5.Text), "dd") - Format(CDate(tx4.Text), "dd")
        Dim lb As Label = CType(FormView1.FindControl("RBook_IdLabel1"), Label)
        Dim rb As Integer = lb.Text
        Dim p As Integer = i * j

        Dim dp2 As DropDownList = CType(FormView1.FindControl("DropDownList3"), DropDownList)
        Dim tx2 As TextBox = CType(FormView1.FindControl("No_Of_PersonTextBox"), TextBox)
        tx2.Text = dp2.Text

        Dim dp3 As DropDownList = CType(FormView1.FindControl("DropDownList4"), DropDownList)
        Dim tx3 As TextBox = CType(FormView1.FindControl("No_Of_ChildTextBox"), TextBox)
        tx3.Text = dp3.Text

        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "update Room_Booking_Detail set RPrice = " & p & " where RBook_Id = " & rb
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()

        cn.Close()
    End Sub


    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click

        Dim tx1 As TextBox = CType(FormView1.FindControl("RMaster_IdTextBox"), TextBox)
        Session("RM") = tx1.Text

        cn.ConnectionString = ConfigurationManager.ConnectionStrings("ConnectionString").ConnectionString
        cn.Open()

        Dim cmd As New SqlCommand
        cmd.CommandText = "select max(RPayment_Id) from Room_Payment"
        cmd.Connection = cn
        MsgBox(Session("RM"))
        Dim i As Integer = cmd.ExecuteScalar + 1
        Dim cmd3 As New SqlCommand
        cmd3.CommandText = "select sum(RPrice) from Room_Booking_Detail where RMaster_Id = " & Session("RM")
        cmd3.Connection = cn
        Dim pay As Integer = cmd3.ExecuteScalar()
        MsgBox(pay)
        Dim cmd2 As New SqlCommand
        cmd2.CommandText = "insert into Room_Payment (RPayment_Id,RMaster_Id,Payment) values (" & i & "," & Session("RM") & "," & (pay * 1.04) & ")"
        cmd2.Connection = cn
        cmd2.ExecuteNonQuery()

        Dim tx As TextBox = CType(FormView1.FindControl("RMaster_IdTextBox"), TextBox)
        Response.Redirect("~/bookingPayment.aspx?RMID=" & tx.Text)
    End Sub

    Protected Sub FormView1_ItemUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewUpdateEventArgs) Handles FormView1.ItemUpdating
        MsgBox("Do you want to book room ?", MsgBoxStyle.YesNoCancel, "Confirmation")
    End Sub

    Protected Sub FormView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging

    End Sub
End Class
