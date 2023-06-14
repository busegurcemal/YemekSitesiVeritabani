<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style24 {
            width: 100%;
        }

        .auto-style25 {
            text-align: right;
        }

        .auto-style26 {
            font-size: medium;
        }

        .auto-style27 {
            text-align: center;
            color: #267697;
        }

        .auto-style28 {
            width: 154px;
        }

        .auto-style29 {
            width: 31px;
            background-color: #257393;
        }

        .auto-style30 {
            width: 33px;
            background-color: #257393;
        }

        .auto-style31 {
            font-weight: bold;
        }

        .auto-style32 {
            background-color: #257393;
            text-align: center;
            color: #FFFFFF;
        }

        .auto-style33 {
            background-color: #257393;
        }

        .auto-style34 {
            background-color: #257393;
            color: #FFFFFF;
        }

        .auto-style35 {
            font-weight: 700;
        }

        .auto-style36 {
            width: 165px;
        }

        .auto-style37 {
            font-size: medium;
            width: 165px;
        }

        .auto-style38 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style27">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
                    </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
                    </strong></td>
                    <td class="auto-style34"><strong><em>KATEGORİ LİSTESİ</em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28">
                            <em>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style25"
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İkonlar/deletee.png" Width="35px" />
                            </a>
                        </td>
                        <td class="auto-style25">
                            <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/refreshh.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style33" Style="margin-top: 15px;">
        <table class="auto-style24">
            <tr>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                </strong></td>
                <td class="auto-style30"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style31" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
                </strong></td>
                <td class="auto-style32"><strong><em>KATEGORİ EKLEME</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style36">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style37"><em>KATEGORİ ADI:</em></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style37"><em>KATEGORİ İKON:</em></td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="auto-style38" Width="207px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style37">&nbsp;</td>
                <td>
                    <asp:Button ID="BtnEkle" runat="server" CssClass="fb8 auto-style35" Text="Ekle" OnClick="BtnEkle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

