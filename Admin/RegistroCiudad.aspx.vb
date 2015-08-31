
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim cargo As New DataSetTableAdapters.CargoTableAdapter
    Dim ciudad As New DataSetTableAdapters.CiudadTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            If DropDownList1.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Region"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                DropDownList1.Focus()

            ElseIf Trim(ciudad.ConsultarNombre(nombre.Text).Rows.Count) > 0 Then
                Dim mensaje As String = "La ciudad ya  se encuentra registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                nombre.Text = ""
            Else
                ciudad.insertar(nombre.Text, DropDownList1.SelectedValue)
                Dim mensaje As String = "Ciudad registrada exitosamente"
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
