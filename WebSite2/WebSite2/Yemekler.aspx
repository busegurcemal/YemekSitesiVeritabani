<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yemekler.aspx.cs" Inherits="Yemekler" %>


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

        .auto-style40 {
            width: 213px;
        }
        .auto-style41 {
            font-size: medium;
            width: 213px;
        }
        .auto-style42 {
            font-size: 11pt;
            width: 213px;
        }
        .auto-style43 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style27">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                    </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
                    </strong></td>
                    <td class="auto-style34"><strong><em>YEMEK LİSTESİ</em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <ItemTemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28">
                            <em>
                                <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("YemekAd") %>'></asp:Label>
                            </em>
                        </td>
                        <td class="auto-style25">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid") %>&islem=sil">
                                <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/İkonlar/deletee.png" Width="35px" />
                            </a>
                        </td>
                        <td class="auto-style25">
                            <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/refreshh.png" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
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
                <td class="auto-style32"><strong><em>YEMEK EKLEME</em></strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style24">
            <tr>
                <td class="auto-style40">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style42"><em><strong>YEMEK ADI:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"><em><strong>YEMEK<br /> MALZEMELERİ:</strong></em></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="84px" OnTextChanged="TextBox2_TextChanged" TextMode="MultiLine" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"><strong>YEMEK TARİFİ:</strong></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" OnTextChanged="TextBox3_TextChanged" TextMode="MultiLine" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style42"><em><strong>KATEGORİSİ</strong></em><strong>:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style43">
                    <asp:Button ID="BtnEkle" runat="server" CssClass="fb8 auto-style35" OnClick="BtnEkle_Click" Text="Ekle" Width="120px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

