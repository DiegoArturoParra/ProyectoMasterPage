<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPageComponentespc.master" AutoEventWireup="true" CodeFile="~/Controllers/ComponentespcController/CreateForm.aspx.cs" Inherits="Views_ComponentesPC_CreateForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-bottom: 23px;
        }
        .auto-style2 {
            height: 41px;
            text-align: center;
        }
        .auto-style3 {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderComponentes" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><strong>Nombre Producto:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>
                <asp:TextBox ID="inputNombreProducto" runat="server"></asp:TextBox>
&nbsp; <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="inputDescripción" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Valor:&nbsp;&nbsp;
                <asp:TextBox ID="inputValor" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; </strong></td>
        </tr>
        <tr>
            <td class="text-center"><strong>
                <asp:Button ID="btnInsertar" runat="server" BackColor="#99CCFF" CssClass="auto-style3" OnClick="btnInsertar_Click" Text="Insertar" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

