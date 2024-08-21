SELECT xml_content FROM XML_Test;
SET @i = 1;
SELECT xml_content, @i, ExtractValue(xml_content, '//name[$@i]') FROM XML_Test;