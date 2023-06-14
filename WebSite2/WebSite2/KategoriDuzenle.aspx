<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="KategoriDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }

        .auto-style25 {
            font-size: small;
            width: 152px;
        }

        .auto-style26 {
            font-size: small;
            height: 43px;
            width: 152px;
            text-align: right;
        }

        .auto-style27 {
            height: 43px;
        }

        .auto-style28 {
            width: 152px;
        }

        .auto-style29 {
            font-size: small;
            width: 152px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style28">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style29"><em>KATEGORİ AD:</em></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="17px" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><em>KATEGORİ ADET:</em></td>
            <td class="auto-style27">
                <asp:TextBox ID="TextBox2" runat="server" Width="170px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29"><em>KATEGORİ İKON:</em></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="190px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="fb8" Text="Güncelle" Width="170px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

