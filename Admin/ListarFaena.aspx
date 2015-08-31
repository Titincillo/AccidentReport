<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="ListarFaena.aspx.vb" Inherits="Admin_ListarFaena" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
        .auto-style2 {
            width: 439px;
        }
        .auto-style3 {
            height: 19px;
            width: 439px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style1">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="margin-left: 2px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="813px">
                        <LocalReport ReportPath="Admin\ArchivoReportes\ReportFaena.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="Faena" Name="DataSet1" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                    <asp:ObjectDataSource ID="Faena" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataFaena" TypeName="ListadosTableAdapters.FaenaTableAdapter"></asp:ObjectDataSource>
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </form>
</asp:Content>

