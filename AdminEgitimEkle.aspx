<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEgitimEkle.aspx.cs" Inherits="AdminEgitimEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

     <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:Label ID="Label1" runat="server" Text="BAŞLIK"></asp:Label>
                <asp:TextBox ID="Txtbaslik" runat="server"  Width="100%" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label2" runat="server" Text="ALTBAŞLIK"></asp:Label>
                <asp:TextBox ID="Txtaltbaslik" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label ID="Label3" runat="server" Text="AÇIKLAMA"></asp:Label>
                <asp:TextBox ID="Txtaciklama" runat="server"  Width="100%" CssClass="form-control" Height="100px" TextMode="MultiLine"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label ID="Label4" runat="server" Text="GENEL NOT ORT"></asp:Label>
                <asp:TextBox ID="Txtgnot" runat="server" Width="100%" CssClass="form-control"></asp:TextBox>
            </div>
            <br />   
            <div>
                <asp:Label ID="Label5" runat="server" Text="TARIH"></asp:Label>
                <asp:TextBox ID="Txttarih" runat="server"  Width="100%" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="KAYDET" CssClass="btn btn-success" OnClick="Button1_Click"/>
        </div>
    </form>
</asp:Content>

