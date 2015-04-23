<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PW_TFinal_V1.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2 class="page-header">Registo</h2>
    <div class="form-horizontal">
        <h4>Cria uma nova conta</h4>
        <hr />
        <section id="loginForm" class="login" style="padding:5% 0 0 20%;">        
            <div class="row">
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email: </asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Username" CssClass="form-control"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="Por favor introduza um Email!" />
                </div>
                <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email: </asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="Por favor introduza um Email!" />
                </div>
                <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" style="margin-top:2%;">Palavra-Passe: </asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" style="margin-top:2%;"/>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                        CssClass="text-danger" ErrorMessage="Por favor introduza uma Password!" />
                </div>
                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label" style="margin-top:2%;">Confirma Palavra-Passe: </asp:Label>
                <div class="col-md-10">
                    <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" style="margin-top:2%;" />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="Introduza uma Password de novo!" />
                    <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                        CssClass="text-danger" Display="Dynamic" ErrorMessage="As palavras passes não são iguais!" />
                </div>
                <div class="col-md-offset-2 col-md-10">
                    <asp:Button runat="server" OnClick="CreateUser_Click" Text="Registo" CssClass="btn btn-default" />
                </div>
             </div>
        </section>
        

    </div>
</asp:Content>
