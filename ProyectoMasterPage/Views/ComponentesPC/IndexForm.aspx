<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPageComponentespc.master" AutoEventWireup="true" CodeFile="~/Controllers/ComponentespcController/IndexForm.aspx.cs" Inherits="Views_ComponentesPC_IndexForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 662px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderComponentes" Runat="Server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">
                <div class="text-left">
                    <asp:GridView ID="GridViewComponentes" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="ODS_Componentespc" PageSize="4" Width="622px">
                        <Columns>
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                            <asp:BoundField DataField="NombreProducto" HeaderText="Nombre Producto" SortExpression="NombreProducto" />
                            <asp:BoundField DataField="ValorProducto" HeaderText="Valor Producto" SortExpression="ValorProducto" />
                            <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                            <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#330099" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                        <SortedAscendingCellStyle BackColor="#FEFCEB" />
                        <SortedAscendingHeaderStyle BackColor="#AF0101" />
                        <SortedDescendingCellStyle BackColor="#F6F0C0" />
                        <SortedDescendingHeaderStyle BackColor="#7E0000" />
                    </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="ODS_Componentespc" runat="server" DataObjectTypeName="EComponentesPC" DeleteMethod="eliminarComponentesPc" SelectMethod="obtenerComponentesPc" TypeName="DaoComponentesPC" UpdateMethod="actualizarComponentesPc"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

