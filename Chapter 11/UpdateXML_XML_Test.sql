UPDATE XML_Test 
SET xml_content = UpdateXML(xml_content, '/row/id', concat('<id>',ID,'</id>'))
WHERE ID=100;