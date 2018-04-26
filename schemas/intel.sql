create table intel (
day Date DEFAULT toDate(ts),
ts DateTime,
uid String,
orig_h String,
orig_p UInt16,
resp_h String,
resp_p UInt16,
seen_indicator String,
seen_indicator_type String,
seen_where String,
seen_node String,
matched Array(String),
sources Array(String),
fuid String,
file_mime_type String,
file_desc String
)
ENGINE = MergeTree(day,halfMD5(uid), (day,halfMD5(uid), uid), 8192);
