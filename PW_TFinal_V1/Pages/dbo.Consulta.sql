CREATE TABLE [dbo].[Consulta] (
    [Cod_Consulta] INT           NOT NULL,
    [Nome]         VARCHAR (50)  NOT NULL,
    [Data]         DATE          NOT NULL,
    [Hora]         TIME (7)      NOT NULL,
    [Diagnóstico]  VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Cod_Consulta] ASC) 
	
);

