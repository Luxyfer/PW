<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medicamentos.aspx.cs" Inherits="PW_TFinal_V1.Medicamentos" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript">
        $(function () {
            $("[id$=txtDate]").datepicker({
                dateFormat: "dd / mm / yy"
            })
            $("[id$=txtDateFinal]").datepicker({
                dateFormat: "dd / mm / yy"
            })
        });
    </script>
    <div class="container">
        <div class="row">

            <div class="col-md-8" style="width:75%;"> 
                 <div class="row">
                        <div class="col-lg-12">
                            <h2 class="page-header"> Passar Receitas </h2>
                        </div>
                     
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2" ">
                                    <ul class="list-unstyled" style="line-height:47px; margin: 6% 2% 0 5%; float:right;">
                                        <li><label class="control-label" for="Dono">Dono:</label></li>
                                        <li><label ID="AnimalLabel" class="control-label" for="Animal" visible="false" runat="server">Animal:</label></li>
                                        <li><label class="control-label" for="tipo">Medicamento:</label></li>
                                        <li><label class="control-label" for="tipo">Descrição:</label></li>
                                        <li><label class="control-label" for="tipo">Data Inicio:</label></li>
                                        <li><label class="control-label" for="tipo">Data Fim:</label></li>
                                    </ul>
                                </div>
                                <div class="col-lg-5">
                                    <ul class="list-unstyled coluna2" style="line-height:30px;">
                                        <li><asp:TextBox ID="Nome" runat="server" class="form-control" Type="text" placeholder="Introduza Nome do Dono" style="width:100%; margin-bottom:5%;" AutoPostBack="true" OnTextChanged ="Nome_TextChanged"></asp:TextBox></li>  
                                        <li><asp:DropDownList ID="animalMC" runat="server" CssClass="form-control" style="width:87%; margin-bottom:5%;" Visible="false">
                                        </asp:DropDownList></li>
                                       <li> <asp:TextBox ID="Medicamento" runat="server" CssClass="form-control" Width="450px" placeholder="Introduza Nome do medicamento" style="margin-bottom:5%;"></asp:TextBox></li>                                      
                                       <li><asp:TextBox ID="Descrição" runat="server" TextMode="SingleLine" CssClass="form-control" Width="450px" placeholder="Introduza Instruçoes de receita" style="margin-bottom:5%;"></asp:TextBox></li>
                                       <li>
                                           <asp:TextBox ID="txtDate" runat="server" CssClass="form-control" Placeholder ="Selecione uma data" style="width:100%; margin-bottom:5%;"></asp:TextBox>
                                       </li>
                                       <li>
                                            <asp:TextBox ID="txtDateFinal" runat="server" CssClass="form-control" Placeholder ="Selecione uma data" style="width:100%;"></asp:TextBox>
                                       </li>
                                           
                                   </ul>
                                </div>   
                                <div class="col-lg-5">
                                    <ul class="list-unstyled" style="line-height:47px; margin-top:5%;">
                                        <li>
                                            <asp:Label ID="NomeError" runat="server" Text="Label" Visible="false" style="color:red; float:left;"></asp:Label>
                                            <asp:RequiredFieldValidator ID="RqNome" runat="server" ErrorMessage="* Por favor introduza o Nome do Dono!" ControlToValidate="Nome" style="float:left;" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </li>
                                        <li>
                                            <asp:RequiredFieldValidator ID="RqMedicamento" runat="server" ErrorMessage="* Por favor introduza o Nome do Medicamento!" ControlToValidate="Medicamento" style="float:left;" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </li>
                                        <li>
                                            <asp:RequiredFieldValidator ID="RqDataInicio" runat="server" ErrorMessage="* Por favor introduza um data!" ControlToValidate="txtDate" style="float:left; margin-top:16%;" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </li>
                                        <li>
                                            <asp:RequiredFieldValidator ID="RqDataFinal" runat="server" ErrorMessage="* Por favor introduza um data!" ControlToValidate="txtDateFinal" style="float:left;" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:Label ID="DataError" runat="server" Text="Label" Visible="false" style="float:left; color:red;"></asp:Label>
                                        </li>

                                        

                                    </ul>
                                </div>                                                                                   
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-default" id="btnSubmit" runat="server">Passar Receita</button>
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
