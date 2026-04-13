# BFD Implementation Guide

The **BFD Implementation Guide** is a technical specification for the data models and terminologies used within the Beneficiary FHIR Database. It defines the semantic structure and vocabulary for claims, beneficiary data, and adjudication outcomes, ensuring interoperability and consistency across the CMS Claims Data Ecosystem.


### Core Components

The IG is built around three primary types of artifacts:

1. **Profiles**: These define the structure of FHIR resources as used in BFD.
   - The [BFD EOB Pharmacy Profile](StructureDefinition-BFD-EOB-Pharmacy.html) builds on the CARIN for Blue Button (C4BB) Pharmacy profile to represent prescription claims.

2. **CodeSystems**: These define the definitive sets of codes used for specific data elements.

   - The [Adjudication](CodeSystem-Adjudication.html) code system (`https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication`) defines assessment categories applied to claim items.
   - The [Supporting Information](CodeSystem-Supporting-Information.html) code system (`https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information`) defines metadata elements provided on claims.
   - Other code systems cover Medicare-specific attributes like Dual Eligibility codes and Hospice period markers.

3. **ValueSets**: These are logical groupings of codes, often derived from the base CodeSystems, that are used in validation profiles and search parameters.

   - The [Adjudication Value Set](ValueSet-adjudication-vs.html) specifically references the `https://bluebutton.cms.gov/fhir/CodeSystem/Adjudication` system to provide a single, computable resource for all adjudication assessments.
   - The [Supporting Information Value Set](ValueSet-supporting-info-vs.html) references `https://bluebutton.cms.gov/fhir/CodeSystem/Supporting-Information` to provide a grouping for diverse metadata elements.

4. **Extensions**: Extensions provide a mechanism to represent data that does not have a direct mapping in the FHIR R4 Core specification.


### Data Modeling Principles

The BFD model prioritizes:
- **Accuracy**: Reflecting the true state of the payer's assessment and the beneficiary's coverage.
- **Interoperability**: Aligning with FHIR standards while accommodating the unique requirements of the Medicare data lifecycle.
- **Computability**: Providing machine-readable resources (ValueSets and CodeSystems) that can be easily integrated into automated validation and reporting tools.

### Artifact Index

For a complete list of all definitions, please refer to the [Artifact Index](artifacts.html). Each entry provides:
- **Documentation**: Human-readable descriptions and usage notes.
- **Electronic Formats**: JSON, XML, and Turtle representations for developers.
- **Relationships**: Links between value sets, code systems, and the profiles that use them.
