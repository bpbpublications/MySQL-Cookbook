<#
replace <youraccount> with your own gmail account
replace <youremailaccount> with your email account
replace “C:\Program Files (x86)\MySQL\MySQL Connector NET 8.3.0\MySql.Data.dll” with your own MySql.Data.dll installation path
replace user id=<> with your own user
replace password=<> with your own password
replace server=localhost with your own server host  
replace <yourgmailaccount> with your own Gmail account name, omit @gmail.com
replace <App password generated by Gmail see Figure 15.55> accordingly with the password generated as instructed, see Figure 15.55
#>
$EmailFrom = "<youraccount>@gmail.com"
$EmailTo = "<youremailaccount>"
$Subject = "MySQL Test"
$Body = "This is a test email from MySQL”

[void][System.Reflection.Assembly]::LoadFrom(“C:\Program Files (x86)\MySQL\MySQL Connector NET 8.3.0\MySql.Data.dll”)
$myconnection = New-Object MySql.Data.MySqlClient.MySqlConnection 

$myconnection.ConnectionString = “server=localhost;user id=<>;password=<>;database=sakila;pooling=false”
$myconnection.Open()

$mycommand = New-Object MySql.Data.MySqlClient.MySqlCommand
$mycommand.Connection = $myconnection
$mycommand.CommandText = “SELECT mFrom, mTo, mSubject, mBody FROM tbl_system_mail_pickup”
$myreader = $mycommand.ExecuteReader()
while($myreader.Read()){ 
$EmailFrom = $myreader.GetString(0) 
$EmailTo = $myreader.GetString(1)
$Subject = $myreader.GetString(2)
$Body = $myreader.GetString(3) 
}

$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Object Net.Mail.SmtpClient($SmtpServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("yourgmailaccount", "<App password generated by Gmail see Figure 15.55>");
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)

$myconnection.Close()

