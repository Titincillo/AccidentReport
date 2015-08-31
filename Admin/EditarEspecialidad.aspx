<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarEspecialidad.aspx.vb" Inherits="Admin_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
  
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
                <td class="auto-style3"><h1>Editar Especialidad</h1> 
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
                    <br />
                    <br />
                    
                    <div  style="height:200px;overflow:scroll; width:400px;"> 
                        <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_especialidad" DataSourceID="ObjectDataSource1">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="Id_especialidad" HeaderText="Id_especialidad" InsertVisible="False" ReadOnly="True" SortExpression="Id_especialidad" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" >
                                <ItemStyle Width="300px" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
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
                    </div>
                    <asp:Label ID="Label3" runat="server" Text="Actualizar"></asp:Label>
                    <br />
                    <asp:TextBox ID="actualizar" MaxLength="50" runat="server" AutoComplete="off"></asp:TextBox>
                    <br />
                   
                    <div class="col-submit">
      <p class="login button">   
       <asp:Button ID="Button1" runat="server" Text="Actualizar"   />

      </p>
 
  </div>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

