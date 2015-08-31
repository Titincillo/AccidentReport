
Partial Class Prevencionista_Default2
    Inherits System.Web.UI.Page
    Dim accidente As New DataSetTableAdapters.AccidenteTableAdapter
    Dim trabajadordata As New DataSetTableAdapters.TrabajadorTableAdapter
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated

        e.Row.Cells(1).Visible = False
        e.Row.Cells(2).Visible = False
        e.Row.Cells(3).Visible = False
        e.Row.Cells(4).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(7).Visible = False
        e.Row.Cells(8).Visible = False
        e.Row.Cells(9).Visible = False
        e.Row.Cells(5).Visible = False
        e.Row.Cells(11).Visible = False
        e.Row.Cells(12).Visible = False
        e.Row.Cells(13).Visible = False
        e.Row.Cells(14).Visible = False
        e.Row.Cells(15).Visible = False
        e.Row.Cells(16).Visible = False
        e.Row.Cells(17).Visible = False
        e.Row.Cells(18).Visible = False
        e.Row.Cells(20).Visible = False

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try

            If dropquipo.Visible = False Then
                accidente.ActualizarSinEquipo(descripcion.Text, Actividad.Text, tipoAccidente.Text, TipoLesion.Text, Causa.Text, Lugar.Text, ubilesion.Text, dropfaena.SelectedValue, dropclasificacion.SelectedValue, GridView1.SelectedRow.Cells(1).Text)
                Dim mensaje As String = "Cuasi accidente actualizado correctamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
            Else
                accidente.actualizarAccidente(descripcion.Text, Actividad.Text, tipoAccidente.Text, TipoLesion.Text, Causa.Text, Lugar.Text, ubilesion.Text, dropquipo.SelectedValue, dropfaena.SelectedValue, dropclasificacion.SelectedValue, GridView1.SelectedRow.Cells(1).Text)
                Dim mensaje As String = "Cuasi accidente actualizado correctamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
            End If

            GridView1.DataBind()

        Catch ex As Exception

        End Try


    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim nombre As String
        nombre = trabajadordata.ConsultarRut(GridView1.SelectedRow.Cells(13).Text).Rows(0).Item(1).ToString
        trabajador.Text = nombre
        descripcion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(2).Text)
        Actividad.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(3).Text)
        tipoAccidente.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(4).Text)
        TipoLesion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(5).Text)
        Causa.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(6).Text)
        Lugar.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(7).Text)
        ubilesion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(8).Text)
        If GridView1.SelectedRow.Cells(14).Text = "&nbsp;" Then
            lblequipo.Visible = False
            dropquipo.Visible = False
        Else
            lblequipo.Visible = True
            dropquipo.Visible = True
            dropquipo.SelectedValue = GridView1.SelectedRow.Cells(14).Text
        End If
        dropfaena.SelectedValue = GridView1.SelectedRow.Cells(15).Text
        dropclasificacion.SelectedValue = GridView1.SelectedRow.Cells(16).Text
    End Sub
End Class
