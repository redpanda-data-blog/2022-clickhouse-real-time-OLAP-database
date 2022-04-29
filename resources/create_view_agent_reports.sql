CREATE MATERIALIZED VIEW panda_house.agent_reports_view
ENGINE = Memory
AS
SELECT * FROM panda_house.agent_reports
SETTINGS
stream_like_engine_allow_direct_select = 1;