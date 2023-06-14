<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style27 {
            text-align: center;
            color: #267697;
        }

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
        }

        .auto-style28 {
            width: 154px;
        }

        .auto-style26 {
            font-size: medium;
        }

        .auto-style25 {
            text-align: right;
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
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </em></td>
                        <td class="auto-style25"><a href='YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid") %>'>
                            <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/chose.png" Width="40px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

