<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Hakkimizda.aspx.cs" Inherits="Hakkimizda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        
        .auto-style20 {
            margin-left: 0px;
        }
        .auto-style21 {
            width: 100%;
            color: #FFFFFF;
            font-size: 20pt;
            background-color: #329765;
        }
        .auto-style22 {
            font-size: 1pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%--<p class="auto-style19">--%>
        <table class="auto-style21">
            <tr>
                <td class="auto-style17"><strong><em>HAKKIMIZDA</em></strong></td>
            </tr>
    </table>
    <asp:DataList ID="DataList2" runat="server" Width="387px" Height="120px">
        <ItemTemplate>
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
    <span class="auto-style22">&nbsp;&nbsp;</span> 
    <asp:Image ID="Image1" runat="server" CssClass="auto-style20" Height="162px" Width="394px" ImageUrl="~/resimler/blog.png" />

</asp:Content>

