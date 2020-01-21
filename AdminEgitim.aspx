<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEgitim.aspx.cs" Inherits="AdminEgitim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <form id="Form1" runat="server">
    <table class="table table-bordered">
        <tr>
            <th>ID</th>
            <th>BASLIK</th>
            <th>ALT BASLIK</th>
            <th>ACIKLAMA</th>
            <th>GENEL NOT ORT</th>
            <th>TARIH</th>
            <th>İŞLEMLER</th>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <th><%# Eval("ID") %></th>
                            <td><%# Eval("BASLIK") %></td>
                            <td><%# Eval("ALTBASLIK") %></td>
                            <td><%# Eval("ACIKLAMA") %></td>
                             <td><%# Eval("GNOT") %></td>
                            <td><%# Eval("TARIH") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "AdminEgitimSil.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink1" runat="server" CssClass="btn btn-danger ">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "AdminEgitimGuncelle.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>
                                
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </tr>
    </table>
        <asp:HyperLink NavigateUrl="~/AdminEgitimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Eğitim Ekle</asp:HyperLink>
        </form>
</asp:Content>

