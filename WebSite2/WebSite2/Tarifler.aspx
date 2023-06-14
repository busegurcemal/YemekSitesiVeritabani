<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Tarifler.aspx.cs" Inherits="Tarifler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style24" __designer:mapid="1">
        <tr __designer:mapid="2">
            <td class="auto-style29" __designer:mapid="3"><strong __designer:mapid="4">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
            </strong></td>
            <td class="auto-style30" __designer:mapid="6"><strong __designer:mapid="7">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px" Text="-" Width="30px" OnClick="Button1_Click" />
            </strong></td>
            <td class="auto-style34" __designer:mapid="9"><strong __designer:mapid="a"><em __designer:mapid="b">ONAYSIZ TARİF LİSTESİ</em></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </em></td>
                        <td class="auto-style35">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/oneri.png" Width="40px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
    <table class="auto-style24" __designer:mapid="1">
        <tr __designer:mapid="2">
            <td class="auto-style29" __designer:mapid="3"><strong __designer:mapid="4">
                <asp:Button ID="Button3" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button3_Click" />
            </strong></td>
            <td class="auto-style30" __designer:mapid="6"><strong __designer:mapid="7">
                <asp:Button ID="Button4" runat="server" CssClass="auto-style31" Height="30px" Text="-" Width="30px" OnClick="Button4_Click" />
            </strong></td>
            <td class="auto-style34" __designer:mapid="9"><strong __designer:mapid="a"><em __designer:mapid="b">ONAYLI TARİF LİSTESİ</em></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style26" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </em></td>
                        <td class="auto-style35">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid") %>">
                                <asp:Image ID="Image1" runat="server" Height="40px" ImageUrl="~/İkonlar/oneri.png" Width="40px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

