CREATE PROCEDURE control_schema.sp_pipeline_audit_start
(
    @AuditID UNIQUEIDENTIFIER,
    @PipelineName VARCHAR(200),
    @SourceTable VARCHAR(100),
    @LoadType VARCHAR(30),
    @PipelineRunId VARCHAR(100),
    @TriggeredBy VARCHAR(100)
)
AS
BEGIN

    INSERT INTO control_schema.pipeline_audit
    (
        AuditID,
        PipelineName,
        SourceTable,
        LoadType,
        PipelineRunId,
        StartTime,
        EndTime,
        Status,
        RowsCopied,
        RowsRejected,
        ErrorMessage,
        TriggeredBy,
        CreatedDate
    )
    VALUES
    (
        @AuditID,
        @PipelineName,
        @SourceTable,
        @LoadType,
        @PipelineRunId,
        GETDATE(),
        NULL,
        'Running',
        NULL,
        NULL,
        NULL,
        @TriggeredBy,
        GETDATE()
    );

END;