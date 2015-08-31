Imports System.Net.Mail

Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim cuasi As New DataSetTableAdapters.CuasiAccidenteTableAdapter
    Protected Sub trabajador1_CheckedChanged(sender As Object, e As EventArgs) Handles trabajador.CheckedChanged
        Equipo.Checked = False
        Ambos.Checked = False
        lbltrabajador.Visible = True
        droptrabajador.Visible = True
        lblequipo.Visible = False
        dropequipo.Visible = False
    End Sub

    Protected Sub Equipo_CheckedChanged(sender As Object, e As EventArgs) Handles Equipo.CheckedChanged
        trabajador.Checked = False
        Ambos.Checked = False
        lbltrabajador.Visible = False
        droptrabajador.Visible = False
        lblequipo.Visible = True
        dropequipo.Visible = True
    End Sub

    Protected Sub Ambos_CheckedChanged(sender As Object, e As EventArgs) Handles Ambos.CheckedChanged
        trabajador.Checked = False
        Equipo.Checked = False
        lblequipo.Visible = True
        dropequipo.Visible = True
        lbltrabajador.Visible = True
        droptrabajador.Visible = True
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Dropfaena.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Faena"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                Dropfaena.Focus()
            ElseIf Ambos.Checked = False And trabajador.Checked = False And Equipo.Checked = False Then
                Dim check As String = "Seleccione afectado"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If

            ElseIf droptrabajador.Visible = True And droptrabajador.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Trabajador"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                droptrabajador.Focus()

            ElseIf dropPotencial.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Potencial"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                dropPotencial.Focus()

            ElseIf dropequipo.Visible = True And dropequipo.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Equipo"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                dropequipo.Focus()



            Else
                'insertar
                If Ambos.Checked = True Then
                    cuasi.insertAmbos(descripcion.Text, dropPotencial.SelectedValue, causa.Text, actividad.Text, lugar.Text, Date.Now, Session("usuario"), droptrabajador.SelectedValue, dropequipo.SelectedValue, Dropfaena.SelectedValue)
                    Dim mensaje As String = "Cuasi accidente registrado exitosamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                End If

                If Equipo.Checked = True Then
                    cuasi.insertarEquipo(descripcion.Text, dropPotencial.SelectedValue, causa.Text, actividad.Text, lugar.Text, Date.Now, Session("usuario"), dropequipo.SelectedValue, Dropfaena.SelectedValue)
                    Dim mensaje As String = "Cuasi accidente registrado exitosamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                End If

                If trabajador.Checked = True Then
                    cuasi.insertarTrabajador(descripcion.Text, dropPotencial.SelectedValue, causa.Text, actividad.Text, lugar.Text, Date.Now, Session("usuario"), droptrabajador.SelectedValue, Dropfaena.SelectedValue)
                    Dim mensaje As String = "Cuasi accidente registrado exitosamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                End If
              


            End If

        Catch ex As Exception

        End Try
    End Sub
End Class
