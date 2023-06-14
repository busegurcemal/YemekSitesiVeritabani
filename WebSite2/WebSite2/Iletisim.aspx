<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style19 {
        width: 100%;
    }
    .auto-style20 {
        margin-left: 40px;
    }
    .auto-style22 {
        font-size: small;
        text-align: right;
        color: #329765;
    }
    .auto-style23 {
        text-align: center;
        font-size: 20pt;
        color: #FFFFFF;
        background-color: #329765;
    }
        .auto-style25 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 35px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style19">
    <tr>
        <td class="auto-style23" colspan="2"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22"><strong>Adınız Soyadınız:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22"><strong>Mail Adresiniz:</strong></td>
        <td class="auto-style20">
            <asp:TextBox ID="TxtMail" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22"><strong>Konu:</strong></td>
        <td class="auto-style20">
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style22"><strong>Mesaj:</strong></td>
        <td class="auto-style20">
            <asp:TextBox ID="Txtİcerik" runat="server" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14">&nbsp;</td>
        <td class="auto-style20"><strong>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style25" Text="Bize Ulaşın" Width="230px" OnClick="Button1_Click" />
            </strong></td>
    </tr>
</table>
</asp:Content>

