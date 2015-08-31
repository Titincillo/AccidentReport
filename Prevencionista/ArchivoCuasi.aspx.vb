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

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            For Each postedFile As HttpPostedFile In FileUpload1.PostedFiles
                Dim FileExt As String
                FileExt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower
                If FileExt = ".png" Or FileExt = ".jpg" Or FileExt = ".jpeg" Then
                    Dim fileName As String = Path.GetFileName(postedFile.FileName)
                    postedFile.SaveAs(Server.MapPath("ArchivosCuasi/") & fileName)
                    Dim ruta = "ArchivosCuasi/" & fileName
                    archivo.CuasiAccidente(fileName, ruta, GridView1.SelectedRow.Cells(2).Text)

                    Dim mensaje As String = "Archivos cargados correctamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                Else
                    Dim mensaje As String = "La extención de los archivos debe ser JPG o PNG"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                End If

            Next

        Catch ex As Exception

        End Try
       


    End Sub

End Class
