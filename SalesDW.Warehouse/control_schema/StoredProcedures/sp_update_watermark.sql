CREATE PROCEDURE control_schema.sp_update_watermark
(
    @SourceTable VARCHAR(100),
    @LastWatermarkValue DATETIME2(6),
    @PipelineRunId VARCHAR(100)
)
AS
BEGIN

    IF @LastWatermarkValue IS NOT NULL
    BEGIN

        UPDATE control_schema.watermark_control
        SET
            LastWatermarkValue = @LastWatermarkValue,
            LastPipelineRunId = @PipelineRunId,
            LastRunStatus = 'Success',
            UpdatedDate = GETDATE()
        WHERE SourceTable = @SourceTable;

    END

END;