<%@ Page Title="" Language="VB" MasterPageFile="~/Supervisor/MasterPage.master" AutoEventWireup="false" CodeFile="ReporteAccidenteFaena.aspx.vb" Inherits="Supervisor_ReporteAccidenteFaena" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p>
            <br />
        </p>
        <p>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="tFaena" runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Filtrar" />
                    </td>
                    <td class="auto-style1">
&nbsp;
                        </td>
                    <td class="auto-style1"></td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1184px" style="margin-left: 95px">
                            <LocalReport ReportPath="Supervisor\Reportes\ReportAccidenteFaena.rdlc">
                                <DataSources>
                                    <rsweb:ReportDataSource DataSourceId="AccidenteFaena" Name="AccidenteFaena" />
                                </DataSources>
                            </LocalReport>
                        </rsweb:ReportViewer>
                    </td>
                    <td>
                        <asp:ObjectDataSource ID="AccidenteFaena" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByFaena" TypeName="ReportesTableAdapters.AccidenteTableAdapter">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="tFaena" DefaultValue="%" Name="nombre" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
    </form>
</asp:Content>

