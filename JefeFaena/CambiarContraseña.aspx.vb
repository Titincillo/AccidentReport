
Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim trabajador As New DataSetTableAdapters.TrabajadorTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If trabajador.login(Session("usuario"), Antigua.Text).Rows.Count > 0 Then
            If nueva.Text = repeticion.Text Then
                trabajador.ActualizarClave(repeticion.Text, Session("usuario"))
                Dim check As String = "Contraseña actualizada correctamente"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
            Else
                Dim check As String = "Las contraseñas deben coincidir"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                repeticion.Focus()
            End If
        Else
            Dim check As String = "Contraseña Incorrecta"
            Dim script As String = "<script language=JavaScript>"
            script += "alert(""" & check & """);"
            script += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
            End If
            Antigua.Focus()
        End If

    End Sub
End Class
