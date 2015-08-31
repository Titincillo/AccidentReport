
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim servicio As New DataSetTableAdapters.ServicioTableAdapter
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        e.Row.Cells(1).Visible = False
    End Sub
    Protected Sub DataGrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        actualizar.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(2).Text)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If actualizar.Text = "" Then
            Dim mensaje As String = "Completar campo"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
        ElseIf servicio.ConsultarNombre(actualizar.Text).Rows.Count Then
            Dim mensaje As String = "Servicio ya se encuentra registrado"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
            actualizar.Focus()
        Else
            servicio.actualizar(actualizar.Text, GridView1.SelectedRow.Cells(1).Text)
            GridView1.DataBind()
            Dim mensaje As String = "Registro actualizado exitosamente"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
            actualizar.Text = ""


        End If
    End Sub

End Class
