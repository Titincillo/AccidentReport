﻿
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim especialidad As New DataSetTableAdapters.EspecialidadTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Trim(especialidad.ConsultarNombre(nombre.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "La especialdad ya  se encuentra registrada"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            Else
                especialidad.Insert(nombre.Text)
                Dim mensaje As String = "Especialdad registrado exitosamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class
