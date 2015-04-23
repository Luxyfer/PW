<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactLog.aspx.cs" Inherits="PW_TFinal_V1.ContactLog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container">

        <div class="row">
            <div class="col-md-8" style="width:75%;"> 
                 <div class="row">
                        <div class="col-lg-12">
                            <h2 class="page-header">
                                Contactos
                            </h2>
                        </div>
                            <div class="col-md-6">
                                <h4>Telemóvel</h4><br/>
                                <p>911234567</p>
                                <p>932341234</p>
                                <p>962678097</p>
                            </div>
                            <div class="col-md-6" >     
                                <h4>E-mail</h4><br/>
                                <p>mobilvet@gmail.com</p>
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
