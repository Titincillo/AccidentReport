
Partial Class Admin_Default
    Inherits System.Web.UI.Page
    Dim faena As New DataSetTableAdapters.FaenaTableAdapter
    Public Sub GridView1_OnRowCreated(ByVal sender As Object, ByVal e As Web.UI.WebControls.GridViewRowEventArgs) Handles GridView1.RowCreated
        e.Row.Cells(1).Visible = False
        e.Row.Cells(6).Visible = False
        e.Row.Cells(7).Visible = False
        e.Row.Cells(8).Visible = False
      
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub DataGrid1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        nombre.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(2).Text)
        Descripcion.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(3).Text)
        Inicio.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(4).Text)
        Fin.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(5).Text)
        Clientes.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(6).Text)
        Ciudad.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(7).Text)
        Servicio.SelectedValue = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells(8).Text)

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

            faena.Actualizar(nombre.Text, Descripcion.Text, Inicio.Text, Fin.Text, Clientes.SelectedValue, Ciudad.SelectedValue, Servicio.SelectedValue, GridView1.SelectedRow.Cells(1).Text)
            GridView1.DataBind()
            Dim mensaje As String = "Registro actualizado exitosamente"
            Dim strScript As String = "<script language=JavaScript>"
            strScript += "alert(""" & mensaje & """);"
            strScript += "</script>"
            If (Not ClientScript.IsStartupScriptRegistered("clientScript")) Then
                ClientScript.RegisterClientScriptBlock(Me.GetType(), "clientScript", strScript)
            End If
           

        End If
    End Sub


End Class
