<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarEquipo.aspx.vb" Inherits="Admin_Default" %>


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
                <td class="auto-style3"><h1>Editar Equipo</h1> 
</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label2" runat="server" Text="Filtrar:"></asp:Label>
                    <input type="text" id="filtro" align="center" />
</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <div  style="height:200px;overflow:scroll; width:250px;"> 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_equipo" DataSourceID="ObjectDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Id_equipo" HeaderText="Id_equipo" InsertVisible="False" ReadOnly="True" SortExpression="Id_equipo" />
                            <asp:BoundField DataField="Patente" HeaderText="Patente" SortExpression="Patente" >
                            <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" >
                            <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        </Columns>
                    </asp:GridView> </div>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.EquipoTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_Id_equipo" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Patente" Type="String" />
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Estado" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Patente" Type="String" />
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Estado" Type="String" />
                            <asp:Parameter Name="Original_Id_equipo" Type="Int32" />
                        </UpdateParameters>
                    </asp:ObjectDataSource>
</td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br /> 
                    <br /> <br />
                </td>
                <td>
                
                 
                    <br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    <br />
                    <asp:TextBox ID="nombre" runat="server" AutoComplete="off"></asp:TextBox>    <br />
                       <asp:Label ID="Label4" runat="server" Text="Patente"></asp:Label>
                    <br />
                    <asp:TextBox ID="patente" runat="server" AutoComplete="off"></asp:TextBox>    <br />
                       <asp:Label ID="Label5" runat="server" Text="Estado"></asp:Label>
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Activo</asp:ListItem>
                        <asp:ListItem>Inactivo</asp:ListItem>
                    </asp:DropDownList>
                
                 <br />
                    <br />
                    <br />
                    
                    <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

