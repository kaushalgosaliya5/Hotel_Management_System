Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data.SqlClient

Partial Class Admin_FoodReport

    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As New DataSet2

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\WebSite56\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True"
        cn.Open()
        'MsgBox(“OK”)
        da = New SqlDataAdapter("select * from R_Food", cn)
        da.Fill(ds, "R_Food")
        Dim rep As New ReportDocument
        rep.Load(Server.MapPath("~/Report_Food.rpt"))
        rep.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = rep


    End Sub

    Protected Sub CrystalReportViewer1_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer1.Init

    End Sub
End Class
