<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Noticias.aspx.cs" Inherits="PW_TFinal_V1.Noticias" %>



<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

<div class="container">
       

        <div class="row">

            <div class="col-md-8" style="width:75%;"> 
                 <div class="row">
                        <div class="col-lg-12">
                            <h2 class="page-header"> Inserir Noticias </h2>
                        </div>
                     
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-5">
                                     <label>Título:</label> <asp:TextBox ID="titulo" runat="server" TextMode="SingleLine" style="width:100%;" CssClass="form-control"></asp:TextBox>
                      
                                </div>
                                <div class="col-lg-4">
                                     <asp:RequiredFieldValidator ID="RqTitulo" runat="server" ErrorMessage="* Por favor introduza o titulo!" ControlToValidate="titulo" style="float:left; margin-top:12%; color:red;"></asp:RequiredFieldValidator>
                                </div>
                                <div class="col-lg-8">
                                    <label>Notícia:</label> <asp:TextBox ID="noticia" runat="server" Height="271px" Width="431px" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                                </div>
                                                 
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-default" id="btnSubmit" runat="server">Confirmar</button>
                            </div>
                        </div>
                     </div>
                   </div>      
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
