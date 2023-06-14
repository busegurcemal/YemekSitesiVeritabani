<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="YemekDetay.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style19 {
            font-size: 30pt;
            color: #339966;
            background-color: #BBE4BB;
        }

        .auto-style20 {
            width: 100%;
        }

        .auto-style21 {
            font-size: xx-small;
        }

        .auto-style22 {
            font-size: large;
        }

        .auto-style23 {
            font-size: small;
            text-align: center;
            background-color: #329765;
        color: #FFFFFF;
    }
    .auto-style24 {
        font-size: small;
        text-align: right;
    }
    .auto-style25 {
        width: 100%;
        height: 101px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Text="Label"></asp:Label>
        &nbsp;<asp:DataList ID="DataList2" runat="server" Width="387px">
            <itemtemplate>
                <table class="auto-style25">
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" CssClass="auto-style22" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <em>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                            </em><strong>&nbsp; -&nbsp;
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style21" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td style="border: medium dotted #339966">&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>

    </strong>

    <div class="auto-style23">YORUM YAPMA PANELİ</div>
    <asp:Panel runat="server">
        <table class="auto-style20">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Adınız Soyadınız: </strong></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" OnTextChanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Mail Adresiniz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Yorumunuz:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Yorum Yap" />
                </td>
            </tr>
            <tr>
                <td class="auto-style14">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>

