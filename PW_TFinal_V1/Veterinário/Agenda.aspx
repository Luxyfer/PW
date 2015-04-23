<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Agenda.aspx.cs" Inherits="PW_TFinal_V1.Veterinário.Agenda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Agenda</h2>
     <script src="pikaday.js"></script>
                    <link href="css/theme.css" rel="stylesheet" />
                    <link href="css/site.css" rel="stylesheet" />
                    <link href="css/pikaday.css" rel="stylesheet" />
                    <script src="pikaday.js"></script>
                    <asp:TextBox ID="TBA" runat="server"></asp:TextBox>
                    <script type="text/javascript">
                        var picker = new Pikaday({
                            field: document.getElementById("TBA"),
                            firstDay: 1,
                            MinDate: new Date("2015-01-01"),
                            MaxDate: new Date("2025-12-31"),
                            yearRange: [2015, 2025],
                            numberOfMonths: 1,
                            theme: 'dark-theme'
                        });
                    </script> 
        <style>
            .agenda {
                border: 1px solid black;
                border-collapse:collapse;
                border-radius: 8px;
            }
        </style>
        <asp:Table ID="Table1" runat="server" CssClass="agenda" Border="1" >
            <asp:TableRow>
                <asp:TableCell>
                    Horas
                </asp:TableCell>
                <asp:TableCell>
                    Animal
                </asp:TableCell>
                <asp:TableCell>
                    Dono
                </asp:TableCell>
                <asp:TableCell>
                    Tipo
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    9h
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                  
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    10h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    11h
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    12h
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    13h
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    14h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    15h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    16h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    17h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    18h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                   
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    19h
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
                <asp:TableCell>
                    
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>

</asp:Content>
