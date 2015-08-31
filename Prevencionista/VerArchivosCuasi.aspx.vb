Imports System.IO

Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim archivo As New DataSetTableAdapters.ArchivoTableAdapter
    Dim cuasi As New DataSetTableAdapters.CuasiAccidenteTableAdapter
    Dim trabajadordata As New DataSetTableAdapters.TrabajadorTableAdapter

    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        e.Row.Cells(1).Visible = False
        e.Row.Cells(2).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(3).Visible = False
        e.Row.Cells(5).Visible = False
        e.Row.Cells(8).Visible = False
        e.Row.Cells(8).Visible = False
        e.Row.Cells(9).Visible = False
        e.Row.Cells(11).Visible = False
        e.Row.Cells(13).Visible = False

    End Sub

    Public Sub GridView2_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView2.RowCreated
        e.Row.Cells(1).Visible = False

        e.Row.Cells(3).Visible = False
        e.Row.Cells(4).Visible = False
        e.Row.Cells(5).Visible = False
    End Sub

  

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        If (GridView2.SelectedRow.Cells(3).Text = "") Then
            Image1.Visible = False
        End If
        Image1.Visible = True
        Image1.ImageUrl = GridView2.SelectedRow.Cells(3).Text
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Image1.Visible = False
    End Sub
End Class
