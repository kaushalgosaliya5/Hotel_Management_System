﻿

Imports CrystalDecisions.Shared
Imports CrystalDecisions.CrystalReports.Engine
Imports System.Data.SqlClient

Partial Class Admin_RoomReport
    Inherits System.Web.UI.Page

    Dim cn As New SqlConnection
    Dim da As SqlDataAdapter
    Dim ds As New DataSet6

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        cn.ConnectionString = "Data Source=.\SQLEXPRESS;AttachDbFilename=F:\WebSite56\App_Data\ASPNETDB.MDF;Integrated Security=True;User Instance=True"
        cn.Open()

        da = New SqlDataAdapter("select * from Room_Booking_Master", cn)
        da.Fill(ds, "Room_Booking_Master")
        Dim rep As New ReportDocument
        rep.Load(Server.MapPath("~/Report_Room.rpt"))
        rep.SetDataSource(ds)
        CrystalReportViewer1.ReportSource = rep

    End Sub

   
End Class
