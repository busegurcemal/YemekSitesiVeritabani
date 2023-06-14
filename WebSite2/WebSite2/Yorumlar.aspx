<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Yorumlar.aspx.cs" Inherits="Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server">
        <div class="auto-style27">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button2_Click1" />
                        </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click" />
                        </strong></td>
                    <td class="auto-style34"><strong><em>ONAYLANAN YORUM LİSTESİ</em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </em></td>
                        <td class="auto-style25">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/İkonlar/deletee.png" Width="35px" />
                        </td>
                        <td class="auto-style25">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/refreshh.png" Width="30px" />
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" Style="margin-top: 15px;">
        <div class="auto-style27">
            <table class="auto-style24">
                <tr>
                    <td class="auto-style29"><strong>
                        <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
                        </strong></td>
                    <td class="auto-style30"><strong>
                        <asp:Button ID="Button4" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                        </strong></td>
                    <td class="auto-style34"><strong><em>ONAYSIZ YORUM LİSTESİ</em></strong></td>
                </tr>
            </table>
        </div>
    </asp:Panel>
     <asp:Panel ID="Panel4" runat="server">
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                            </em></td>
                        <td class="auto-style25">
                            <asp:Image ID="Image4" runat="server" Height="30px" ImageUrl="~/İkonlar/deletee.png" Width="35px" />
                        </td>
                        <td class="auto-style25">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid") %>"><asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/İkonlar/refreshh.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

