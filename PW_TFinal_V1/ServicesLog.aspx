<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServicesLog.aspx.cs" Inherits="PW_TFinal_V1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="container">

        <div class="row">
            <div class="col-md-8" style="width:75%;"> 
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
            </div>
        
        <div class="col-md-4" style="margin-top:20px;">
            <div class="perfiltop">
                <h3>Menu</h3>
            </div>
            <div class="well" style="text-align:center; ">
                <a href="Agenda.aspx" class="btn btn-default">Agenda</a>
                <a href="MarcarConsulta.aspx" class="btn btn-default">Fazer Marcação</a>        
                <a href="Medicamentos.aspx" class="btn btn-default">Passar Receita</a>
                <a href="Noticias.aspx" class="btn btn-default">Notícias</a>
            </div>
        </div>
        </div>
    </div>


</asp:Content>
