Imports System.Net.Mail
Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim accidente As New DataSetTableAdapters.AccidenteTableAdapter
    Dim trabajador As New DataSetTableAdapters.TrabajadorTableAdapter
    Dim correo As New DataSetTableAdapters.correoTableAdapter
    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        If RadioButton2.Checked = True Then
            RadioButton2.Checked = False
        End If
        dropquipo.Visible = True
        lblequipo.Visible = True
    End Sub
    Protected Sub RadioButton2_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton2.CheckedChanged
        If RadioButton1.Checked = True Then
            RadioButton1.Checked = False
        End If
        dropquipo.Visible = False
        lblequipo.Visible = False
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If droptrabajador.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Trabajador"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                droptrabajador.Focus()

            ElseIf RadioButton1.Checked = False And RadioButton2.Checked = False Then
                Dim check As String = "Seleccione si hay maquinaria afectada"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If

            ElseIf dropfaena.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Faena"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                dropfaena.Focus()

            ElseIf dropclasificacion.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Clasficación"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                dropclasificacion.Focus()

            ElseIf dropquipo.Visible = True And dropquipo.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Equipo"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                dropquipo.Focus()

            Else

                If RadioButton2.Checked = True Then
                    accidente.insertarSinEquipo(descripcion.Text, Actividad.Text, tipoAccidente.Text, TipoLesion.Text, Causa.Text, Lugar.Text, ubilesion.Text, Date.Now, "18100983-7", droptrabajador.SelectedValue, dropfaena.SelectedValue, dropclasificacion.SelectedValue)

                    Dim mensaje As String = "Accidente registrado exitosamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                ElseIf RadioButton1.Checked = True Then

                    accidente.insertarConEquipo(descripcion.Text, Actividad.Text, tipoAccidente.Text, TipoLesion.Text, Causa.Text, Lugar.Text, ubilesion.Text, Date.Now, "18100983-7", droptrabajador.SelectedValue, dropquipo.SelectedValue, dropfaena.SelectedValue, dropclasificacion.SelectedValue)

                    Dim mensaje As String = "Accidente registrado exitosamente"
                    Dim strScript As String = "<script language=JavaScript>"
                    strScript += "alert(""" & mensaje & """);"
                    strScript += "</script>"
                    If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                        ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                    End If
                End If
      Dim personas As String = ""
                For i = 0 To correo.Correo.Rows.Count - 1
                    If i = 0 Then
                        personas = correo.Correo.Rows(i).Item(4).ToString()
                    Else
                        personas = personas & ", " & correo.Correo.Rows(i).Item(4).ToString()
                    End If
                Next

                Dim message As New MailMessage
                Dim smtp As New SmtpClient
                message.From = New MailAddress("by_titin@hotmail.com")
                message.To.Add(personas)
                message.Body = "Descripción: " & descripcion.Text & " Afectado: " & trabajador.ConsultarRut(droptrabajador.SelectedValue).Rows(0).Item(1).ToString & " Causa: " & Causa.Text & " Registrado por: " & Session("nombre")
                message.Subject = "Registro Accidente" & Date.Now
                message.Priority = MailPriority.Normal
                smtp.EnableSsl = True
                smtp.Port = "587"
                smtp.Host = "smtp.live.com"
                smtp.Credentials = New Net.NetworkCredential("by_titin@hotmail.com", "titin123123")
                smtp.Send(message)
            End If

        Catch ex As Exception

        End Try

    End Sub
End Class
