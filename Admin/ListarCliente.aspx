<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="ListarCliente.aspx.vb" Inherits="Admin_ListarCliente" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 19px;
            width: 183px;
        }
        .auto-style2 {
            height: 442px;
            width: 183px;
        }
        .auto-style3 {
            width: 100%;
            height: 507px;
        }
        .auto-style4 {
            height: 17px;
            width: 183px;
        }
        .auto-style5 {
            height: 19px;
            width: 10px;
        }
        .auto-style6 {
            height: 442px;
            width: 10px;
        }
        .auto-style7 {
            height: 17px;
            width: 10px;
        }
        .auto-style8 {
            height: 19px;
            width: 1333px;
        }
        .auto-style9 {
            height: 442px;
            width: 1333px;
        }
        .auto-style10 {
            height: 17px;
            width: 1333px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style1">
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="Filtro" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" style="height: 29px" Text="Filtrar" />
                &nbsp;&nbsp;&nbsp;
                    </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style9">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" style="text-align: center; margin-left: 3px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1126px">
                        <LocalReport ReportPath="Admin\ArchivoReportes\ReportCliente.rdlc">
                            <DataSources>
                                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="Clientes" />
                            </DataSources>
                        </LocalReport>
                    </rsweb:ReportViewer>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="FiltroNombre" TypeName="ReportesTableAdapters.ClientesTableAdapter">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Filtro" DefaultValue="%" Name="nombre" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:ObjectDataSource>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style10"></td>
                <td class="auto-style7"></td>
            </tr>
        </table>
    </form>
</asp:Content>

