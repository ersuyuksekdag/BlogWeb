<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="ProjeListesi.aspx.cs" Inherits="ProjeListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <form id="Form1" runat="server">
    <table class="table table-bordered">
        <tr>
           <th>PROJELER</th>       
            <th>İŞLEMLER</th>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>                                          
                            <td><%# Eval("PROJELER") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "ProjeSil.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink1" runat="server" CssClass="btn btn-danger ">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "ProjeGuncelle.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>                               
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </tr>
    </table>
        <asp:HyperLink NavigateUrl="~/ProjeEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Proje Ekle</asp:HyperLink>
        </form>
</asp:Content>

