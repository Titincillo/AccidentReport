<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarCliente.aspx.vb" Inherits="Admin_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            //agregar una nueva columna con todo el texto 
            //contenido en las columnas de la grilla 
            // contains de Jquery es CaseSentive, por eso a minúscula
            $(".filtrar tr:has(td)").each(function () {
                var t = $(this).text().toLowerCase();
                $("<td class='indexColumn'></td>")
                .hide().text(t).appendTo(this);
            });
            //Agregar el comportamiento al texto (se selecciona por el ID) 
            $("#filtro").keyup(function () {
                var s = $(this).val().toLowerCase().split(" ");
                $(".filtrar tr:hidden").show();
                $.each(s, function () {
                    $(".filtrar tr:visible .indexColumn:not(:contains('"
                    + this + "'))").parent().hide();
                });
            });
        });
     </script>
    <style type="text/css">
        .auto-style1 {
            width: 351px;
        }
        .auto-style2 {
            width: 351px;
            height: 49px;
        }
        .auto-style3 {
            height: 49px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <form id="form1" runat="server">
      <br />
        <table style="width:100%;">
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style3"><h1>Editar Empresa Cliente</h1> 
</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br /> 
                    <br /> <br />
                </td>
                <td>
                
                 
                    <asp:Label ID="Label2" runat="server" Text="Filtrar:"></asp:Label><br />
                     <input type="text" id="filtro" align="center" />
               <br />   <br />
                       <div  style="height:200px;overflow:scroll; width:500px;"> 
                        <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Rut" DataSourceID="ObjectDataSource1" Width="483px">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Rut" HeaderText="Rut" ReadOnly="True" SortExpression="Rut" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            </Columns>
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.Empresa_clienteTableAdapter" UpdateMethod="Update">
                            <DeleteParameters>
                                <asp:Parameter Name="Original_Rut" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Rut" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Telefono" Type="Int32" />
                                <asp:Parameter Name="Direccion" Type="String" />
                                <asp:Parameter Name="Estado" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Nombre" Type="String" />
                                <asp:Parameter Name="Telefono" Type="Int32" />
                                <asp:Parameter Name="Direccion" Type="String" />
                                <asp:Parameter Name="Estado" Type="String" />
                                <asp:Parameter Name="Original_Rut" Type="String" />
                            </UpdateParameters>
                        </asp:ObjectDataSource>
                    </div>
                    <br />  <br />
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br />
                    <asp:TextBox ID="nombre" runat="server" AutoComplete="off"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="email" runat="server" AutoComplete="off"></asp:TextBox>
                      <br />
                    <asp:Label ID="Label1" runat="server" Text="Teléfono"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Dirección"></asp:Label><br />
                    <asp:TextBox ID="telefono" runat="server" AutoComplete="off"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="direccion" runat="server" AutoComplete="off"></asp:TextBox>
                     <br />
                    <asp:Label ID="Label6" runat="server" Text="Estado"></asp:Label><br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Seleccionar</asp:ListItem>
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br /><br />
                 

                    <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

