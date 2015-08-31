Imports ReportesTableAdapters
Imports Microsoft.Reporting.WebForms

Partial Class Admin_ListarCliente
    Inherits System.Web.UI.Page
    Dim Filtrito As New ReportesTableAdapters.ClientesTableAdapter

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        ReportViewer1.LocalReport.Refresh()
    End Sub


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        ReportViewer1.LocalReport.Refresh()
    End Sub
End Class
