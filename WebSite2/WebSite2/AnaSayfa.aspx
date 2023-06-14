<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style19 {
            width: 100%;
        }

        .auto-style20 {
            font-size: large;
        }

        .auto-style21 {
            font-size: medium;
        }

        .auto-style22 {
            text-align: center;
            width: 366px;
            background-color: #329765;

        }

        .auto-style23 {
            width: 366px;
        }

        .auto-style24 {
            width: 366px;
            height: 26px;
        }

        .auto-style25 {
            width: 366px;
            height: 27px;
        }

        .auto-style26 {
            width: 366px;
            font-size: xx-small;
        }

        a:hover {
            font-size: 18px;
            color: darkolivegreen;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged1">
            <ItemTemplate>
                <table class="auto-style19">
                    <tr>
                        <td class="auto-style22"><strong><em>


                            <a href="YemekDetay.aspx?Yemekid=<%# Eval("Yemekid") %>">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style20" Text='<%# Eval("YemekAd") %>'></asp:Label></a>


                        </em></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style23"><span class="auto-style21"><strong><em>Malzemeler:</em></strong></span>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style26">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style25"><span class="auto-style21"><strong><em>Yapılışı:</em></strong></span>
                            <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style24"><span class="auto-style14"><strong><em>Eklenme Tarihi:</em></strong></span>
                            <asp:Label ID="Label6" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                            &nbsp; -&nbsp; <strong><em><span class="auto-style14">Puan:</span></em></strong>
                            <asp:Label ID="Label7" runat="server" CssClass="auto-style14" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style23" style="border: medium dotted #339966;">&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

