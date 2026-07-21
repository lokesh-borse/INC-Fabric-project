CREATE TABLE [control_schema].[watermark_control] (

	[SourceID] int NOT NULL, 
	[SourceTable] varchar(100) NOT NULL, 
	[WatermarkColumn] varchar(100) NOT NULL, 
	[LastWatermarkValue] datetime2(6) NOT NULL, 
	[LastPipelineRunId] varchar(100) NULL, 
	[LastRunStatus] varchar(30) NULL, 
	[UpdatedDate] datetime2(6) NOT NULL
);