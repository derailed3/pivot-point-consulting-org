---
title: "PHI Handling and Data Classification Policy"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "policy"
tags: ["policy", "phi", "data-classification", "data-governance", "hipaa", "compliance", "healthcare"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
controls:
  hitrust: ["07.a", "07.b", "09.aa"]
  soc2: ["CC6.1", "CC6.5"]
retention-until: "2032-01-30"
---

# PHI Handling and Data Classification Policy

## 1. Purpose

The purpose of this policy is to establish a comprehensive framework for the classification, handling, and protection of data at Pivot Point Consulting, with particular emphasis on Protected Health Information (PHI) and electronic Protected Health Information (ePHI). As a healthcare IT consulting firm that routinely handles sensitive client data, Pivot Point Consulting must ensure that all data is classified, handled, stored, transmitted, and disposed of in accordance with its sensitivity level and applicable regulatory requirements.

This policy ensures that workforce members understand how to identify, classify, and properly handle data at every stage of the information lifecycle, from creation through destruction.

## 2. Scope

This policy applies to:

- All data created, received, maintained, processed, or transmitted by Pivot Point Consulting, regardless of format (electronic, paper, oral).
- All workforce members, including employees, contractors, consultants, interns, and temporary staff.
- All consulting engagements and internal operations.
- All systems, applications, devices, and media used to create, store, process, or transmit data.
- All physical and virtual environments, including offices, remote workspaces, cloud environments, and client sites.

## 3. Data Classification Levels

Pivot Point Consulting classifies all data into four levels based on sensitivity and regulatory requirements. Data shall be classified at the highest applicable level.

### 3.1 Level 1: Public

**Description**: Information that is intended for public consumption or whose disclosure would cause no harm to Pivot Point Consulting, its clients, or any individuals.

**Examples**:
- Published marketing materials
- Public-facing website content
- Press releases
- General industry information and publicly available research
- Job postings

### 3.2 Level 2: Internal

**Description**: Information intended for use within Pivot Point Consulting that is not meant for public distribution. Unauthorized disclosure could cause minor inconvenience or harm.

**Examples**:
- Internal policies and procedures (non-sensitive)
- Internal communications and meeting notes (non-sensitive)
- Employee directories
- Organizational charts
- General project schedules (without client PHI)
- Training materials

### 3.3 Level 3: Confidential

**Description**: Sensitive business information whose unauthorized disclosure could cause significant harm to Pivot Point Consulting, its clients, or its workforce members. This includes proprietary business information, client non-PHI data, and personally identifiable information (PII) of workforce members.

**Examples**:
- Client contracts and statements of work
- Financial records and projections
- Strategic business plans
- Proprietary methodologies and frameworks
- Employee personal information (SSN, compensation, benefits)
- Client system architecture and configurations (non-PHI)
- Security assessment results
- Audit reports
- Intellectual property and trade secrets

### 3.4 Level 4: PHI/Restricted

**Description**: Protected Health Information (PHI) and other data subject to the most stringent regulatory requirements. Unauthorized disclosure could cause severe harm to individuals, result in significant regulatory penalties, and damage organizational reputation.

**Examples**:
- Any data containing one or more of the 18 HIPAA identifiers linked to health information
- Electronic Protected Health Information (ePHI)
- Paper records containing PHI
- Oral communications containing PHI
- Client system data containing patient records
- Test data derived from real patient records
- De-identification datasets prior to completion of de-identification
- Psychotherapy notes
- Substance abuse treatment records (42 CFR Part 2)
- HIV/AIDS-related information (subject to additional state protections)

## 4. PHI Identification

### 4.1 The 18 HIPAA Identifiers

The following 18 types of information are considered identifiers under HIPAA. When any of these identifiers are linked to health information, the data is classified as PHI:

| # | Identifier | Description |
|---|-----------|-------------|
| 1 | Names | Full name or last name and initial(s) |
| 2 | Geographic data | All geographic subdivisions smaller than a state, including street address, city, county, precinct, ZIP code (3-digit ZIP codes with population < 20,000 are identifiers) |
| 3 | Dates | All elements of dates (except year) directly related to an individual, including birth date, admission date, discharge date, date of death, and all ages over 89 |
| 4 | Phone numbers | All telephone numbers |
| 5 | Fax numbers | All fax numbers |
| 6 | Email addresses | All email addresses |
| 7 | Social Security numbers | Full or partial SSN |
| 8 | Medical record numbers | Any medical record number |
| 9 | Health plan beneficiary numbers | Health plan ID numbers |
| 10 | Account numbers | Any account numbers |
| 11 | Certificate/license numbers | Any certificate or license numbers |
| 12 | Vehicle identifiers | Vehicle identifiers and serial numbers, including license plate numbers |
| 13 | Device identifiers | Device identifiers and serial numbers |
| 14 | Web URLs | Web Universal Resource Locators |
| 15 | IP addresses | Internet Protocol address numbers |
| 16 | Biometric identifiers | Including finger and voice prints |
| 17 | Full-face photographs | Full-face photographs and any comparable images |
| 18 | Any other unique identifying number | Any other unique identifying number, characteristic, or code |

### 4.2 PHI Determination Process

When there is uncertainty about whether data constitutes PHI, the following process shall be followed:

1. **Identify**: Determine whether the data contains any of the 18 HIPAA identifiers.
2. **Assess**: Determine whether the identified information is linked to health information (past, present, or future health conditions, healthcare provision, or payment for healthcare).
3. **Classify**: If both conditions are met, classify the data as PHI/Restricted (Level 4).
4. **Consult**: If uncertainty remains, consult with the Privacy Officer before handling the data.
5. **Default**: When in doubt, treat the data as PHI/Restricted until a determination is made.

## 5. Handling Requirements by Classification Level

### 5.1 Summary Table

| Requirement | Public | Internal | Confidential | PHI/Restricted |
|-------------|--------|----------|--------------|----------------|
| **Creation** | No restrictions | Standard business systems | Approved systems only | Approved, compliant systems only; BAA required |
| **Labeling** | None required | "Internal Use Only" recommended | "Confidential" required | "PHI - Restricted" required |
| **Storage** | No restrictions | Company-approved systems | Encrypted storage; access-controlled | AES-256 encrypted; access-controlled; audit-logged |
| **Access Control** | None | Role-based | Need-to-know + role-based | Minimum necessary + engagement-specific + MFA |
| **Transmission - Internal** | No restrictions | Company email/messaging | Encrypted channels | Encrypted channels; no external AI tools |
| **Transmission - External** | No restrictions | Standard business channels | Encrypted; approved channels only | Encrypted (TLS 1.2+); approved channels only; BAA required |
| **Printing** | No restrictions | Secure print recommended | Secure print required | Secure print required; attended retrieval; shred after use |
| **Remote Access** | No restrictions | VPN recommended | VPN required | VPN required; MFA required; no public WiFi |
| **Mobile Devices** | No restrictions | Device passcode | Encrypted device; MDM required | Encrypted device; MDM required; no personal devices without approval |
| **Disposal** | Recycle | Shred paper; standard delete electronic | Shred paper; secure delete electronic | Shred paper; NIST 800-88 compliant electronic destruction |
| **Incident Reporting** | Not required | Recommended | Required within 24 hours | Required immediately (within 1 hour) |
| **Retention** | Per business need | [PLACEHOLDER: period] | [PLACEHOLDER: period] or per contract | Per BAA and regulatory requirements (minimum 6 years) |

### 5.2 Detailed PHI/Restricted Handling Requirements

#### 5.2.1 Creation

- PHI shall only be created, collected, or received on systems and in environments that have been approved for PHI handling.
- A valid BAA must be in place with the applicable Covered Entity client before any PHI is received.
- PHI shall not be created in personal accounts, unapproved cloud services, or unsecured environments.

#### 5.2.2 Storage

- ePHI shall be stored only on approved, encrypted systems and storage platforms.
- Approved storage platforms: [PLACEHOLDER: list of approved platforms, e.g., approved cloud environments, network shares].
- ePHI shall not be stored on local workstation drives unless encrypted and specifically approved.
- Paper PHI shall be stored in locked cabinets or rooms with access limited to authorized personnel.
- ePHI backups shall be encrypted and stored in accordance with the contingency plan.

#### 5.2.3 Transmission

- ePHI shall be transmitted only via encrypted channels using TLS 1.2 or higher.
- Email containing PHI shall use [PLACEHOLDER: approved email encryption solution].
- ePHI shall not be transmitted via SMS, personal messaging applications, or social media.
- File transfers containing ePHI shall use [PLACEHOLDER: approved secure file transfer solution].
- Faxing of PHI is permitted only to verified numbers using a cover sheet indicating the confidential nature of the contents.

#### 5.2.4 Disposal

- Paper PHI shall be disposed of using cross-cut shredders (minimum DIN 66399 Level P-4) or approved shredding services.
- Electronic media containing ePHI shall be sanitized using methods compliant with NIST SP 800-88 Rev. 1.
- Disposal of PHI shall be documented, including the date, method, responsible party, and description of materials destroyed.
- [PLACEHOLDER: approved destruction vendor] shall be used for bulk destruction of PHI media.

## 6. Minimum Necessary Standard Implementation

### 6.1 Principles

Pivot Point Consulting implements the minimum necessary standard to limit the use, disclosure, and request of PHI to the minimum amount reasonably necessary to accomplish the intended purpose.

### 6.2 Implementation by Role

| Role | Minimum Necessary Implementation |
|------|--------------------------------|
| Consultants on client engagements | Access limited to PHI datasets and systems required by the specific engagement scope |
| Project/Engagement Managers | Access to engagement-level summaries; full PHI access only when operationally necessary |
| Quality Assurance | Access to anonymized or de-identified data when possible; PHI access for validation only with approval |
| Executive Leadership | Access to aggregate reports and metrics; individual PHI access only in exceptional circumstances with approval |
| IT Operations | Technical access to systems containing PHI for administration; prohibited from viewing PHI content unless troubleshooting requires it |

### 6.3 Access Reviews

- Access to PHI shall be reviewed at least [PLACEHOLDER: frequency, e.g., quarterly] and upon any change in engagement or role assignment.
- Access shall be revoked immediately when no longer needed for the engagement or role.
- Access reviews shall be documented and retained for a minimum of six (6) years.

## 7. De-Identification Standards

### 7.1 Safe Harbor Method

Under the Safe Harbor method (45 CFR 164.514(b)), data is considered de-identified when the following 18 identifiers have been removed and the organization has no actual knowledge that the remaining information could be used to identify an individual:

- All 18 HIPAA identifiers listed in Section 4.1 above.
- Dates shall be generalized to year only.
- ZIP codes shall be truncated to the first three digits (or removed if the three-digit ZIP code has a population of fewer than 20,000).
- Ages shall be aggregated for individuals over 89 years old.

### 7.2 Expert Determination Method

Under the Expert Determination method (45 CFR 164.514(a)):

- A qualified statistical or scientific expert must determine that the risk of identifying any individual from the data is very small.
- The expert must document the methods and results of the analysis.
- Pivot Point Consulting shall maintain records of the expert's qualifications, methodology, and determination.
- The expert must be independent and have appropriate credentials ([PLACEHOLDER: specific credential requirements]).

### 7.3 Limited Data Sets

When full de-identification is not feasible, Pivot Point Consulting may use limited data sets under a Data Use Agreement (DUA) that:

- Removes direct identifiers (names, addresses, SSN, etc.).
- May retain dates, city, state, ZIP code, and ages (including over 89).
- Is subject to a signed DUA specifying permitted uses and disclosures.

## 8. PHI in Consulting Engagements

### 8.1 Pre-Engagement Requirements

Before any PHI is accessed during a consulting engagement:

1. **BAA Verification**: Confirm that a valid BAA is in place with the Covered Entity client.
2. **Scope Definition**: Clearly define the PHI that will be accessed and the permitted uses and disclosures.
3. **Access Provisioning**: Provision engagement-specific access based on the minimum necessary standard.
4. **Training Verification**: Confirm that all assigned workforce members have completed required HIPAA training.
5. **Environment Readiness**: Verify that the technical environment meets PHI handling requirements.

### 8.2 During Engagement

- Workforce members shall access only the PHI necessary for their assigned tasks.
- PHI shall not be copied to unapproved systems or locations.
- Use de-identified or synthetic data whenever possible for testing, development, and training purposes.
- Report any PHI-related incidents immediately to the Engagement Manager and Privacy Officer.
- Document all PHI access and handling activities as required by the engagement's security plan.

### 8.3 Post-Engagement

Upon completion of a consulting engagement:

1. **Data Return/Destruction**: Return or securely destroy all PHI in accordance with the BAA and client instructions within [PLACEHOLDER: number] days of engagement completion.
2. **Access Revocation**: Revoke all engagement-specific PHI access within [PLACEHOLDER: number] business days.
3. **Certification**: Provide the client with written certification of PHI return or destruction, if required by the BAA.
4. **Retention Exception**: Retain PHI only if required by the BAA, applicable law, or for audit purposes, and only for the minimum period required.

### 8.4 Rules for Consultants

All consultants working on engagements involving PHI shall:

- Never discuss PHI in public areas or where conversations may be overheard.
- Never leave paper PHI unattended, including on desks, printers, or in vehicles.
- Never use personal devices to access PHI unless specifically approved under the [PLACEHOLDER: BYOD policy].
- Never send PHI via personal email accounts or unapproved messaging platforms.
- Never store PHI on removable media (USB drives, external hard drives) without encryption and approval.
- Never share PHI access credentials with others.
- Never take screenshots or photographs of PHI unless specifically required and approved.
- Always verify recipient identity and authorization before disclosing PHI.
- Always use encrypted channels for PHI transmission.
- Always lock workstations and secure paper PHI when stepping away.

## 9. Incident Reporting

### 9.1 Reporting Obligations

All workforce members are required to report suspected or confirmed data classification or handling violations immediately. Reportable incidents include:

- Unauthorized access to PHI or Confidential data.
- PHI sent to an unintended recipient.
- Loss or theft of a device containing PHI.
- PHI found in an unsecured location.
- PHI stored on an unapproved system or service.
- Failure to encrypt PHI during transmission or storage.
- Discovery of PHI in a lower classification environment.
- Any suspected breach of PHI.

### 9.2 Reporting Process

1. Report immediately to the Privacy Officer or Security Officer via [PLACEHOLDER: reporting mechanism].
2. Do not attempt to investigate independently or notify external parties.
3. Preserve all evidence related to the incident.
4. Cooperate fully with the investigation.
5. Follow the Breach Notification Procedures if a breach is determined.

### 9.3 Non-Retaliation

Pivot Point Consulting prohibits retaliation against any workforce member who reports a data handling incident in good faith. Reports may be made anonymously through [PLACEHOLDER: anonymous reporting mechanism].

## 10. Roles and Responsibilities

| Role | Responsibilities |
|------|-----------------|
| **Privacy Officer** | Oversees data classification framework; approves PHI handling procedures; manages PHI incidents; conducts classification reviews |
| **Security Officer** | Implements technical controls for data protection; manages encryption and access control systems; monitors for data handling violations |
| **Data Governance Committee** ([PLACEHOLDER: members]) | Approves data classification policies; reviews classification disputes; oversees de-identification standards |
| **Engagement Managers** | Ensure PHI handling compliance within engagements; verify pre-engagement requirements; manage post-engagement data return/destruction |
| **Workforce Members** | Classify data appropriately; handle data per classification requirements; report incidents; complete training |
| **IT Operations** | Maintain approved systems and platforms; implement data-at-rest and data-in-transit encryption; manage data disposal processes |
| **Human Resources** | Ensure workforce members acknowledge data handling policies; apply sanctions for violations; manage training records |

## 11. Revision History

| Version | Date | Author | Changes | Approved By |
|---------|------|--------|---------|-------------|
| 1.0 | 2026-01-30 | Pivot Point Consulting | Initial policy creation | [PLACEHOLDER: Approver Name/Title] |
| | | | | |
| | | | | |
