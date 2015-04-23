<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="Services.aspx.cs" Inherits="PW_TFinal_V1.Services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2 class="page-header">Serviços</h2><br />
    <h4>Todos os nossos serviços são feitos ao domicílio.</h4> <br /><br />
    <asp:Image ID="sv" runat="server"  ImageUrl="~/Img/serv.jpg"  CssClass="imgSv" Height="428px" style="float:right"/>
    <asp:Table ID="Table1" runat="server" >
        <asp:TableRow CssClass="svc">
            <asp:TableCell>
                 Estomalogia/ Gastroenterologia 
            </asp:TableCell>
        </asp:TableRow >
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Oftalmologia 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell>
                 Anestesiologia 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Cardiologia 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Medicina Preventina 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Animais Exóticos 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Análises Laboratoriais 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Dermatologia 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Ortopedia 
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Oncologia
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Andrologia/Ginecologia
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Toxiologia
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="svc">
            <asp:TableCell >
                 Radiologia 
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>
