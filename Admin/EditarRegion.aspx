<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarRegion.aspx.vb" Inherits="Admin_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 451px;
        }
        .auto-style2 {
            width: 451px;
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
                <td class="auto-style3"><h1>Editar Región</h1> 
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
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                     <div  style="height:200px;overflow:scroll; width:250px;"> 
                    <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="Nombre" DataSourceID="ObjectDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" ReadOnly="True" SortExpression="Nombre" >
                            <ItemStyle Width="200px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ID_region" HeaderText="ID_region" InsertVisible="False" ReadOnly="True" SortExpression="ID_region" />
                        </Columns>
                    </asp:GridView>
                        </div>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.RegionTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_ID_region" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Nombre" Type="String" />
                            <asp:Parameter Name="Original_ID_region" Type="Int32" />
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
                
                 
                    <asp:Label ID="Label3" runat="server" Text="Actualizar"></asp:Label><br />
                    <asp:TextBox ID="actualizar" runat="server" AutoComplete="off"></asp:TextBox><br />
                     <br />
                    <br />
                    
                    <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

