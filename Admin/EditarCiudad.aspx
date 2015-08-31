<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarCiudad.aspx.vb" Inherits="Admin_Default" %>


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
                <td class="auto-style3"><h1>Editar Ciudad</h1> 
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
                    <br /><br />
                       <div  style="height:200px;overflow:scroll; width:200px;"> 
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID_ciudad" DataSourceID="ObjectDataSource1">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="ID_ciudad" HeaderText="ID_ciudad" InsertVisible="False" ReadOnly="True" SortExpression="ID_ciudad" />
                                <asp:BoundField DataField="Nombre_ciudad" HeaderText="Nombre_ciudad" SortExpression="Nombre_ciudad" />
                                <asp:BoundField DataField="fk_region" HeaderText="fk_region" SortExpression="fk_region" />
                            </Columns>
                        </asp:GridView>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CiudadTableAdapter" UpdateMethod="Update">
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
                        </div>

                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Actualizar"></asp:Label><br />
                    <asp:TextBox ID="actualizar" runat="server" AutoComplete="off"></asp:TextBox>
                      <br />
                    <asp:Label ID="Label1" runat="server" Text="Región"></asp:Label><br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Region" DataValueField="ID_region"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrenvencionConnectionString %>" SelectCommand="SELECT DISTINCT ID_region, Nombre AS Region FROM Region UNION SELECT '0 ' AS Id_region, ' Seleccione region ' AS region FROM Region AS Region_1"></asp:SqlDataSource>
                    <br /><br />
                 
                    <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

