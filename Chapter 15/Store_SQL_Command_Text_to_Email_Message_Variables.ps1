$myreader = $mycommand.ExecuteReader()
while($myreader.Read()){ 
$EmailFrom = $myreader.GetString(0) 
$EmailTo = $myreader.GetString(1)
$Subject = $myreader.GetString(2)
$Body = $myreader.GetString(3) 
}