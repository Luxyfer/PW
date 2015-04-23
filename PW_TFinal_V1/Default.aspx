<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PW_TFinal_V1._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
 <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill">
                    <img src="Img/cat-banner-960x368.jpg" />
                </div>
                <div class="carousel-caption">
                    <a href="Contact.aspx"><h2>Contactos</h2></a>
                </div>
            </div>
            <div class="item">
                <div class="fill">
                    <img src="Img/dog_1024x768.JPG" />
                </div>
                <div class="carousel-caption">
                    <a href="Services.aspx"><h2>Serviços</h2></a>
                </div>
            </div>
            <div class="item">
                <div class="fill">
                    <img src="Img/PC-qanda-questions-for-ur-vet-header.jpg" />
                </div>
                <div class="carousel-caption">
                    <a href="Equipa.aspx"><h2>Equipa</h2></a>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"> MobilVet - A clínica veterinária móvel </h1>
            </div>
            <div class="col-md-6" style="margin-left:30px;">
                <p>Prestamos cuidados de alta qualidade, com base na ampla experiência dos nossos veterinários e pessoal de enfermagem acumulada ao longo de anos de trabalho na área, combinada com os mais recentes meios disponíveis. A maioria dos nossos pacientes são gatos e cães, mas vemos frequentemente animais menos usuais, como coelhos,  hamsters, porquinhos da índia e muitos outros. </p>
                <p>Reconhecemos o papel crescentemente importante que os animais de estimação desempenham na vida das pessoas e comprometemo-nos a oferecer o que de mais moderno existe na medicina veterinária.</p>
            </div>
            <div class="col-md-5" style="margin-left:20px;">
                <img src="Img/mutt-cutts-van.jpg" />
            </div>
        </div>

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">
                    Noticias
                </h2>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><asp:Label ID="Noticia1" runat="server" Text="Label"></asp:Label></h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Corpo1" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><asp:Label ID="Noticia2" runat="server" Text="Label"></asp:Label></h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Corpo2" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><asp:Label ID="Noticia3" runat="server" Text="Label"></asp:Label></h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Corpo3" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><asp:Label ID="Noticia4" runat="server" Text="Label"></asp:Label></h4>
                    </div>
                    <div class="panel-body">
                        <asp:Label ID="Corpo4" runat="server" Text="Label"></asp:Label>
                    </div>
                </div>
            </div>
       </div>
    </div>
    </asp:Content>