<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPageJuegos.master" AutoEventWireup="true" CodeFile="~/Controllers/juegoController/IndexForm.aspx.cs" Inherits="Views_Juegos_IndexForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 81px;
        }
        .auto-style2 {
            width: 695px;
        }
        .auto-style3 {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderJuegos" Runat="Server">
    <table class="w-100">
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">
                <div class="text-center">
                    <asp:GridView ID="GridViewJuego" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" CssClass="auto-style1" DataKeyNames="Id" DataSourceID="ODS_Juego" GridLines="Horizontal" PageSize="4">
                        <Columns>
                            <asp:BoundField DataField="NombreJuego" HeaderText="Juego" SortExpression="NombreJuego" />
                            <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                            <asp:BoundField DataField="FechaLanzamiento" HeaderText="Fecha Lanzamiento" SortExpression="FechaLanzamiento" DataFormatString="{0:d}" />
                            <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                            <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                </div>
                <asp:ObjectDataSource ID="ODS_Juego" runat="server" DataObjectTypeName="EJuego" DeleteMethod="eliminarJuego" SelectMethod="obtenerJuego" TypeName="DaoJuego" UpdateMethod="actualizarJuego"></asp:ObjectDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

