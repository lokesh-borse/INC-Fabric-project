CREATE TABLE [control_schema].[pipeline_audit] (

	[AuditID] uniqueidentifier NOT NULL, 
	[PipelineName] varchar(200) NOT NULL, 
	[SourceTable] varchar(100) NOT NULL, 
	[LoadType] varchar(30) NOT NULL, 
	[PipelineRunId] varchar(100) NOT NULL, 
	[StartTime] datetime2(6) NOT NULL, 
	[EndTime] datetime2(6) NULL, 
	[Status] varchar(30) NOT NULL, 
	[RowsCopied] bigint NULL, 
	[RowsRejected] bigint NULL, 
	[ErrorMessage] varchar(4000) NULL, 
	[TriggeredBy] varchar(100) NULL, 
	[CreatedDate] datetime2(6) NOT NULL
);