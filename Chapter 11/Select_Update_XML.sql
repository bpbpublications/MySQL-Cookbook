SELECT
    UpdateXML(xml_content, '/row/id', '<id>10</id>') AS val1,
    UpdateXML(xml_content, '/row/name', '<name>Elias</name>') AS val2
FROM XML_Test;