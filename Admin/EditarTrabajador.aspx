<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarTrabajador.aspx.vb" Inherits="Admin_Default" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <head runat="server"></head>
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
                <td class="auto-style3"><h1>Editar Trabajador</h1> 
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
                
                 
                    <br />
                    <div  style="height:200px;overflow:scroll; width:600px;"> 
                    &nbsp;<asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Rut" DataSourceID="ObjectDataSource3">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Rut" HeaderText="Rut" ReadOnly="True" SortExpression="Rut" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Fecha_nac" HeaderText="Fecha Nacimiento" SortExpression="Fecha_nac" DataFormatString="{0:d}" />
                            <asp:BoundField DataField="Direccion" HeaderText="Dirección" SortExpression="Direccion" />
                            <asp:BoundField DataField="Fk_cargo" HeaderText="Cargo" SortExpression="Fk_cargo" />
                            <asp:BoundField DataField="Telefono" HeaderText="Teléfono" SortExpression="Telefono" />
                            <asp:BoundField DataField="Correo" HeaderText="Correo" SortExpression="Correo" />
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                            <asp:BoundField DataField="Fk_especialidad" HeaderText="Especialidad" SortExpression="Fk_especialidad" />
                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" />
                        </Columns>

                    </asp:GridView>
                        </div> 
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="Rut"></asp:Label>
&nbsp;
                    <br />
                    <asp:Label ID="lRut" runat="server"></asp:Label>
                    <br />  <br />
                    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Fecha nacimiento"></asp:Label><br />
                    <asp:TextBox ID="nombre" runat="server" AutoComplete="off" MaxLength="50"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="fecha" runat="server" format="yyyy-mm-dd" Width="146px"></asp:TextBox>
                      <cc1:CalendarExtender ID="fecha_CalendarExtender" runat="server" BehaviorID="fecha_CalendarExtender" TargetControlID="fecha">
                    </cc1:CalendarExtender>
                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                      <br />
                    <asp:Label ID="Label1" runat="server" Text="Teléfono"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Dirección"></asp:Label><br />
                    <asp:TextBox ID="telefono" runat="server" Height="22px" MaxLength="10"  AutoComplete="off"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="direccion" runat="server" Width="148px" AutoComplete="off" MaxLength="100"></asp:TextBox>
                     <br />
                    &nbsp;<asp:Label ID="Label9" runat="server" Text="Correo"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Estado"></asp:Label>
                    <br />
                    <asp:TextBox ID="correo" runat="server" AutoComplete="off" MaxLength="80"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="estado" runat="server">
                        <asp:ListItem>Seleccionar</asp:ListItem>
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:DropDownList>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <br />
                   
                  
                       <asp:Label ID="Label8" runat="server" Text="Especialidad"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label7" runat="server" Text="Cargo"></asp:Label><br />
                    <asp:DropDownList ID="especialidad" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Nombre" DataValueField="Id_especialidad" Height="17px" Width="139px">
                    
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="cargo" runat="server" DataSourceID="ObjectDataSource2" DataTextField="descripcion" DataValueField="id">
                    </asp:DropDownList>
                    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CargoTableAdapter" UpdateMethod="Update">
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
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.EspecialidadTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Id_especialidad" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Original_Id_especialidad" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Contraseña"></asp:Label>
                    <br />
                    <asp:TextBox ID="Contraseña" runat="server" AutoComplete="off" MaxLength="20"></asp:TextBox>
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
                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.TrabajadorTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Rut" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Rut" Type="String" />
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Fecha_nac" Type="DateTime" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Fk_cargo" Type="Int32" />
                            <asp:Parameter Name="Telefono" Type="Int32" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Estado" Type="String" />
                            <asp:Parameter Name="Fk_especialidad" Type="Int32" />
                            <asp:Parameter Name="Clave" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Fecha_nac" Type="DateTime" />
                            <asp:Parameter Name="Direccion" Type="String" />
                            <asp:Parameter Name="Fk_cargo" Type="Int32" />
                            <asp:Parameter Name="Telefono" Type="Int32" />
                            <asp:Parameter Name="Correo" Type="String" />
                            <asp:Parameter Name="Estado" Type="String" />
                            <asp:Parameter Name="Fk_especialidad" Type="Int32" />
                            <asp:Parameter Name="Clave" Type="String" />
                            <asp:Parameter Name="Original_Rut" Type="String" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
                      <asp:Button ID="Button1" runat="server" Text="Actualizar" style="text-align: center" /></td>
               <br />
                <td></td>

            </tr>
        </table>
        <br />
      
  
    </form>
 

</asp:Content>

