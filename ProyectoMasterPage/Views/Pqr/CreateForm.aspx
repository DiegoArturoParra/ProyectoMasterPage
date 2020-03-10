<%@ Page Title="" Language="C#" MasterPageFile="~/Views/MasterPage/MasterPagePqr.master" AutoEventWireup="true" CodeFile="~/Controllers/CreateForm.aspx.cs" Inherits="Views_Pqr_CreateForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 397px;
        }
        .auto-style2 {
            text-align: center;
            width: 388px;
        }
        .auto-style3 {
            text-align: center;
            width: 267px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderItems" runat="Server">
    <table>
        <tr>
            <td class="text-center">
                <div class="text-center">
                    <strong>
                        <br />
                        Tipo Identificación:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="listIdentificacion" runat="server" DataSourceID="ODS_IDENTIFICACION" DataValueField="Id" DataTextField="TipoIdentificacion">
                        </asp:DropDownList>
                    <asp:ObjectDataSource ID="ODS_IDENTIFICACION" runat="server" SelectMethod="obtenerIdentificacion" TypeName="DaoPqr"></asp:ObjectDataSource>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre:
                        <asp:TextBox ID="inputNombre" runat="server" CssClass="auto-style4"></asp:TextBox>
                &nbsp;&nbsp;&nbsp; # Identificación
                        &nbsp;<asp:TextBox ID="inputIdentificacion" runat="server" CssClass="auto-style4"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp; E-mail:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="inputEmail" runat="server" CssClass="auto-style4"></asp:TextBox>
                &nbsp;
                        <br />
                &nbsp;
                        <br />
                &nbsp; Télefono:
                        <asp:TextBox ID="inputTelefono" runat="server" CssClass="auto-style4"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dirección:&nbsp;&nbsp;
                        <asp:TextBox ID="inputDireccion" runat="server" CssClass="auto-style4"></asp:TextBox>
                &nbsp;
                        <br />
                <br />
                PQR<br />
                <br />
                Tipo Solicitud:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="listSolicitud" runat="server" DataSourceID="ODS_Solicitud" DataValueField="Id" DataTextField="TipoSolicitud">
                        </asp:DropDownList>
                <asp:ObjectDataSource ID="ODS_Solicitud" runat="server" SelectMethod="obtenerSolicitud" TypeName="DaoPqr"></asp:ObjectDataSource>
                &nbsp;&nbsp;&nbsp;
                        <br />
                <br />
                </strong>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style3"><strong>Descripción </strong></td>
                        <td class="auto-style2"><strong>
                            <textarea id="TextAreaDescripcion" class="auto-style7" name="S2" rows="1"></textarea></strong></td>
                        <td class="auto-style1">
                            <asp:Button ID="BtnGuardar" runat="server" BackColor="#CCFFCC" Height="41px" OnClick="BtnGuardar_Click" Style="font-weight: 700" Text="Guardar" Width="123px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>



