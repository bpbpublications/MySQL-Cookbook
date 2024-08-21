<#
replace user id=<> and password=<> with your own
#>
$myconnection.ConnectionString = “server=localhost;user id=<>;password=<>;database=sakila;pooling=false”
$myconnection.Open()