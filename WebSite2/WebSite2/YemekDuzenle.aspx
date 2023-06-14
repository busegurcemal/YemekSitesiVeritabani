<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YemekDuzenle.aspx.cs" Inherits="YemekDuzenle" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }

        .auto-style25 {
            font-size: small;
            text-align: right;
            width: 164px;
        }

        .auto-style26 {
            text-align: right;
            width: 164px;
        }

        .auto-style27 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style24">
        <tr>
            <td class="auto-style26"><em></em></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><em><strong>YEMEK ADI:</strong></em></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Height="17px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><em><strong>YEMEK MALZEMELERİ:</strong></em></td>
            <td>
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><em><strong>YEMEK TARİFİ:</strong></em></td>
            <td>
                <asp:TextBox ID="TxtTarif" runat="server" Height="180px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><em><strong>KATEGORİSİ:</strong></em></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="205px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"><em><strong>YEMEK GÖRÜNTÜ:</strong></em></td>
            <td class="auto-style27">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="205px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style27">
                <asp:Button ID="Button2" runat="server" CssClass="fb8" OnClick="Button2_Click" Text="Güncelle" Width="135px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style27">
                <asp:Button ID="Button3" runat="server" CssClass="fb8" OnClick="Button3_Click" Text="Günün Yemeği Seç" />
            </td>
        </tr>
    </table>
</asp:Content>

