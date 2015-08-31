<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="ReporteCuasi.aspx.vb" Inherits="Prevencionista_ReporteCuasi" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 1924px;
        }
        .auto-style2 {
            width: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
    <head runat="server"/> </head>
    <form id="form1" runat="server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style2">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tFecha2" placeholder="Fecha Fin" runat="server"></asp:TextBox>
                    &amp;<asp:TextBox ID="tFecha1" placeholder="Fecha Inicio" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tFecha1_CalendarExtender" Format="yyyy/MM/dd" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="tFecha1">
                    </cc1:CalendarExtender>
                    <cc1:CalendarExtender ID="tFecha2_CalendarExtender" Format="yyyy/MM/dd" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="tFecha2">
                    </cc1:CalendarExtender>
                    <asp:Button ID="Button1" runat="server" Text="Filtrar" />
                </td>
                <td class="auto-style1">
&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Height="616px" Width="963px" style="margin-left: 65px">
                        <LocalReport ReportPath="Prevencionista\Reportes\ReportCuasiAccidente.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="CuasiAccidenteReporte" Name="CuasiAccidenteReporte" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                </td>
                <td class="auto-style1">
                    <asp:ObjectDataSource ID="CuasiAccidenteReporte" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByFechas" TypeName="ReportesTableAdapters.CuasiAccidenteTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tFecha1" DefaultValue="2015-01-01" Name="fecha1" PropertyName="Text" Type="DateTime" />
                            <asp:ControlParameter ControlID="tFecha2" DefaultValue="2020-12-30" Name="fecha2" PropertyName="Text" Type="DateTime" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</form>
</asp:Content>

