<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="TarifOnerDetay.aspx.cs" Inherits="TarifOnerDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .auto-style14 {
            font-size: small;
        }

        .auto-style25 {
            width: 349px;
        }
        .auto-style26 {
            width: 283px;
        }
        .auto-style29 {
            font-size: small;
            width: 283px;
            height: 16px;
            text-align: right;
        }
        .auto-style30 {
            width: 349px;
            height: 16px;
        }
        .auto-style31 {
            font-size: small;
            text-align: right;
            width: 283px;
        }
        .auto-style32 {
            font-size: small;
            width: 283px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel runat="server" ID="Panel1">
        <table class="auto-style14">
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style25">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>&nbsp;&nbsp;&nbsp;&nbsp; Tarif Ad: </strong></td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" OnTextChanged="TextBox1_TextChanged" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Malzemer:</strong></td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="230px" OnTextChanged="TextBox2_TextChanged1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Tarif:</strong></td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="230px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Tarif Resim:</strong></td>
                <td class="auto-style25">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style29"><strong>Tarif Gönderen:</strong></td>
                <td class="auto-style30">
                    <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Gönderen Mail</strong>: </td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="230px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style31"><strong>Kategorisi:</strong></td>
                <td class="auto-style25">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="230px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Onayla" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

