<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/administrador.master" AutoEventWireup="false" CodeFile="EditarCargo.aspx.vb" Inherits="Admin_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<script runat="server">

  
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            width: 442px;
        }
        .auto-style2 {
            width: 442px;
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
                <td class="auto-style2"></td>
                <td class="auto-style3"><h1>Editar Cargo</h1> 
</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                
                 
                    <asp:Label ID="Label2" runat="server" Text="Filtrar:"></asp:Label>
                  <input type="text" id="filtro" align="center"  /></td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3"> 
                      <div  style="height:200px;overflow:scroll; width:230px;"> 
 <asp:GridView ID="GridView1" class="filtrar" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="ObjectDataSource1">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="descripcion" HeaderText="Descripción" SortExpression="descripcion" >
                            <ItemStyle Width="150px" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    </div></td>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br /> 
                    <br /> <br />
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Actualizar"></asp:Label><br />
                    <asp:TextBox ID="actualizar" runat="server" autocomplete="off"></asp:TextBox>
                    <br /><br />
                 
                   
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DataSetTableAdapters.CargoTableAdapter" UpdateMethod="Update">
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
                    
                    <asp:Button ID="Button1" runat="server" Text="Actualizar" /><br /><br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
      
  
    </form>
 



</asp:Content>

