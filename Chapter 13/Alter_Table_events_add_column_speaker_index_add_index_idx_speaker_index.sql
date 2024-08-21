ALTER TABLE events
ADD COLUMN speaker_index VARCHAR(255) GENERATED ALWAYS AS (event_details->>'$.speakers') STORED,
ADD INDEX idx_speaker_index (speaker_index);