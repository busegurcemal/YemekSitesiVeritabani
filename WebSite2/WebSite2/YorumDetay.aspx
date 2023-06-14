<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="YorumDetay.aspx.cs" Inherits="YorumDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }
        .auto-style25 {
            font-size: medium;
            text-align: right;
        }
        .auto-style26 {
            text-align: right;
        }
        .auto-style27 {
            text-align: right;
            height: 29px;
        }
        .auto-style28 {
            height: 29px;
        }
        .auto-style29 {
            text-align: center;
        }
        .auto-style30 {
            border: 2px solid #777;
            border-radius: 10px;
            outline: none;
            height: 35px;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25"><em>Adı Soyadı:</em></td>
            <td>
                <asp:TextBox ID="TxtAd" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style27"><em>Mail Adresi:</em></td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtMail" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><em>Yorumun İçeriği:</em></td>
            <td>
                <asp:TextBox ID="Txtİcerik" runat="server" Height="80px" TextMode="MultiLine" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><em>Yemek:</em></td>
            <td>
                <asp:TextBox ID="TxtYemek" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style29"><strong><asp:Button ID="BtnOnayla" runat="server" CssClass="auto-style30" Text="Onayla" Width="150px" OnClick="BtnOnayla_Click" />
                </strong>
            </td>
        </tr>
    </table>
</asp:Content>

