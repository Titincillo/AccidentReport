Imports System.IO

Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim archivo As New DataSetTableAdapters.ArchivoTableAdapter
    Dim trabajadordata As New DataSetTableAdapters.TrabajadorTableAdapter
    Dim accidente As New DataSetTableAdapters.AccidenteTableAdapter
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        e.Row.Cells(1).Visible = False
        e.Row.Cells(2).Visible = False
        e.Row.Cells(3).Visible = False
        e.Row.Cells(4).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(7).Visible = False
        e.Row.Cells(8).Visible = False
        e.Row.Cells(5).Visible = False
        e.Row.Cells(9).Visible = False
        e.Row.Cells(11).Visible = False
        e.Row.Cells(12).Visible = False
        e.Row.Cells(14).Visible = False
        e.Row.Cells(15).Visible = False
        e.Row.Cells(16).Visible = False

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If accidente.BuscarAccidente(folio.Text).Rows.Count > 0 Then
                Dim mensaje As String = "El numero de folio ya se encuentra registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If

            Else

                For Each postedFile As HttpPostedFile In FileUpload1.PostedFiles
                    Dim FileExt As String
                    FileExt = System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower
                    If FileExt = ".png" Or FileExt = ".jpg" Or FileExt = ".jpeg" Then
                        Dim fileName As String = Path.GetFileName(postedFile.FileName)
                        postedFile.SaveAs(Server.MapPath("ArchivosAccidente/") & fileName)
                        Dim ruta = "ArchivosAccidente/" & fileName
                        archivo.Accidente(fileName, ruta, GridView1.SelectedRow.Cells(1).Text)
                        accidente.Investigacion(folio.Text, Date.Now, diasperdidos.Text, TextBox1.Text, GridView1.SelectedRow.Cells(1).Text)

                        Dim mensaje As String = "Archivos cargados correctamente"
                        Dim strScript As String = "<script language=JavaScript>"
                        strScript += "alert(""" & mensaje & """);"
                        strScript += "</script>"
                        If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                            ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                        End If
                        GridView1.DataBind()
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
            End If
        Catch ex As Exception
            Dim mensaje As String = "El numero de folio ya se encuentra registrado"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
        End Try

    End Sub

End Class
