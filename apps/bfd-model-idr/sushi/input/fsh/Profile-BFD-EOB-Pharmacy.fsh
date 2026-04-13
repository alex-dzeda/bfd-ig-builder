Profile: BFD-EOB-Pharmacy
Parent: http://hl7.org/fhir/us/carin-bb/StructureDefinition/C4BB-ExplanationOfBenefit-Pharmacy
Id: BFD-EOB-Pharmacy
Title: "BFD EOB Pharmacy Profile"
Description: "This profile builds on top of the CARIN for Blue Button (C4BB) Explanation of Benefit Pharmacy profile to represent pharmacy claims within BFD."

* . ^short = "BFD EOB Pharmacy"
* . ^definition = "Pharmacy claims data as represented in the BFD, inheriting from the C4BB Pharmacy profile."

// Claim Type - include standard 'pharmacy' and CMS clm-type-cd
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "code"
* type.coding ^slicing.rules = #open
* type.coding contains standard 1..1 and cms 1..1
* type.coding[standard] = http://terminology.hl7.org/CodeSystem/claim-type#pharmacy
* type.coding[cms] from ClaimTypeVS (required)





// Identifiers - Match C4BB slicing (value:type)
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains CLM-UNIQ-ID 1..1 and CLM-ORIG-CNTL-NUM 1..1
* identifier[CLM-UNIQ-ID]
  * type = http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#uc
  * value 1..1
* identifier[CLM-ORIG-CNTL-NUM]
  * system = "https://bluebutton.cms.gov/identifiers/CLM-CNTL-NUM" (exactly)
  * value 1..1

// Supporting Information Slicing - Match C4BB slicing (value:category)
* supportingInfo ^slicing.discriminator.type = #value
* supportingInfo ^slicing.discriminator.path = "category"
* supportingInfo ^slicing.rules = #open
* supportingInfo contains 
    CLM_CMS_PROC_DT 0..1 and 
    CLM_SBMT_FRMT_CD 0..1 and
    CLM_SBMTR_CNTRCT_NUM 0..1 and
    CLM_SBMTR_CNTRCT_PBP_NUM 0..1 and
    CLM_IDR_LD_DT 0..1

* supportingInfo[CLM_CMS_PROC_DT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information#CLM_CMS_PROC_DT
  * timingDate 1..1
* supportingInfo[CLM_SBMT_FRMT_CD]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information#CLM_SBMT_FRMT_CD
  * code from ClmSbmtFrmtCdVS (required)

* supportingInfo[CLM_SBMTR_CNTRCT_NUM]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information#CLM_SBMTR_CNTRCT_NUM
  * valueString 1..1
* supportingInfo[CLM_SBMTR_CNTRCT_PBP_NUM]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information#CLM_SBMTR_CNTRCT_PBP_NUM
  * valueString 1..1
* supportingInfo[CLM_IDR_LD_DT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information#CLM_IDR_LD_DT
  * timingDate 1..1

// Total Adjudication Slicing - Match C4BB slicing (value:category)
* total ^slicing.discriminator.type = #value
* total ^slicing.discriminator.path = "category"
* total ^slicing.rules = #open
* total contains
    CLM_BENE_PMT_AMT 0..1 and
    CLM_OTHR_TP_PD_AMT 0..1 and
    TOT_RX_CST_AMT 0..1

* total[CLM_BENE_PMT_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_BENE_PMT_AMT
* total[CLM_OTHR_TP_PD_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_OTHR_TP_PD_AMT
* total[TOT_RX_CST_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#TOT_RX_CST_AMT

// Item Adjudication Slicing - Match C4BB slicing (value:category)
* item.adjudication ^slicing.discriminator.type = #value
* item.adjudication ^slicing.discriminator.path = "category"
* item.adjudication ^slicing.rules = #open
* item.adjudication contains
    CLM_LINE_CVRD_PD_AMT 0..1 and
    CLM_LINE_BENE_PMT_AMT 0..1 and
    CLM_LINE_GRS_ABOVE_THRSHLD_AMT 0..1 and
    CLM_LINE_GRS_BLW_THRSHLD_AMT 0..1 and
    CLM_LINE_LIS_AMT 0..1

* item.adjudication[CLM_LINE_CVRD_PD_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_LINE_CVRD_PD_AMT
* item.adjudication[CLM_LINE_BENE_PMT_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_LINE_BENE_PMT_AMT
* item.adjudication[CLM_LINE_GRS_ABOVE_THRSHLD_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_LINE_GRS_ABOVE_THRSHLD_AMT
* item.adjudication[CLM_LINE_GRS_BLW_THRSHLD_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_LINE_GRS_BLW_THRSHLD_AMT
* item.adjudication[CLM_LINE_LIS_AMT]
  * category = https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication#CLM_LINE_LIS_AMT
