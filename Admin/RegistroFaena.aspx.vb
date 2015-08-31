
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    'Dim trabajador_faena As New DataSetTableAdapters.
    Dim faena As New DataSetTableAdapters.FaenaTableAdapter

    Dim cargos As New DataSetTableAdapters.CargoTableAdapter

    Function validafechatermino() As Boolean

        If IsDate(fecha_fin.Text) Then

            If CDate(fecha_fin.Text) >= CDate(Fecha_inicio.Text) Then

                'MsgBox("La fecha ingresada es correcta", MsgBoxStyle.Information, "fecha")

                Return True
            Else
                Dim mensaje As String = "La fecha de termino es menor a la fecha de inicio"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If


                fecha_fin.Text = ""

                Return False

            End If

        Else
            MsgBox("Formato de fecha incorrecto", MsgBoxStyle.Critical, "ERROR")

            fecha_fin.Text = ""

            Return False

        End If
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        validafechatermino()
        Try
        If empresa.SelectedIndex = 0 Then
            Dim check As String = "Seleccione Cargo"
            Dim script As String = "<script language=JavaScript>"
            script += "alert(""" & check & """);"
            script += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script)
            End If
                empresa.Focus()

            ElseIf servicio.SelectedIndex = 0 Then

                Dim check1 As String = "Seleccione Especialidad"
                Dim script1 As String = "<script language=JavaScript>"
                script1 += "alert(""" & check1 & """);"
                script1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script1)
                End If
                servicio.Focus()


            ElseIf region.SelectedIndex = 0 Then

                Dim check1 As String = "Seleccione Especialidad"
                Dim script1 As String = "<script language=JavaScript>"
                script1 += "alert(""" & check1 & """);"
                script1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script1)
                End If
                region.Focus()

            ElseIf ciudad.SelectedIndex = 0 Then

                Dim check1 As String = "Seleccione Especialidad"
                Dim script1 As String = "<script language=JavaScript>"
                script1 += "alert(""" & check1 & """);"
                script1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", script1)
                End If
                ciudad.Focus()
            End If

            If faena.ConsultarNombre(nombre.Text).Rows.Count > 0 Then
                Dim mensaje1 As String = "La faena ya se encuentra registrada"
                Dim strScript1 As String = "<script language=JavaScript>"
                strScript1 += "alert(""" & mensaje1 & """);"
                strScript1 += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript1)
                End If


            End If
            faena.insertar(nombre.Text, descripcion.Text, Fecha_inicio.Text, fecha_fin.Text, empresa.SelectedValue, ciudad.SelectedValue, servicio.SelectedValue)
            Dim mensaje As String = "Faena registrada exitosamente"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If

        Catch ex As Exception

        End Try
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        nombre.Attributes.Add("onkeypress", "javascript:return validarLetras(event);")
    End Sub
End Class
