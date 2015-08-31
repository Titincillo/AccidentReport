
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim equipo As New DataSetTableAdapters.EquipoTableAdapter
    Dim descripcion As String
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        e.Row.Cells(1).Visible = False
        e.Row.Cells(4).Visible = False
    End Sub
    Protected Sub DataGrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        nombre.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(3).Text)
        patente.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(2).Text)
        DropDownList1.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(4).Text)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If nombre.Text = "" Then
            Dim mensaje As String = "Completar campo"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
        ElseIf equipo.ConsultarPatente(nombre.Text).Rows.Count > 0 Then
            Dim mensaje As String = "Patente ya se encuentra registrada"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If

            nombre.Focus()
        Else
            equipo.actualizar(nombre.Text, patente.Text, DropDownList1.SelectedValue, GridView1.SelectedRow.Cells(1).Text)
            GridView1.DataBind()
            Dim mensaje As String = "Registro actualizado exitosamente"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
            nombre.Text = ""
            patente.Text = ""

        End If
    End Sub

   
End Class
