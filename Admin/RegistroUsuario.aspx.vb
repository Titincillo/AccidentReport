Partial Class Admin_Default3

    Inherits System.Web.UI.Page
    Dim trabajador1 As New DataSetTableAdapters.TrabajadorTableAdapter
    Dim cargo1 As New DataSetTableAdapters.CargoTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        trabajador1.CrearUsuario(Label1.Text, Label1.Text)
        Dim mensaje As String = "Usuario creado exitosamente"
        Dim strScript As String = "<script language=JavaScript>"
        strScript += "alert(""" & mensaje & """);"
        strScript += "</script>"
        If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
        End If
     
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        If (DropDownList2.SelectedIndex = 0) Then
            Label1.Text = ""
        Else
            Label1.Text = DropDownList2.SelectedValue
        End If

    End Sub
End Class
