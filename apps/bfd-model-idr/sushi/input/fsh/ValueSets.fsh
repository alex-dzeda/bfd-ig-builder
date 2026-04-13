ValueSet: SupportingInformationVS
Id: supporting-info-vs
Title: "Supporting Information Value Set"
Description: "This value set provides a comprehensive collection of codes used to identify and categorize various types of supporting information provided on insurance claims. This includes categories such as physical examinations, diagnoses, administrative metadata, and other relevant contexts necessary for claim adjudication."
* include codes from system https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information

ValueSet: AdjudicationVS
Id: adjudication-vs
Title: "Adjudication Value Set"
Description: "This value set encompasses all adjudication codes used by the payer to convey their assessment of submitted claim items. It includes codes for non-covered charges, allowed amounts, provider payments, and other critical financial and administrative decisions made during the adjudication process under the patient's insurance coverage."
* include codes from system https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication

ValueSet: ClaimTypeVS
Id: claim-type-vs
Title: "Claim Type Value Set"
Description: "A value set identifying the source and type of claim submitted through the Medicare or Medicaid program."
* include codes from system https://bluebutton.cms.gov/fhir/CodeSystem/CLM-TYPE-CD
* include http://terminology.hl7.org/CodeSystem/claim-type#pharmacy


ValueSet: ClmSbmtFrmtCdVS
Id: clm-sbmt-frmt-cd-vs
Title: "Claim Submit Format Code Value Set"
Description: "The format of the claim as submitted by the provider."
* include codes from system https://bluebutton.cms.gov/fhir/CodeSystem/CLM-SBMT-FRMT-CD


