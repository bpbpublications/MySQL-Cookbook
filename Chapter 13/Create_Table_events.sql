CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255),
    event_details JSON,
    start_date DATETIME,
    end_date DATETIME
);