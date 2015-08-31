
Partial Class Prevencionista_Default
    Inherits System.Web.UI.Page
    Dim accidente As New DataSetTableAdapters.AccidenteTableAdapter
    Protected trabajadores As New DataSetTableAdapters.TrabajadorTableAdapter
    Protected gravedad As New DataSetTableAdapters.TasaGravedadTableAdapter
    Protected diascargo As Integer
    Protected diasperdidos As Integer
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim diasperdidosAbr2015 As Integer
        Dim cargoAbr2015 As Integer
        Dim cantTrabajadores = trabajadores.GetData.Rows.Count
        For i = 0 To gravedad.Gravedad("abr", 2015).Rows.Count - 1
            If gravedad.Gravedad("abr", 2015).Rows(i).Item(3).ToString = "" Then
            Else
                cargoAbr2015 = cargoAbr2015 + gravedad.Gravedad("abr", 2015).Rows(i).Item(3).ToString
            End If
        Next
        For i = 0 To gravedad.Gravedad("abr", 2015).Rows.Count - 1
            If gravedad.Gravedad("abr", 2015).Rows(i).Item(2).ToString = "" Then
            Else
                diasperdidosAbr2015 = diasperdidosAbr2015 + gravedad.Gravedad("abr", 2015).Rows(i).Item(2).ToString
            End If
        Next
        Dim tasaAbr2015 = Math.Round((cargoAbr2015 + diasperdidosAbr2015) * 1000000 / (30 * 8 * cantTrabajadores))
        MsgBox("diascargo:" & cargoAbr2015 & "dias perdidos: " & diasperdidosAbr2015 & "Tasa:" & tasaAbr2015)

    End Sub
End Class
