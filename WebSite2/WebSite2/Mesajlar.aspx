<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Mesajlar.aspx.cs" Inherits="Mesajlar" %>

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
            text-align: right;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style24" __designer:mapid="1">
        <tr __designer:mapid="2">
            <td class="auto-style29" __designer:mapid="3"><strong __designer:mapid="4">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style31" Height="30px" Text="+" Width="30px" OnClick="Button2_Click" />
                </strong></td>
            <td class="auto-style30" __designer:mapid="6"><strong __designer:mapid="7">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style31" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click" />
                </strong></td>
            <td class="auto-style34" __designer:mapid="9"><strong __designer:mapid="a"><em __designer:mapid="b">MESAJ LİSTESİ</em></strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="394px">
            <itemtemplate>
                <table class="auto-style24">
                    <tr>
                        <td class="auto-style28"><em>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style26" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                            </em></td>
                        <td class="auto-style35">
                            <a href="MesajDetay.aspx?Mesajid=<%#Eval("Mesajid") %>"><asp:Image ID="Image3" runat="server" Height="40px" ImageUrl="~/İkonlar/read.png" Width="40px" /></a>
                        </td>
                    </tr>
                </table>
            </itemtemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>

