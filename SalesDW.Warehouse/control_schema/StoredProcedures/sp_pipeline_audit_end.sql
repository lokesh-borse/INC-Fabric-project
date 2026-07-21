CREATE PROCEDURE control_schema.sp_pipeline_audit_end
(
    @PipelineRunId VARCHAR(100),
    @Status VARCHAR(30),
    @RowsCopied BIGINT,
    @RowsRejected BIGINT,
    @ErrorMessage VARCHAR(4000)
)
AS
BEGIN

    UPDATE control_schema.pipeline_audit
    SET
        EndTime = GETDATE(),
        Status = @Status,
        RowsCopied = @RowsCopied,
        RowsRejected = @RowsRejected,
        ErrorMessage = @ErrorMessage
    WHERE PipelineRunId = @PipelineRunId;
END;