Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine

Partial Class Admin_FoodReport

    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As New DataSet1

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\WebSite56\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True"
        cn.Open()

        da = New SqlDataAdapter("select * from Feedback", cn)
        da.Fill(ds, "Feedback")
        Dim rep As New ReportDocument
        rep.Load(Server.MapPath("~/Report_Feedback.rpt"))
        rep.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = rep

    End Sub
End Class
