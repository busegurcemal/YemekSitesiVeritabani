<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style13 {
        font-size: x-large;
    }
    .auto-style14 {
        font-size: small;
    }
    .auto-style17 {
        font-size: small;
    }
    .auto-style18 {
        font-size: large;
    }
    .auto-style19 {
        margin-left: 40px;
    }
    .auto-style20 {
        font-size: small;
        margin-left: 40px;
    }
    .auto-style21 {
        text-align: center;
            background-color: #329765;
        }
    .auto-style22 {
        margin-right: 27px;
    }
    .auto-style23 {
        font-size: medium;
    }
        .auto-style24 {
            text-align: right;
            margin-left: 160px;
        }
        .auto-style25 {
            font-size: medium;
            text-align: center;
        }
        .auto-style26 {
            font-size: 20pt;
            height: 25px;
            color: #FFFFFF;
            background-color: #329765;
        }
        .auto-style27 {
            font-size: small;
            text-align: center;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    <asp:DataList ID="DataList2" runat="server" CssClass="auto-style22" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style21"><strong>
                        <em>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style26" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </em>
                        </strong></td>
                </tr>
                <tr>
                    <td><em><span class="auto-style25"><strong>Malzemeler:</strong></span><span class="auto-style23"> </span></em>
                        <asp:Label ID="Label10" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td><span class="auto-style25"><em><strong>Yapılışı:</strong></em></span>
                        <asp:Label ID="Label11" runat="server" CssClass="auto-style17" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image2" runat="server" Height="131px" ImageUrl='~/resimler/yağlama.jpg' Width="354px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style20">
                        <table class="auto-style1">
                            <tr>
                                <td><strong><em>P<span class="auto-style23">uan:</span></em></strong>&nbsp;<asp:Label ID="Label14" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                </td>
                                <td class="auto-style24"><strong><em><span class="auto-style23">Tarih:</span> </em></strong>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</div>
</asp:Content>

