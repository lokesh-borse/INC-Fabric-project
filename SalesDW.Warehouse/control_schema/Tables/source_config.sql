CREATE TABLE [control_schema].[source_config] (

	[SourceID] int NOT NULL, 
	[SourceSystem] varchar(100) NOT NULL, 
	[SourceSchema] varchar(50) NOT NULL, 
	[SourceTable] varchar(100) NOT NULL, 
	[LoadType] varchar(20) NOT NULL, 
	[WatermarkColumn] varchar(100) NULL, 
	[DestinationLayer] varchar(50) NOT NULL, 
	[DestinationTable] varchar(100) NOT NULL, 
	[IsActive] bit NOT NULL, 
	[CreatedDate] datetime2(6) NOT NULL
);