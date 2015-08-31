
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim descripcion As String
    Dim trabajador As New DataSetTableAdapters.TrabajadorTableAdapter
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated

        e.Row.Cells(4).Visible = False
        e.Row.Cells(5).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(9).Visible = False
        e.Row.Cells(10).Visible = False

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

       
    End Sub
    Protected Sub DataGrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        lRut.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(1).Text)
        nombre.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(2).Text)
        fecha.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(3).Text)
        direccion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(4).Text)
        cargo.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(5).Text)
        telefono.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(6).Text)
        correo.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(7).Text)
        estado.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(8).Text)
        especialidad.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(9).Text)
        Contraseña.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(10).Text)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If nombre.Text = "" Then
            Dim mensaje As String = "Completar campo"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If

            nombre.Focus()
        Else
            trabajador.actualizar(nombre.Text, fecha.Text, direccion.Text, cargo.SelectedValue, telefono.Text, correo.Text, estado.SelectedValue, especialidad.SelectedValue, Contraseña.Text, GridView1.SelectedRow.Cells(1).Text)
            GridView1.DataBind()
            Dim mensaje As String = "Registro actualizado exitosamente"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
            nombre.Text = ""
            fecha.Text = ""
            correo.Text = ""
            Contraseña.Text = ""
            telefono.Text = ""
            direccion.Text = ""
            estado.SelectedIndex = 0
        End If
    End Sub


End Class
