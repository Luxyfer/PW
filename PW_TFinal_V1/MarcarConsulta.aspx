<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MarcarConsulta.aspx.cs" Inherits="PW_TFinal_V1.MarcarConsulta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="container">
        <div class="row">
             <div class="col-md-8" style="width:75%;"> 
                 <div class="row">
                        <div class="col-lg-12">
                            <h2 class="page-header"> Marcação Consultas/ Tratamentos </h2>
                        </div>
                     
                        <div class="form-group">
                            <div class="row">
                                <div class="col-lg-2">
                                    <ul class="list-unstyled coluna1">
                                        <li><label class="control-label" for="Dono">Dono:</label></li>
                                        <li><label Id="AnimalLabel" class="control-label" for="Animal" Visible="false" runat="server">Animal:</label></li>
                                        <li><label class="control-label">Morada:</label></li>
                                        <li><label class="control-label" for="tipo">Tipo:</label></li>
                                        <li><label class="control-label" for="tipo">Data:</label></li>         
                                    </ul>
                                </div>
                                <div class="col-lg-5">
                                    <ul class="list-unstyled coluna2">
                                        <li><asp:TextBox ID="Nome" runat="server" class="form-control" Type="text" placeholder="Introduza Nome do Dono" style="width:100%;" AutoPostBack="true" OnTextChanged ="Nome_TextChanged"></asp:TextBox>  
                                        <li><asp:DropDownList ID="animalMC" runat="server" CssClass="form-control" style="width:88%;" Visible="false" AutoPostBack="true">
                                        </asp:DropDownList></li>
                                        <li><asp:TextBox ID="Morada" runat="server" class="form-control" Type="text" placeholder="Introduza uma morada" style="width:100%;"></asp:TextBox>  
                                        <li><asp:DropDownList CssClass="form-control" ID="Tipo" runat="server" style="width:88%;">
                                        <asp:ListItem>Consulta de Rotina</asp:ListItem>
                                        <asp:ListItem> Consulta Específica</asp:ListItem>
                                        <asp:ListItem>Tratamento</asp:ListItem>
                                        </asp:DropDownList></li>
                                        

                                        <li>
                                           <label style="float:left; margin:20px 10px 0 0;">Dia:</label>
                                           <asp:TextBox ID="Dia" CssClass="form-control" style="width:20%; float:left; margin-top:10px; " runat="server" placeholder="DD" ></asp:TextBox>                     
                                        </li>
                                        <li>   
                                           <br /><br /><br /><br />
                                           <label style="float:left;">Mês: </label>
                                            <asp:TextBox ID="Mes" CssClass="form-control" style="width:20%; float:left; margin-left:5px;" runat="server" placeholder="MM"></asp:TextBox>    
                                        </li>
                                        <li>   
                                            <br /> <br /><br />
                                            <label style="float:left;">Ano:</label>
                                            <asp:TextBox ID="Ano" CssClass="form-control" style="width:25%; float:left; margin-left:5px;" runat="server" placeholder="YYYY"></asp:TextBox>
                       
                                        </li>  
                                                                                                                                                                                      
                                        <li> <br /><br /><br />             
                                             <label style="float:left; margin:10px 5px 0 0;">Hora:</label> <asp:TextBox ID="Hora" CssClass="form-control" style="width:20%; " runat="server" placeholder="HH" AutoPostBack="true" OnTextChanged ="Hora_TextChanged" Type="integer"></asp:TextBox></li>
                                             
                                    </ul>
                                </div>
                            <div class="col-lg-5">
                                <ul class="list-unstyled" style="margin-top:10%; line-height:35px;">
                                    <li>
                                        <asp:Label ID="NomeError" runat="server" Text="Label" Visible="false" style="color:red; float:left;"></asp:Label>
                                        <asp:RequiredFieldValidator ID="RqNome" runat="server" ErrorMessage="* Por favor introduza o Nome do Dono!" ControlToValidate="Nome" style="float:left;" ForeColor="Red"></asp:RequiredFieldValidator></li>
                                    <li>
                                        <asp:RequiredFieldValidator ID="RqMorada" runat="server" ErrorMessage="* Por favor introduza a morada!" ControlToValidate="Morada" style="float:left;" ForeColor="Red"></asp:RequiredFieldValidator></li>
                                    </li>
                                    <li>
                                        <asp:RangeValidator runat="server" id="rngDia" controltovalidate="Dia" type="Integer" minimumvalue="01" maximumvalue="31" ForeColor="Red" errormessage="*Por favor introduza um valor entre 1 e 31!" style="float:left;" />                                                                                                                      
                                        <asp:RequiredFieldValidator ID="ReqDia" runat="server" ErrorMessage="* Por favor introduza o dia!" ControlToValidate="Dia" ForeColor="Red" style="float:left;"></asp:RequiredFieldValidator>
                                    </li>
                                    <li>
                                        <asp:RangeValidator runat="server" id="rgnMes" controltovalidate="Mes" type="Integer" minimumvalue="01" maximumvalue="12" style="margin-left:10px; float:left;" ForeColor="Red" errormessage="*Por favor introduza um valor entre 1 e 12!" /> 
                                        <asp:RequiredFieldValidator ID="RqMes" runat="server" ErrorMessage="* Por favor introduza o mês!" ControlToValidate="Mes" ForeColor="Red" style="float:left;"></asp:RequiredFieldValidator>
                                    </li>
                                    <li>
                                        <asp:RangeValidator runat="server" id="rgnAno" controltovalidate="Ano" type="Integer" minimumvalue="2015" maximumvalue="2030" style="margin-left:10px; float:left;" ForeColor="Red" errormessage="*Por favor introduza um valor superior a 2015!" />
                                        <asp:RequiredFieldValidator ID="RqAno" runat="server" ErrorMessage="* Por favor introduza o ano!" ControlToValidate="Ano" ForeColor="Red" style="float:left;"></asp:RequiredFieldValidator>
                                    </li>
                                    <li>
                                        <asp:RangeValidator runat="server" id="rgnHora" controltovalidate="Hora" type="Integer" minimumvalue="0" maximumvalue="24" style="float:left;" ForeColor="Red" errormessage=" *Por favor introduza uma hora entre as 0h e 24h!" />
                                        <asp:RequiredFieldValidator ID="RqHora" runat="server" controltovalidate="Hora" ErrorMessage="* Por favor introduza uma hora!" ForeColor="Red" style="float:left;"></asp:RequiredFieldValidator>
                                        <asp:Label ID="HoraError" runat="server" Text="Label" Visible="false" style="color:red; float:left;"></asp:Label>
                                    </li>
                                </ul>
                            </div>
                                                               
                            <div class="col-sm-offset-6 col-sm-10">
                                <button type="submit" class="btn btn-default" id="btnSubmit" runat="server">Marcar Consulta</button>
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
