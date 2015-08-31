
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim servicio As New DataSetTableAdapters.ServicioTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Trim(servicio.consultarNombre(nombre.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "El servicio ya se encuenta registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            Else
                servicio.Insertar(nombre.Text)
                Dim mensaje As String = "El servicio se registro con exito"
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

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        nombre.Attributes.Add("onkeypress", "javascript:return  validarLetras(event);")
    End Sub
End Class
