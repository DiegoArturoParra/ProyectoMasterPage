<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPageLibros.master" AutoEventWireup="true" CodeFile="~/Controllers/libroController/CreateForm.aspx.cs" Inherits="Views_Libros_CreateForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLibros" Runat="Server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="text-center">&nbsp;</td>
            <td class="text-center"><strong>Nombre Libro: </strong>&nbsp;&nbsp;
                <asp:TextBox ID="inputNombreLibro" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Autor:</strong>&nbsp;
                <asp:TextBox ID="inputAutor" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;# De Páginas:</strong>
                <asp:TextBox ID="inputPaginas" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-center"><strong>
                <asp:Button ID="BtnInsertar" runat="server" BackColor="#66FF99" CssClass="auto-style1" OnClick="BtnInsertar_Click" Text="Insertar" />
                </strong></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

