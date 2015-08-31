
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cliente As New DataSetTableAdapters.Empresa_clienteTableAdapter
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        telefono.Attributes.Add("onkeypress", "javascript:return ValidNum(event);")
        nombre.Attributes.Add("onkeypress", "javascript:return validarLetras(event);")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Trim(cliente.consulta_rut(rut.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "El rut de la empresa ya existe"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                rut.Text = ""
            ElseIf Trim(cliente.ConsultarNombre(nombre.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "El nombre de la empresa ya existe"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            Else
                cliente.Insert(rut.Text, correo.Text, nombre.Text, telefono.Text, direccion.Text, "Activo")
                Dim mensaje As String = "Cliente registrado exitosamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                rut.Text = ""
                nombre.Text = ""
                correo.Text = ""
                telefono.Text = ""
                direccion.Text = ""
            End If
            
        Catch ex As Exception

        End Try

    End Sub

End Class
