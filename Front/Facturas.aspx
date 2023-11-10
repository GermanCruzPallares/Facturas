﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Facturas.aspx.cs" Inherits="Facturas" Async="true" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Facturas</title>
    <link rel="stylesheet" type="text/css" href="facturas.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:DropDownList ID="FiltroMoneda" runat="server" OnSelectedIndexChanged="AplicarFiltros">
                    
                </asp:DropDownList>

                <asp:DropDownList ID="FiltroEnvio" runat="server" OnSelectedIndexChanged="AplicarFiltros">
                    
                </asp:DropDownList>

               
            </div>

            <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="WhiteSmoke" OnRowDeleting="GridView1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" />
                    <asp:BoundField DataField="fecha" HeaderText="Fecha" SortExpression="fecha" />
                    <asp:BoundField DataField="cif" HeaderText="CIF" SortExpression="cif" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="importe" HeaderText="Importe" SortExpression="importe" />
                    <asp:BoundField DataField="importe_iva" HeaderText="Importe IVA" SortExpression="importe_iva" />
                    <asp:BoundField DataField="moneda" HeaderText="Moneda" SortExpression="moneda" />
                    <asp:BoundField DataField="fecha_cobro" HeaderText="Fecha Cobro" SortExpression="fecha_cobro" />
                    <asp:BoundField DataField="estado" HeaderText="Estado" SortExpression="estado" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>

            <div id="nuevaFacturaForm">
                <h2>Agregar Nueva Factura</h2>

                <table>
                    <tr>
                        <td>
                            <label for="txtFecha">Fecha:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFecha" runat="server" placeholder="Fecha" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txtCIF">CIF:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtCIF" runat="server" placeholder="CIF"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txtNombre">Nombre:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNombre" runat="server" placeholder="Nombre"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txtImporte">Importe:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtImporte" runat="server" placeholder="Importe" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txtImporteIVA">Importe IVA:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtImporteIVA" runat="server" placeholder="Importe IVA" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="ddlMoneda">Moneda:</label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMoneda" runat="server">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txtFechaCobro">Fecha de Cobro:</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFechaCobro" runat="server" placeholder="Fecha de Cobro" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="chkEstado">Estado:</label>
                        </td>
                        <td>
                            <asp:CheckBox ID="chkEstado" runat="server" />
                        </td>
                    </tr>
                </table>

                <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>

        
        </div>
    </form>
</body>
</html>