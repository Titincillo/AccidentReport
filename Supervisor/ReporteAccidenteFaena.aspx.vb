
Partial Class Supervisor_ReporteAccidenteFaena
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ReportViewer1.LocalReport.Refresh()
    End Sub
End Class
