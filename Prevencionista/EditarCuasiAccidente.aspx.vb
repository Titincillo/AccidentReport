
Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page

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
        e.Row.Cells(10).Visible = False
        e.Row.Cells(11).Visible = False
        e.Row.Cells(13).Visible = False

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If dropPotencial.SelectedIndex = 0 Then
                dropPotencial.Focus()
                Dim mensaje As String = "Seleccione potencial"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                dropPotencial.Focus()
            Else

                If dropquipo.Visible = False Then
                    cuasi.ActualizarConAfectado(descripcion.Text, dropPotencial.SelectedValue, Causa.Text, Actividad.Text, Lugar.Text, GridView1.SelectedRow.Cells(10).Text, dropfaena.SelectedValue, GridView1.SelectedRow.Cells(2).Text)

                    Dim mensaje As String = "Cuasi accidente actualizado correctamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                    GridView1.DataBind()

                ElseIf Trabajador.Visible = False Then
                    cuasi.ActualizarConMaquinaria(descripcion.Text, dropPotencial.SelectedValue, Causa.Text, Actividad.Text, Lugar.Text, dropquipo.SelectedValue, dropfaena.SelectedValue, GridView1.SelectedRow.Cells(2).Text)
                    Dim mensaje As String = "Cuasi accidente actualizado correctamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                    GridView1.DataBind()
                Else
                    cuasi.ActualizarConAmbos(descripcion.Text, dropPotencial.SelectedValue, Causa.Text, Actividad.Text, Lugar.Text, GridView1.SelectedRow.Cells(10).Text, dropquipo.SelectedValue, dropfaena.SelectedValue, GridView1.SelectedRow.Cells(2).Text)
                    Dim mensaje As String = "Cuasi accidente actualizado correctamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                    GridView1.DataBind()
                End If

            End If

        Catch ex As Exception
        End Try

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim nombre As String
        If GridView1.SelectedRow.Cells(10).Text = "&nbsp;" Then
            lbltrabajador.Visible = False
            Trabajador.Visible = False
        Else
            nombre = trabajadordata.ConsultarRut(GridView1.SelectedRow.Cells(10).Text).Rows(0).Item(1).ToString
            Trabajador.Text = nombre
            lbltrabajador.Visible = True
            Trabajador.Visible = True
        End If

        descripcion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(1).Text)
        dropPotencial.SelectedValue = GridView1.SelectedRow.Cells(4).Text
        Causa.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(3).Text)
        Actividad.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(5).Text)
        Lugar.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(6).Text)
    
        If GridView1.SelectedRow.Cells(13).Text = "&nbsp;" Then
            lblequipo.Visible = False
            dropquipo.Visible = False
        Else
            lblequipo.Visible = True
            dropquipo.Visible = True
            dropquipo.SelectedValue = GridView1.SelectedRow.Cells(13).Text
        End If

        dropfaena.SelectedValue = GridView1.SelectedRow.Cells(11).Text

    End Sub
End Class
