---
title: "Business Associate Agreement Management Policy"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "policy"
tags: ["policy", "hipaa", "baa", "business-associate", "compliance", "healthcare", "vendor-management"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
controls:
  hitrust: ["05.i", "09.e"]
  soc2: ["CC2.3", "CC9.2"]
retention-until: "2032-01-30"
---

# Business Associate Agreement Management Policy

## 1. Purpose

The purpose of this policy is to establish Pivot Point Consulting's requirements for the management of Business Associate Agreements (BAAs) across the organization. As a healthcare IT consulting firm that operates as a Business Associate to Covered Entity clients and engages subcontractors that may access Protected Health Information (PHI), Pivot Point Consulting must maintain a rigorous and comprehensive BAA management program.

This policy governs the entire BAA lifecycle, from identification of BAA requirements through execution, monitoring, and termination, ensuring compliance with HIPAA regulations (45 CFR 164.502(e) and 164.504(e)) and alignment with HITRUST and SOC 2 requirements.

## 2. Scope

This policy applies to:

- All Business Associate Agreements where Pivot Point Consulting is the Business Associate to a Covered Entity client.
- All Business Associate Agreements where Pivot Point Consulting engages subcontractors or vendors that will access PHI.
- All departments and individuals involved in contracting, procurement, legal review, and engagement management.
- All consulting engagements that involve the creation, receipt, maintenance, or transmission of PHI.

## 3. Definitions

### 3.1 Business Associate

A person or organization that performs certain functions or activities on behalf of, or provides certain services to, a Covered Entity that involve the use or disclosure of PHI. Pivot Point Consulting is a Business Associate to its Covered Entity clients.

### 3.2 Business Associate Agreement (BAA)

A written contract or arrangement between a Covered Entity and a Business Associate (or between a Business Associate and a subcontractor) that establishes the permitted and required uses and disclosures of PHI by the Business Associate and provides assurances that the Business Associate will appropriately safeguard the PHI.

### 3.3 Subcontractor

A person or entity to whom a Business Associate delegates a function, activity, or service involving the creation, receipt, maintenance, or transmission of PHI. Under the HIPAA Omnibus Rule, Business Associates must enter into BAAs with their subcontractors.

### 3.4 Covered Entity

A health plan, healthcare clearinghouse, or healthcare provider that transmits any health information in electronic form in connection with a HIPAA-covered transaction.

### 3.5 Downstream Business Associate

A subcontractor that acts as a Business Associate to Pivot Point Consulting by performing functions or activities involving PHI on behalf of Pivot Point Consulting.

## 4. BAA Requirements

### 4.1 When a BAA is Required

A BAA is required in the following situations:

**Pivot Point Consulting as Business Associate (Upstream BAA)**:
- Before any engagement in which Pivot Point Consulting will create, receive, maintain, or transmit PHI on behalf of a Covered Entity client.
- Before accessing client systems that contain or may contain PHI.
- When providing implementation, optimization, support, or advisory services that involve ePHI or PHI-containing systems.

**Pivot Point Consulting Engaging Subcontractors (Downstream BAA)**:
- Before any subcontractor, vendor, or third party creates, receives, maintains, or transmits PHI on behalf of Pivot Point Consulting.
- This includes, but is not limited to: cloud service providers storing ePHI, IT service providers with access to PHI systems, staffing agencies providing personnel who will access PHI, and any other vendor with PHI access.

### 4.2 When a BAA is NOT Required

A BAA is generally not required for:
- Engagements where no PHI will be created, received, maintained, or transmitted.
- Services provided by conduits (e.g., postal service, certain telecommunications services) for the transmission of PHI.
- Services that do not involve the use or disclosure of PHI (e.g., janitorial services, unless the service involves potential exposure to PHI).
- When in doubt, consult the Privacy Officer or Legal Counsel.

### 4.3 Key BAA Provisions

All BAAs must contain, at a minimum, the following provisions as required by 45 CFR 164.504(e):

| Provision | Description |
|-----------|-------------|
| **Permitted Uses and Disclosures** | Specify the permitted and required uses and disclosures of PHI by the Business Associate |
| **Prohibition on Unauthorized Use/Disclosure** | Prohibit the Business Associate from using or disclosing PHI other than as permitted or required by the BAA or as required by law |
| **Safeguards** | Require the Business Associate to use appropriate safeguards and comply with the Security Rule to prevent unauthorized use or disclosure |
| **Reporting** | Require the Business Associate to report any use or disclosure not provided for by the BAA, including breaches of unsecured PHI |
| **Subcontractor Requirements** | Require the Business Associate to ensure that any subcontractors agree to the same restrictions and conditions |
| **Individual Access** | Require the Business Associate to make available PHI to individuals in accordance with the access provisions of the Privacy Rule |
| **Amendment** | Require the Business Associate to make PHI available for amendment and incorporate amendments |
| **Accounting of Disclosures** | Require the Business Associate to make available information required for an accounting of disclosures |
| **HHS Access** | Require the Business Associate to make its internal practices, books, and records available to HHS for compliance determination |
| **Return/Destruction** | Require the Business Associate to return or destroy PHI at the termination of the BAA |
| **Breach Notification** | Require the Business Associate to notify the Covered Entity of breaches of unsecured PHI |
| **Termination** | Authorize termination of the contract if the Business Associate violates a material term |

## 5. BAA Inventory and Tracking

### 5.1 BAA Registry

Pivot Point Consulting shall maintain a centralized BAA Registry that tracks all active, expired, and terminated BAAs. The registry shall be maintained by [PLACEHOLDER: responsible role/department] and shall include:

| Field | Description |
|-------|-------------|
| BAA ID | Unique identifier |
| BAA Type | Upstream (with Covered Entity) or Downstream (with subcontractor) |
| Counterparty Name | Name of the Covered Entity or subcontractor |
| Counterparty Contact | Primary contact for BAA-related matters |
| Effective Date | Date the BAA became effective |
| Expiration/Renewal Date | Date the BAA expires or is subject to renewal |
| Associated Engagement(s) | Linked consulting engagements |
| PHI Types | Types of PHI covered by the BAA |
| PHI Volume | Approximate volume of PHI (number of records or individuals) |
| Status | Active / Expired / Terminated / Pending |
| Last Review Date | Date of the most recent BAA review |
| Next Review Date | Date of the next scheduled review |
| Responsible Manager | Engagement Manager or relationship owner |
| Storage Location | Where the executed BAA is stored |
| Notes | Any relevant notes or special provisions |

### 5.2 Registry Maintenance

- The BAA Registry shall be updated within [PLACEHOLDER: number] business days of any BAA execution, amendment, termination, or status change.
- The Registry shall be reviewed for accuracy at least quarterly.
- The Privacy Officer shall have access to the complete BAA Registry at all times.

## 6. Due Diligence Requirements

### 6.1 Initial Due Diligence (Downstream BAAs)

Before entering into a BAA with a subcontractor, Pivot Point Consulting shall conduct due diligence to assess the subcontractor's ability to appropriately safeguard PHI. Due diligence shall include:

#### 6.1.1 Security Assessment

- Review of the subcontractor's security policies and procedures.
- Assessment of the subcontractor's technical security controls (encryption, access controls, audit logging, etc.).
- Review of recent security assessments, penetration test results, or certification reports (e.g., SOC 2 Type II, HITRUST certification).
- Evaluation of the subcontractor's incident response capabilities.

#### 6.1.2 Compliance Verification

- Verification that the subcontractor is aware of and capable of complying with HIPAA requirements.
- Review of any history of HIPAA violations, breaches, or HHS enforcement actions.
- Assessment of the subcontractor's privacy and security training program.
- Verification of the subcontractor's breach notification capabilities.

#### 6.1.3 Business Viability

- Assessment of the subcontractor's financial stability and business continuity capabilities.
- Review of the subcontractor's insurance coverage, including cyber liability insurance.
- Evaluation of the subcontractor's ability to support PHI return or destruction at termination.

#### 6.1.4 Due Diligence Documentation

- All due diligence activities and findings shall be documented using the Vendor Due Diligence Checklist ([PLACEHOLDER: form location]).
- Due diligence findings shall be reviewed and approved by [PLACEHOLDER: approval authority] before the BAA is executed.
- Due diligence documentation shall be retained for a minimum of six (6) years.

### 6.2 Client Due Diligence (Upstream BAAs)

When Pivot Point Consulting enters into a BAA as a Business Associate to a Covered Entity:

- Review the client's proposed BAA for compliance with HIPAA requirements and consistency with Pivot Point Consulting's capabilities and policies.
- Identify any provisions that may create unacceptable risk or require additional controls.
- Negotiate modifications to provisions that are not aligned with Pivot Point Consulting's standard practices.
- Escalate non-standard or high-risk provisions to [PLACEHOLDER: approval authority, e.g., Legal Counsel, Chief Compliance Officer].

## 7. BAA Template and Required Provisions

### 7.1 Standard BAA Template

Pivot Point Consulting maintains standard BAA templates for:

- **Upstream BAAs**: Template for use when clients propose their own BAA (used as a comparison checklist). Located at [PLACEHOLDER: template location].
- **Downstream BAAs**: Template for use with Pivot Point Consulting's subcontractors and vendors. Located at [PLACEHOLDER: template location].

### 7.2 Required Provisions Checklist

All BAAs, whether using Pivot Point Consulting's template or a client's template, must include the following provisions:

| # | Provision | Required By | Included? |
|---|-----------|-------------|-----------|
| 1 | Permitted uses and disclosures | 45 CFR 164.504(e)(2)(i) | __ |
| 2 | Prohibition on unauthorized use/disclosure | 45 CFR 164.504(e)(2)(ii)(A) | __ |
| 3 | Appropriate safeguards | 45 CFR 164.504(e)(2)(ii)(B) | __ |
| 4 | Reporting of unauthorized use/disclosure | 45 CFR 164.504(e)(2)(ii)(C) | __ |
| 5 | Subcontractor requirements | 45 CFR 164.504(e)(2)(ii)(D) | __ |
| 6 | Individual access rights | 45 CFR 164.504(e)(2)(ii)(E) | __ |
| 7 | Amendment incorporation | 45 CFR 164.504(e)(2)(ii)(F) | __ |
| 8 | Accounting of disclosures | 45 CFR 164.504(e)(2)(ii)(G) | __ |
| 9 | HHS access for compliance | 45 CFR 164.504(e)(2)(ii)(H) | __ |
| 10 | Return or destruction of PHI | 45 CFR 164.504(e)(2)(ii)(I) | __ |
| 11 | Breach notification obligations | 45 CFR 164.404-410 | __ |
| 12 | Termination provisions | 45 CFR 164.504(e)(2)(iii) | __ |
| 13 | Security Rule compliance | 45 CFR 164.314(a)(2)(i) | __ |

### 7.3 Legal Review

- All BAAs shall be reviewed by [PLACEHOLDER: Legal Counsel name/firm] before execution.
- Material deviations from the standard BAA template require approval from [PLACEHOLDER: approval authority].
- Amendments to existing BAAs shall undergo the same legal review process.

## 8. Monitoring and Compliance Verification

### 8.1 Ongoing Monitoring (Downstream BAAs)

Pivot Point Consulting shall monitor subcontractors' compliance with BAA requirements through:

- **Annual Attestations**: Require subcontractors to annually attest to their continued compliance with the BAA and HIPAA requirements.
- **Periodic Security Reviews**: Conduct or require periodic security assessments of subcontractors, with frequency based on risk level:
  - High Risk (large volume of PHI, critical systems): Annual assessment
  - Medium Risk: Biennial assessment
  - Low Risk: Assessment at least every [PLACEHOLDER: number] years
- **Incident Review**: Review subcontractor-reported incidents and assess compliance with reporting obligations.
- **Certification Review**: Monitor the status of subcontractor certifications (SOC 2, HITRUST) and request updated reports.

### 8.2 Compliance Verification Activities

| Activity | Frequency | Responsible Party |
|----------|-----------|-------------------|
| BAA Registry review | Quarterly | [PLACEHOLDER: role] |
| Subcontractor annual attestation collection | Annually | [PLACEHOLDER: role] |
| Subcontractor security assessment (High Risk) | Annually | Security Officer |
| Subcontractor security assessment (Medium Risk) | Biennially | Security Officer |
| BAA provision compliance audit | Annually | Privacy Officer |
| BAA expiration/renewal tracking | Monthly | [PLACEHOLDER: role] |

### 8.3 Non-Compliance Response

If a subcontractor is found to be non-compliant with BAA requirements:

1. Document the non-compliance finding.
2. Notify the subcontractor in writing and request a corrective action plan within [PLACEHOLDER: number] business days.
3. Evaluate the corrective action plan for adequacy.
4. Monitor implementation of corrective actions.
5. If non-compliance is material and not cured, consider termination of the BAA in accordance with Section 10.

## 9. Breach by Business Associate

### 9.1 Subcontractor Breach

If a subcontractor experiences a breach of PHI:

1. The subcontractor shall notify Pivot Point Consulting within the timeframe specified in the BAA (no later than [PLACEHOLDER: number] days of discovery).
2. Pivot Point Consulting shall conduct its own assessment of the breach and its impact.
3. If the breach involves PHI for which Pivot Point Consulting is the Business Associate to a Covered Entity, Pivot Point Consulting shall follow the Breach Notification Procedures to notify the Covered Entity.
4. Pivot Point Consulting shall coordinate with the subcontractor on remediation and mitigation efforts.
5. Pivot Point Consulting shall evaluate whether the breach constitutes a material violation of the BAA.

### 9.2 Pivot Point Consulting Breach

If Pivot Point Consulting experiences a breach of PHI covered by an upstream BAA:

1. Follow the Breach Notification Procedures policy.
2. Notify the affected Covered Entity within the timeframe specified in the BAA.
3. Cooperate with the Covered Entity's breach investigation and response.
4. Implement corrective actions to prevent recurrence.
5. Document all breach-related activities and retain documentation for a minimum of six (6) years.

## 10. Termination Procedures

### 10.1 Termination Triggers

A BAA may be terminated under the following circumstances:

- Expiration of the BAA term or the associated engagement.
- Material breach of the BAA by either party.
- Mutual agreement of the parties.
- Impossibility of curing a material breach.
- Changes in law or regulation that make the BAA impracticable.

### 10.2 Termination Process

Upon termination of a BAA:

1. **PHI Return/Destruction**: Return or destroy all PHI received from, or created on behalf of, the other party. This includes PHI held by subcontractors.
2. **Certification**: Provide written certification of PHI return or destruction within [PLACEHOLDER: number] days of BAA termination.
3. **Retention Exception**: If return or destruction is not feasible, extend the protections of the BAA to the PHI retained and limit further uses and disclosures to those purposes that make return or destruction infeasible.
4. **Registry Update**: Update the BAA Registry to reflect the termination, including the termination date, reason, and PHI disposition.
5. **Access Revocation**: Revoke all system access and credentials associated with the BAA within [PLACEHOLDER: number] business days.

### 10.3 Material Breach Process

If Pivot Point Consulting becomes aware of a material breach or violation of a BAA by a subcontractor:

1. Notify the subcontractor of the identified breach or violation.
2. Provide a reasonable opportunity to cure the breach (if feasible), typically [PLACEHOLDER: number] days.
3. If the breach is not cured, terminate the BAA and the subcontractor agreement.
4. If termination is not feasible, report the problem to the Secretary of HHS.
5. Document all steps taken.

## 11. Annual Review Process

### 11.1 Annual BAA Review

Pivot Point Consulting shall conduct an annual review of all active BAAs. The annual review shall include:

- Verification that all active BAAs are current and have not expired.
- Assessment of whether each BAA's terms remain adequate and compliant with current regulations.
- Review of any regulatory changes that may require BAA amendments.
- Verification that the associated engagements or services are still active.
- Confirmation that subcontractor due diligence is current.
- Identification of BAAs that should be terminated or renegotiated.

### 11.2 Review Timeline

- The annual BAA review shall be initiated no later than [PLACEHOLDER: month] of each year.
- The review shall be completed and documented within [PLACEHOLDER: number] weeks.
- Findings requiring corrective action shall be addressed within [PLACEHOLDER: number] days of the review completion.

### 11.3 Review Documentation

The annual review shall be documented in a BAA Annual Review Report that includes:

- Total number of active BAAs (upstream and downstream).
- BAAs reviewed and their compliance status.
- BAAs identified for amendment, renegotiation, or termination.
- Subcontractor due diligence status.
- Corrective actions identified and timelines.
- Recommendations for process improvement.

## 12. Roles and Responsibilities

| Role | Responsibilities |
|------|-----------------|
| **Privacy Officer** | Oversees the BAA management program; maintains the BAA Registry; conducts annual reviews; approves BAA provisions |
| **Legal Counsel** ([PLACEHOLDER: name/firm]) | Reviews and approves all BAAs; advises on regulatory requirements; supports BAA negotiations |
| **Security Officer** | Conducts subcontractor security assessments; evaluates technical safeguard requirements in BAAs |
| **Engagement Managers** | Identify BAA requirements for engagements; ensure BAAs are in place before PHI access; manage day-to-day BAA compliance |
| **Procurement/Contracts** ([PLACEHOLDER: department/role]) | Coordinates BAA execution; manages contract files; tracks BAA expiration and renewal dates |
| **Executive Sponsor** ([PLACEHOLDER: title]) | Approves high-risk or non-standard BAA provisions; provides executive oversight of the BAA program |

## 13. Revision History

| Version | Date | Author | Changes | Approved By |
|---------|------|--------|---------|-------------|
| 1.0 | 2026-01-30 | Pivot Point Consulting | Initial policy creation | [PLACEHOLDER: Approver Name/Title] |
| | | | | |
| | | | | |
