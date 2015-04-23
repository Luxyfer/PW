<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Equipa.aspx.cs" Inherits="PW_TFinal_V1.Equipa" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 class="page-header">Equipa</h2>
    <br />
    <asp:Table ID="TableEquipa1" runat="server">
        <asp:TableRow>
            <asp:TableCell CssClass ="table-margin">
                    <asp:Image ID="Image1" runat="server" ImageUrl="../Img/vetdocscaled.png"/>
            </asp:TableCell>
            <asp:TableCell CssClass ="table-margin">    
                <strong>Nome: Dr. José Ribeiro Silva</strong><br  />
                    Idade: 44 anos <br />
                    Cargo: Médico Veterinário <br />
                    Formação - Doutoramento na Universidade de Coimbra(em 2006) <br />
            </asp:TableCell>
        </asp:TableRow>


        <asp:TableRow>
            <asp:TableCell CssClass ="table-margin">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/Img/cutepoodlewithvet.jpg"/> 
            </asp:TableCell>
            <asp:TableCell CssClass ="table-margin">
            <br /><br /><strong>Nome: Dr. Sofia Almeida</strong> <br />
                Idade: 31 anos <br />
                Cargo: Médica Veterinária <br />
                Formação: Mestrado na Universidade de Praga, República Checa <br />
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
            <asp:TableCell CssClass ="table-margin">
                <asp:Image ID="Image3" runat="server" ImageUrl="../Img/veterinarian-doctor-beagle-puppy-7932058.jpg"/>
            </asp:TableCell>
            <asp:TableCell CssClass ="table-margin">
                <br /><br /><strong>Nome: Dr. José António</strong><br />
                 Idade: 38 anos <br />
                 Cargo: Médico Veterinário <br />
                 Formação: Licenciatura na Universidade do Porto <br />
            </asp:TableCell>
        </asp:TableRow>
        </asp:Table> 
        
</asp:Content>
