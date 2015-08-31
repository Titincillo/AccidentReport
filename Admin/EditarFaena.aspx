<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarFaena.aspx.vb" Inherits="Admin_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

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
        .auto-style4 {
            width: 216px;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <td class="auto-style3"><h1>Edición de Faena</h1> 
</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                
                 
                    <asp:Label ID="Label2" runat="server" Text="Filtrar:"></asp:Label>
                    <input type="text" id="filtro" align="center" /></td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br /> 
                    <br /> <br />
                </td>
                <td>
                
                 
                    <br /><div style=" height:200px; overflow-y: scroll; width: 500px;">
                    &nbsp;<asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ObjectDataSource3">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Id" HeaderText="Código" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripción" SortExpression="Descripcion" >
                            <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha_inicio" HeaderText="Inicio" SortExpression="Fecha_inicio" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Fecha_fin" HeaderText="Fin" SortExpression="Fecha_fin" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="FK_cliente" HeaderText="Cliente" SortExpression="FK_cliente" />
                            <asp:BoundField DataField="FK_ciudad" HeaderText="Ciudad" SortExpression="FK_ciudad" />
                            <asp:BoundField DataField="FK_servicio" HeaderText="Servicio" SortExpression="FK_servicio" />
                        </Columns>

                    </asp:GridView></div>
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.FaenaTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Descripcion" Type="String" />
                            <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
                            <asp:Parameter Name="Fecha_fin" Type="DateTime" />
                            <asp:Parameter Name="FK_cliente" Type="String" />
                            <asp:Parameter Name="FK_ciudad" Type="Int32" />
                            <asp:Parameter Name="FK_servicio" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Descripcion" Type="String" />
                            <asp:Parameter Name="Fecha_inicio" Type="DateTime" />
                            <asp:Parameter Name="Fecha_fin" Type="DateTime" />
                            <asp:Parameter Name="FK_cliente" Type="String" />
                            <asp:Parameter Name="FK_ciudad" Type="Int32" />
                            <asp:Parameter Name="FK_servicio" Type="Int32" />
                            <asp:Parameter Name="Original_Id" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <br />  <br />
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Cliente"></asp:Label><br />
                    <asp:TextBox ID="nombre" runat="server" MaxLength="50"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="Clientes" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Nombre" DataValueField="Rut" Height="16px" Width="144px">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.Empresa_clienteTableAdapter" UpdateMethod="Update">
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
                      <br />
                    <asp:Label ID="Label1" runat="server" Text="Inicio"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Fin"></asp:Label><br />
                    <asp:TextBox ID="Inicio" runat="server" Height="22px" MaxLength="8"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="Fin" runat="server" Width="148px"></asp:TextBox>
                     <br />
                    &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Ciudad"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                   
                  
                       <asp:Label ID="Label8" runat="server" Text="Servicio"></asp:Label>
                    <br />
                     &nbsp;<asp:DropDownList ID="Ciudad" runat="server" DataSourceID="ObjectDataSource4" DataTextField="Nombre_ciudad" DataValueField="ID_ciudad">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="Servicio" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Nombre" DataValueField="id_servicio" Height="17px" Width="139px">
                    
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.ServicioTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_id_servicio" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Original_id_servicio" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CiudadTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_ID_ciudad" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre_ciudad" Type="String" />
                            <asp:Parameter Name="fk_region" Type="Int32" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre_ciudad" Type="String" />
                            <asp:Parameter Name="fk_region" Type="Int32" />
                            <asp:Parameter Name="Original_ID_ciudad" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Descripción"></asp:Label>
                    <br />
                    <asp:TextBox ID="Descripcion" style="resize:none;" MaxLength="100" runat="server" Height="90px" Width="411px" TextMode="MultiLine"></asp:TextBox>
                    <br /><br /><br />
                    
                  
                </td>
                <td> </td>
            </tr>
           
        </table>

        <table>
            <tr>
            <td class="auto-style4">   </td>
                <td>
                <br />  
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                      <asp:Button ID="Button1" runat="server" Text="Actualizar" style="text-align: center" /></td>
               <br />
                <td></td>

            </tr>
        </table>
        <br />
      
  
    </form>
 



</asp:Content>

