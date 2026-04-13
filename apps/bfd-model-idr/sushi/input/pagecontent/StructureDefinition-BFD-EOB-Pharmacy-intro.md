### BFD EOB Pharmacy Profile Narrative

This profile is a specialized version of the [C4BB ExplanationOfBenefit Pharmacy](http://hl7.org/fhir/us/carin-bb/StructureDefinition-C4BB-ExplanationOfBenefit-Pharmacy.html) profile. It is designed to capture and represent pharmacy-related claims data specifically for the CMS Claims Data ecosystem.

#### Inheriting from C4BB

By building on top of the CARIN for Blue Button (C4BB) IG, this profile ensures that all BFD pharmacy claims are:
- **Standards-compliant**: Adhering to the industry-standard CARIN BB profiles for consumer data exchange.
- **Interoperable**: Facilitating easier data sharing with third-party applications and other FHIR-based systems.
- **Rich in Financial Data**: Including mandatory elements for ingredient cost, dispensing fees, and patient responsibility as defined by the parent profile.

#### Key Technical Differences

The BFD EOB Pharmacy profile introduces several technical refinements to the base C4BB definition to support CMS-specific data elements:

- **Strict Claim Typing**: The `type` element includes multiple codings to satisfy both base standards and CMS requirements. It contains a standard `pharmacy` code for interoperability, alongside the [BFD Claim Type CodeSystem](CodeSystem-CLM-TYPE-CD.html) codes to capture precise categorization of Medicare Part D claims.
- **Enhanced Identification**: Multi-slice identification is used to capture both the standard CARIN BB unique claim identifier and the [CMS Claim Control Number](https://bluebutton.cms.gov/identifiers/CLM-CNTL-NUM).
- **Extended Adjudication Categories**: This profile includes additional adjudication slices for CMS-specific financial elements such as Low Income Subsidy (LIS) amounts, Gross Drug Cost Above/Below Threshold, and Total Prescription Cost.
- **Metadata-rich Supporting Info**: Custom slices in `supportingInfo` capture administrative metadata including Submitter Contract numbers, Load dates, and Claim Processing dates.

