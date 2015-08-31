
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    'Dim lugar As New DataSetTableAdapters.LugarTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        'Try
        '    If Trim(lugar.ConsultaNombre(nombre.Text).Rows.Count) > 0 Then
        '        Dim mensaje As String = "El lugar ya se encuenta registrado"
        '        Dim strScript As String = "<script language=JavaScript>"
        '        strScript += "alert(""" & mensaje & """);"
        '        strScript += "</script>"
        '        If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
        '            ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
        '        End If
        '        nombre.Text = ""
        '    Else
        '        lugar.Insert(nombre.Text)
        '    End If
        'Catch ex As Exception

        'End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        nombre.Attributes.Add("onkeypress", "javascript:return  validarLetras(event);")
    End Sub
End Class
