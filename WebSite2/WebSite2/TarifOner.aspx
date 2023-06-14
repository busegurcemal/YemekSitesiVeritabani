<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            width: 100%;
        }
        .auto-style21 {
            text-align: right;
            background-color: #CCFFCC;
        }
        .auto-style24 {
            font-size: small;
            text-align: right;
            width: 104px;
            height: 30px;
            color: #329765;
            background-color: #CCFFCC;
        }
        .auto-style25 {
            height: 30px;
            background-color: #CCFFCC;
        }
    .auto-style26 {
        text-align: center;
        font-size: 20pt;
        color: #FFFFFF;
        background-color: #329765;
    }
    .auto-style29 {
        border: 2px solid #777;
        border-radius: 10px;
        outline: none;
        height: 35px;
        font-weight: bold;
    }
        .auto-style30 {
            background-color: #CCFFCC;
        }
        .auto-style31 {
            font-size: small;
            font-style: italic;
            text-align: right;
            width: 104px;
            background-color: #CCFFCC;
        }
        .auto-style32 {
            text-align: center;
            background-color: #CCFFCC;
        }
        .auto-style33 {
            font-size: small;
            text-align: right;
            width: 104px;
            color: #329765;
            background-color: #CCFFCC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style26" colspan="2"><strong><em>TARİF ÖNER</em></strong></td>
        </tr>
        <tr>
            <td class="auto-style21" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Tarif Adı: </strong></td>
            <td class="auto-style30"><strong>
                <asp:TextBox ID="TxtTarifAd" runat="server" CssClass="tb5" OnTextChanged="TextBox1_TextChanged" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Malzemeler: </strong></td>
            <td class="auto-style30"><strong>
                <asp:TextBox ID="TxtMalzemeler" runat="server" CssClass="tb5" Height="80px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style24"><strong>Tarifi: </strong></td>
            <td class="auto-style25"><strong>
                <asp:TextBox ID="TxtYapilis" runat="server" CssClass="tb5" Height="150px" OnTextChanged="TxtTarifi_TextChanged" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Resim:</strong></td>
            <td class="auto-style30"><strong>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="tb5" Width="250px" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Adınız: </strong></td>
            <td class="auto-style30"><strong>
                <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style33"><strong>Mail Adresiniz: </strong></td>
            <td class="auto-style30"><strong>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5" TextMode="Email" Width="250px"></asp:TextBox>
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style31">&nbsp;</td>
            <td class="auto-style32">
                <strong>
                <asp:Button ID="BtnGonder" runat="server" Text="Gönder" OnClick="BtnGonder_Click1" CssClass="auto-style29" Width="125px" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

