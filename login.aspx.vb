
Partial Class _Default
    Inherits System.Web.UI.Page
    Dim login As New DataSetTableAdapters.TrabajadorTableAdapter
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Try
            Dim dd As Data.DataTable = login.login(Me.usuario.Text, Me.contraseña.Text)
            If dd.Rows.Count > 0 And login.login(usuario.Text, contraseña.Text).Rows(0).Item(4).ToString = 1 Then
                Session("usuario") = dd.Rows(0).Item(0).ToString
                Session("nombre") = dd.Rows(0).Item(1).ToString
                FormsAuthentication.RedirectFromLoginPage(Me.usuario.Text, False) ' entrega de la llave
                Response.Redirect("~/Admin/index.aspx")

            ElseIf dd.Rows.Count > 0 And login.login(usuario.Text, contraseña.Text).Rows(0).Item(4).ToString = 2 Then
                Session("cargo") = dd.Rows(0).Item(4).ToString
                Session("usuario") = dd.Rows(0).Item(0).ToString
                Session("nombre") = dd.Rows(0).Item(1).ToString
                FormsAuthentication.RedirectFromLoginPage(Me.usuario.Text, False) ' entrega de la llave
                Response.Redirect("~/Prevencionista/index.aspx")

            ElseIf dd.Rows.Count > 0 And login.login(usuario.Text, contraseña.Text).Rows(0).Item(4).ToString = 3 Then
                Session("cargo") = dd.Rows(0).Item(4).ToString
                Session("usuario") = dd.Rows(0).Item(0).ToString
                Session("nombre") = dd.Rows(0).Item(1).ToString
                FormsAuthentication.RedirectFromLoginPage(Me.usuario.Text, False) ' entrega de la llave
                Response.Redirect("~/Supervisor/index.aspx")

            ElseIf dd.Rows.Count > 0 And login.login(usuario.Text, contraseña.Text).Rows(0).Item(4).ToString = 4 Then
                Session("cargo") = dd.Rows(0).Item(4).ToString
                Session("usuario") = dd.Rows(0).Item(0).ToString
                Session("nombre") = dd.Rows(0).Item(1).ToString
                FormsAuthentication.RedirectFromLoginPage(Me.usuario.Text, False) ' entrega de la llave
                Response.Redirect("~/JefeFaena/index.aspx")

            Else
                Dim mensaje As String = "Usuario o contraseña mal ingresados"
                Dim strScript As String = "<script language=JavaScript>"
                strScript += "alert(""" & mensaje & """);"
                strScript += "</script>"
                If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
                End If
            End If
        Catch ex As Exception
            Dim mensaje As String = "Usuario o contraseña mal ingresados"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
        End Try

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        usuario.Attributes.Add("onkeypress", "javascript:return ValidarLogin(event);")
        contraseña.Attributes.Add("onkeypress", "javascript:return ValidarLogin(event);")
    End Sub

  
End Class
