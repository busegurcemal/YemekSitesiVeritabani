<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HakkimizdaAdmin.aspx.cs" Inherits="HakkimizdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style24 {
            width: 100%;
        }

        .auto-style29 {
            width: 31px;
            background-color: #257393;
        }

        .auto-style31 {
            font-weight: bold;
        }

        .auto-style30 {
            width: 33px;
            background-color: #257393;
        }

        .auto-style34 {
            background-color: #257393;
            color: #FFFFFF;
            text-align: center;
        }

        .auto-style35 {
            text-align: center;
        }

        .auto-style36 {
        font-size: medium;
        font-style: italic;
    }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24" __designer:mapid="1cf">
        <tr __designer:mapid="1d0">
            <td class="auto-style29" __designer:mapid="1d1"><strong __designer:mapid="1d2">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                </strong></td>
            <td class="auto-style30" __designer:mapid="1d4"><strong __designer:mapid="1d5">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style34" __designer:mapid="1d7"><strong><em>HAKKIMIZDA</em></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <em>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style36" Height="150px" TextMode="MultiLine" Width="388px"></asp:TextBox>
        </em>
    </asp:Panel>
    <table class="auto-style24">
        <tr>
            <td class="auto-style35">
    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Güncelle" CssClass="fb8" Height="40px" Width="120px" />
            </td>
        </tr>
    </table>
    
</asp:Content>

