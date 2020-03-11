<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPageLibros.master" AutoEventWireup="true" CodeFile="~/Controllers/libroController/IndexForm.aspx.cs" Inherits="Views_Libros_IndexForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 553px;
        }
        .auto-style2 {
            text-align: center;
            width: 553px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLibros" Runat="Server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="GridViewLibro" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="ODS_Libro" ForeColor="#333333" GridLines="None" PageSize="4" Width="541px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                        <asp:BoundField DataField="NumeroDePaginas" HeaderText="# de Paginas" SortExpression="NumeroDePaginas" />
                        <asp:BoundField DataField="NombreLibro" HeaderText="Libro" SortExpression="NombreLibro" />
                        <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                        <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS_Libro" runat="server" DataObjectTypeName="ELibro" DeleteMethod="eliminarLibro" SelectMethod="obtenerLibro" TypeName="DaoLibro" UpdateMethod="actualizarLibro"></asp:ObjectDataSource>
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

