<%@ Page Title="" Language="VB" MasterPageFile="~/Prevencionista/MasterPage.master" AutoEventWireup="false" CodeFile="ReporteAcci.aspx.vb" Inherits="Prevencionista_ReporteAcci" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

               <head runat="server"/> </head>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td><br /><br />
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="tFecha1" placeholder="Fecha Inicio" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tFecha1_CalendarExtender2" runat="server" BehaviorID="tFecha1_CalendarExtender2" TargetControlID="tFecha1">
                </cc1:CalendarExtender>
                    <cc1:CalendarExtender ID="tFecha1_CalendarExtender" Format="yyyy/MM/dd" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="tFecha1">
                    </cc1:CalendarExtender>
                &amp;&nbsp;<asp:TextBox ID="tFecha2" placeholder="Fecha Fin" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="tFecha2_CalendarExtender2" runat="server" BehaviorID="tFecha2_CalendarExtender2" TargetControlID="tFecha2">
                </cc1:CalendarExtender>
                    <cc1:CalendarExtender ID="tFecha2_CalendarExtender" Format="yyyy/MM/dd" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="tFecha2">
                    </cc1:CalendarExtender>
                    <asp:Button ID="Button1" runat="server" Text="Filtrar" />
            </td>
            <td>
&nbsp;
                    &nbsp;&nbsp;&nbsp;
                    </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1146px" style="margin-left: 96px">
                    <LocalReport ReportPath="Prevencionista\Reportes\ReportAccidente.rdlc">
                        <DataSources>
                            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                        </DataSources>
                    </LocalReport>
                </rsweb:ReportViewer>
                </td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByFechas" TypeName="ReportesTableAdapters.AccidenteTableAdapter">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="tFecha1" DefaultValue="2010-01-01" Name="fecha1" PropertyName="Text" Type="DateTime" />
                        <asp:ControlParameter ControlID="tFecha2" DefaultValue="2020-12-29" Name="fecha2" PropertyName="Text" Type="DateTime" />
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
</form>
</asp:Content>

