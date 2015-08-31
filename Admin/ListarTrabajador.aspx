<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="ListarTrabajador.aspx.vb" Inherits="Admin_ListarTrabajador" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="886px">
                            <LocalReport ReportPath="Admin\ArchivoReportes\ReportTrabajador.rdlc">
                                <DataSources>
                                    <rsweb:ReportDataSource DataSourceId="Trabajador" Name="Trabajador" />
                                </DataSources>
                            </LocalReport>
                        </rsweb:ReportViewer>
                        <asp:ObjectDataSource ID="Trabajador" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="ListadoTrabajador" TypeName="ListadosTableAdapters.TrabajadorTableAdapter"></asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</asp:Content>

