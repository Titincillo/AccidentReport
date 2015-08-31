
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cargo As New DataSetTableAdapters.CargoTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If Trim(cargo.ConsultarCargo(nombre.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "El cargo ya  se encuentra registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            Else
                cargo.Insert(nombre.Text)
                Dim mensaje As String = "Cargo registrado exitosamente"
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
