
Partial Class Prevencionista_ReporteCuasi
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ReportViewer1.LocalReport.Refresh()
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Convert.ToDateTime(tFecha1.Text)
        'Convert.ToDateTime(tFecha2.Text)
    End Sub

    
End Class
