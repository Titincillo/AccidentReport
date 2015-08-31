
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim equipo As New DataSetTableAdapters.EquipoTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Trim(equipo.ConsultarPatente(patente.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "La patente del equipo ya  se encuentra registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                patente.Text = ""
            Else
                equipo.insertar(nombre.Text, patente.Text, "Activo")
                Dim mensaje As String = "Equipo registrado exitosamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                patente.Text = ""
                nombre.Text = ""

            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
