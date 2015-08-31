<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="ListarCargo.aspx.vb" Inherits="Admin_ListarCargo" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 448px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <p>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
    <br />
</p>
        <table align="center" style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="text-align: center; margin-left: 0px;" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="754px" align="center">
            <LocalReport ReportPath="Admin\ArchivoReportes\ReportCargo.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="Cargos" Name="Cargo" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
                    <asp:ObjectDataSource ID="ListadoCargo" runat="server"></asp:ObjectDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ObjectDataSource ID="Cargos" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CargoTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="descripcion" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="descripcion" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
<p>
</p>
    </form>
</asp:Content>

