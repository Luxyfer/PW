<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="PW_TFinal_V1.Agenda" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=txtDate]").datepicker({
                dateFormat: "dd / mm / yy"
            })
        });
    </script>


    <div class="container">
        <div class="row">

            <div class="col-md-8" style="width:75%;"> 
                 <div class="row">
                        <div class="col-lg-12">
                            <h2 class="page-header"> Agenda </h2>
                        </div>
                     
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-4" ">
                                    <ul class="list-unstyled coluna1">
                                        <li><label class="control-label" for="Dono" style="float:right;">Data:</label></li>
                                    </ul>
                                </div>
                                <div class="col-lg-8">
                                    <ul class="list-unstyled coluna2">
                                        <li>
                                            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" OnTextChanged="Data_TextChanged" AutoPostBack="true" Placeholder ="Selecione uma data" style="width:100%;"></asp:TextBox>
                                        </li>
                                   </ul>
                                </div>
                                <asp:GridView ID="GridView1" Runat="server" CssClass="grid"></asp:GridView>                 
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
