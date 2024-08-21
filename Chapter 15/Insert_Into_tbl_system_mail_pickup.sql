INSERT INTO tbl_system_mail_pickup (mFrom, mTo, mSubject, mBody, added_by, updated_by, send_tried)
VALUES (
'<from_your_gmail_account>', -- this should be a Gmail account
'<to_email_account>',
'MySQL 8 Test message',
'This is a test email from MySQL Server',
'root',
'root',
'1'
);