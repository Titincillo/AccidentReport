
Partial Class Admin_Default2
    Inherits System.Web.UI.Page
    Dim trabajador As New DataSetTableAdapters.TrabajadorTableAdapter
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        telefono.Attributes.Add("onkeypress", "javascript:return ValidNum(event);")
        nombre.Attributes.Add("onkeypress", "javascript:return validarLetras(event);")
    End Sub

    

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim fecha As Date = CType(Fecha_nac.Text, Object)
            Dim ts As TimeSpan = Date.Now - fecha
            Dim differenceInDays As Integer = ts.Days / 365



            If cargo.SelectedIndex = 0 Then
                Dim check As String = "Seleccione Cargo"
                Dim script As String = "<script language=JavaScript>"
                script += "alert(""" & check & """);"
                script += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
                End If
                cargo.Focus()
            ElseIf DropDownList1.SelectedIndex = 0 Then
                Dim check1 As String = "Seleccione Especialidad"
                Dim script1 As String = "<script language=JavaScript>"
                script1 += "alert(""" & check1 & """);"
                script1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script1)
                End If
                DropDownList1.Focus()

            ElseIf differenceInDays < 18 Then
                Dim check1 As String = "El trabajador debe ser mayor de edad"
                Dim script1 As String = "<script language=JavaScript>"
                script1 += "alert(""" & check1 & """);"
                script1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script1)
                End If
                Fecha_nac.Focus()


            ElseIf Trim(trabajador.ConsultarRut(Rut.Text.Replace(".", "")).Rows.Count) > 0 Then
                Dim mensaje As String = "El trabajador ya se encuentra registrado"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                Rut.Focus()
                Rut.Text = ""
            Else
                trabajador.insertar(Rut.Text.Replace(".", ""), nombre.Text, Fecha_nac.Text.ToString, direccion.Text, cargo.SelectedValue, telefono.Text, correo.Text, "Activo", DropDownList1.SelectedValue, Rut.Text.Replace(".", ""))
                Dim mensaje As String = "Trabajador registrado exitosamente"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
                Rut.Text = ""
                direccion.Text = ""
                nombre.Text = ""
                cargo.SelectedIndex = 0
                DropDownList1.SelectedIndex = 0
                telefono.Text = ""
                correo.Text = ""
                Fecha_nac.Text = ""
            End If
        Catch ex As Exception
        End Try
    End Sub
End Class
