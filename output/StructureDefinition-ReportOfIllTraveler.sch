<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Composition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Composition</sch:title>
    <sch:rule context="f:Composition">
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/transfer-date']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/transfer-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://example.org/StructureDefinition/qstation-name']) &lt;= 1">extension with URL = 'http://example.org/StructureDefinition/qstation-name': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:confidentiality) &lt;= 0">confidentiality: maximum cardinality of 'confidentiality' is 0</sch:assert>
      <sch:assert test="count(f:attester) &lt;= 0">attester: maximum cardinality of 'attester' is 0</sch:assert>
      <sch:assert test="count(f:section) &lt;= 0">section: maximum cardinality of 'section' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
