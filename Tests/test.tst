<?xml version="1.0" encoding="UTF-8"?>
<TestCase name="test" version="5">

<meta>
   <create author="admin" buildNumber="9.0.0.297" date="03/21/2017" host="ATCVMDEVU0908" version="9.0.0"/>
   <lastEdited author="admin" buildNumber="9.0.0.297" date="03/21/2017" host="ATCVMDEVU0908" version="9.0.0"/>
</meta>

<id>CD2841560E4111E786308A0E20524153</id>
<Documentation>Put documentation of the Test Case here.</Documentation>
<IsInProject>true</IsInProject>
<sig>ZWQ9NSZ0Y3Y9LTEmbGlzYXY9OS4wLjAgKDkuMC4wLjI5Nykmbm9kZXM9MTIxNDQyMjA1OA==</sig>
<subprocess>false</subprocess>

<initState>
</initState>

<resultState>
</resultState>

    <Node log="" name="https POST /MerchRptWS/MerchantReport/DataMaintenance" next="Send Email Step" quiet="false" think="500-1S" type="com.itko.lisa.ws.rest.RESTNode" uid="CD2841570E4111E786308A0E20524153" useFilters="true" version="3"> 


      <!-- Filters -->
      <Filter type="com.itko.lisa.xml.FilterXMLXPath">
        <valueToFilterKey>lisa.https POST /MerchRptWS/MerchantReport/DataMaintenance.rsp</valueToFilterKey>
<prop>JobId</prop>
<xpathq>//JobId</xpathq>
      </Filter>

<url>https://webapps-qa.homedepot.com/MerchRptWS/MerchantReport/DataMaintenance</url>
<content>requestXML=&lt;MerchantReportTO&gt;&#xd;
  &lt;report531StatusFlag&gt;N&lt;/report531StatusFlag&gt;&#xd;
  &lt;report560Flag&gt;N&lt;/report560Flag&gt;&#xd;
  &lt;includeDCFlag&gt;Y&lt;/includeDCFlag&gt;&#xd;
  &lt;reportTmpRetlMktUSDFlag&gt;N&lt;/reportTmpRetlMktUSDFlag&gt;&#xd;
  &lt;reportTmpRetlStrUSDFlag&gt;N&lt;/reportTmpRetlStrUSDFlag&gt;&#xd;
  &lt;reportIncrediblePriceFlag&gt;N&lt;/reportIncrediblePriceFlag&gt;&#xd;
  &lt;reportRCWNormFlag&gt;Y&lt;/reportRCWNormFlag&gt;&#xd;
  &lt;report531AllFlag&gt;N&lt;/report531AllFlag&gt;&#xd;
  &lt;disasterCode&gt;0&lt;/disasterCode&gt;&#xd;
  &lt;reportStoreRCWFlag&gt;Y&lt;/reportStoreRCWFlag&gt;&#xd;
  &lt;newRetailEffectiveEndDate/&gt;&#xd;
  &lt;reportRCWMultiVendFlag&gt;N&lt;/reportRCWMultiVendFlag&gt;&#xd;
  &lt;fiscalYearWeekKeyValue/&gt;&#xd;
  &lt;reportLCSFlag&gt;N&lt;/reportLCSFlag&gt;&#xd;
  &lt;reportRCCWSimpleFlag&gt;N&lt;/reportRCCWSimpleFlag&gt;&#xd;
  &lt;userId&gt;QAT010&lt;/userId&gt;&#xd;
  &lt;reportVolumeBasedPriceFlag&gt;N&lt;/reportVolumeBasedPriceFlag&gt;&#xd;
  &lt;skuTO&gt;&#xd;
    &lt;merchandiseClassNumber&gt;17&lt;/merchandiseClassNumber&gt;&#xd;
    &lt;merchandiseSubClassNumber&gt;4&lt;/merchandiseSubClassNumber&gt;&#xd;
    &lt;merchandiseDepartmentNumber&gt;29&lt;/merchandiseDepartmentNumber&gt;&#xd;
    &lt;skuNumber&gt;1000510009&lt;/skuNumber&gt;&#xd;
  &lt;/skuTO&gt;&#xd;
  &lt;newRetailEffectiveDate/&gt;&#xd;
  &lt;reportTmpRetlMktPerFlag&gt;N&lt;/reportTmpRetlMktPerFlag&gt;&#xd;
  &lt;reportTmpRetlStrPerFlag&gt;N&lt;/reportTmpRetlStrPerFlag&gt;&#xd;
  &lt;buyingOfficeTO&gt;&#xd;
    &lt;marketTO&gt;&#xd;
      &lt;marketNumber&gt;1&lt;/marketNumber&gt;&#xd;
      &lt;storeTO&gt;&#xd;
        &lt;strNumber&gt;105&lt;/strNumber&gt;&#xd;
      &lt;/storeTO&gt;&#xd;
    &lt;/marketTO&gt;&#xd;
    &lt;buyingOfficeNumber&gt;1&lt;/buyingOfficeNumber&gt;&#xd;
  &lt;/buyingOfficeTO&gt;&#xd;
  &lt;reportSOMultiFlag&gt;N&lt;/reportSOMultiFlag&gt;&#xd;
  &lt;reportRCCWDtldFlag&gt;N&lt;/reportRCCWDtldFlag&gt;&#xd;
&lt;/MerchantReportTO&gt;</content>
<content-type/>
<data-type>text</data-type>
<httpMethod>POST</httpMethod>
<onError>abort</onError>
    </Node>


    <Node log="" name="Send Email Step" next="end" quiet="false" think="500-1S" type="com.itko.lisa.glass.SendEmailStep" uid="CD2841580E4111E786308A0E20524153" useFilters="true" version="1"> 

<EmailConnection>
<AssetInfo hashcode="-247697611" type="org.apache.commons.mail.HtmlEmail"><Url>config://com.itko.lisa.glass.email.asset-DC25C9EB0E3C11E786308A0E20524153</Url>
</AssetInfo>
<Ref>
</Ref>
</EmailConnection>
<Bcc/>
<Cc/>
<From>SAILAJA_NARSIPURAM@homedepot.com</From>
<Message>test </Message>
<Subject>Test</Subject>
<To>SAILAJA_NARSIPURAM@homedepot.com</To>
<onError>abort</onError>
    </Node>


    <Node log="" name="end" next="fail" quiet="true" think="0h" type="com.itko.lisa.test.NormalEnd" uid="CD2841590E4111E786308A0E20524153" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="fail" next="abort" quiet="true" think="0h" type="com.itko.lisa.test.Abend" uid="CD28415A0E4111E786308A0E20524153" useFilters="true" version="1"> 

    </Node>


    <Node log="" name="abort" next="" quiet="true" think="0h" type="com.itko.lisa.test.AbortStep" uid="CD28415B0E4111E786308A0E20524153" useFilters="true" version="1"> 

    </Node>


</TestCase>