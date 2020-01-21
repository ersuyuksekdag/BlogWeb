<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="HobilerListesi.aspx.cs" Inherits="HobilerListesi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      <form id="Form1" runat="server">
    <table class="table table-bordered">
        <tr>
           <th>HOBİLER</th>       
            <th>İŞLEMLER</th>
            <tbody>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>                                          
                            <td><%# Eval("HOBI") %></td>
                            <td>
                                <asp:HyperLink NavigateUrl='<%# "HobiSil.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink1" runat="server" CssClass="btn btn-danger ">Sil</asp:HyperLink>
                                <asp:HyperLink NavigateUrl='<%# "HobiGuncelle.Aspx?ID=" + Eval("ID") %>'
                                    ID="HyperLink2" runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink>                               
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </tr>
    </table>
        <asp:HyperLink NavigateUrl="~/HobiEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-info">Hobi Ekle</asp:HyperLink>
        </form>
</asp:Content>

