<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPagePqr.master" AutoEventWireup="true" CodeFile="~/Controllers/pqrController/IndexForm.aspx.cs" Inherits="Views_Pqr_IndexForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        width: 184px;
    }
        .auto-style2 {
            width: 154px;
        }
    .auto-style3 {
        width: 113px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderItems" Runat="Server">
    <asp:ObjectDataSource ID="ObjectDataSource_PQR" runat="server" DataObjectTypeName="EPqr" DeleteMethod="eliminarPqr" SelectMethod="obtenerPqr" TypeName="DaoPqr" UpdateMethod="actualizarPqr"></asp:ObjectDataSource>
    
    <div class="text-right">
        <table class="w-100">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">
        <asp:GridView ID="GridView_pqr" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource_PQR" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView_pqr_SelectedIndexChanged" AllowPaging="True" Width="9%" DataKeyNames="Id">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Identificacion" HeaderText="Identificacion" SortExpression="Identificacion" />
                <asp:BoundField DataField="TipoIdentificacion" HeaderText="TipoIdentificacion" SortExpression="TipoIdentificacion" />
                <asp:BoundField DataField="TipoSolicitud" HeaderText="TipoSolicitud" SortExpression="TipoSolicitud" />
                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                <asp:CommandField HeaderText="Editar" ShowEditButton="True" />
                <asp:CommandField HeaderText="Eliminar" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
        </table>
    </div>
    </asp:Content>

