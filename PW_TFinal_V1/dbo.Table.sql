CREATE TABLE [dbo].[Dono]
(
	[Cod_Cliente] INT NOT NULL,
    [Cod_Animal]  INT NOT NULL,
    CONSTRAINT [FK_Dono_ToTable_1] FOREIGN KEY ([Cod_Animal]) REFERENCES [dbo].[Animal] ([Cod_Animal]),
    CONSTRAINT [FK_Dono_ToTable] FOREIGN KEY ([Cod_Cliente]) REFERENCES [dbo].[Cliente] ([Cod_Cliente])
)
