---
title: "HIPAA Breach Notification Procedures"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "policy"
tags: ["policy", "hipaa", "breach", "notification", "compliance", "healthcare", "incident-response"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
controls:
  hitrust: ["02.e", "11.a", "11.c"]
  soc2: ["CC7.3", "CC7.4"]
retention-until: "2032-01-30"
---

# HIPAA Breach Notification Procedures

## 1. Purpose

The purpose of this policy is to establish Pivot Point Consulting's procedures for identifying, assessing, and responding to breaches of unsecured Protected Health Information (PHI) in compliance with the HIPAA Breach Notification Rule (45 CFR Part 164, Subpart D). As a Business Associate to Covered Entity clients, Pivot Point Consulting has specific obligations to detect breaches, assess their severity, notify affected Covered Entities, and support the breach notification process.

This policy ensures timely and compliant breach response to protect affected individuals, meet regulatory obligations, and maintain trust with Covered Entity clients.

## 2. Scope

This policy applies to:

- All suspected or confirmed breaches of unsecured PHI held by Pivot Point Consulting, whether in electronic, paper, or oral form.
- All workforce members, including employees, contractors, consultants, interns, and temporary staff.
- All consulting engagements where Pivot Point Consulting creates, receives, maintains, or transmits PHI.
- All subcontractors and third parties with access to PHI through Pivot Point Consulting.
- All systems, media, and environments used to store, process, or transmit PHI.

## 3. Definitions

### 3.1 Breach

The acquisition, access, use, or disclosure of PHI in a manner not permitted under the HIPAA Privacy Rule which compromises the security or privacy of the PHI. A breach is presumed to have occurred unless the organization demonstrates through a risk assessment that there is a low probability that the PHI has been compromised.

### 3.2 Unsecured PHI

PHI that is not rendered unusable, unreadable, or indecipherable to unauthorized persons through the use of a technology or methodology specified by the Secretary of HHS. Specifically, PHI that has not been encrypted using approved standards or destroyed in accordance with NIST guidelines.

### 3.3 Secured PHI

PHI that has been rendered unusable, unreadable, or indecipherable to unauthorized persons through:

- **Encryption**: ePHI encrypted consistent with NIST SP 800-111 (data at rest) or NIST SP 800-52 / 800-77 / 800-113 (data in transit) using valid, unexpired encryption processes.
- **Destruction**: Paper PHI shredded or destroyed such that PHI cannot be read or otherwise reconstructed. Electronic media cleared, purged, or destroyed consistent with NIST SP 800-88.

### 3.4 Discovery of a Breach

A breach is considered "discovered" as of the first day on which the breach is known to Pivot Point Consulting, or by exercising reasonable diligence would have been known. Knowledge is imputed to Pivot Point Consulting if a workforce member or agent knew or should have known of the breach, even if the workforce member or agent did not report it.

### 3.5 Compromise

The security or privacy of PHI is considered compromised when the four-factor risk assessment (Section 4) indicates more than a low probability that the PHI has been compromised.

## 4. Breach Assessment

### 4.1 Initial Incident Triage

Upon discovery of a suspected breach, the following immediate actions shall be taken:

1. **Report**: The workforce member discovering the incident shall report it immediately to the Security Officer or Privacy Officer via [PLACEHOLDER: reporting mechanism, e.g., email, phone hotline, incident management system].
2. **Contain**: Take immediate steps to mitigate harm and contain the incident without destroying evidence.
3. **Preserve**: Preserve all evidence related to the incident, including logs, communications, and affected media.
4. **Document**: Begin documenting the incident using the Breach Incident Report form ([PLACEHOLDER: form location/reference]).

### 4.2 Four-Factor Risk Assessment

For each potential breach, Pivot Point Consulting shall conduct a risk assessment considering at least the following four factors to determine if there is a low probability that the PHI has been compromised:

#### Factor 1: Nature and Extent of PHI Involved

- What types of PHI were involved (e.g., clinical information, financial information, Social Security numbers)?
- What identifiers were included?
- How many individuals were affected?
- What is the sensitivity of the PHI involved?
- Does the PHI include information that increases the risk of identity theft or financial fraud?

#### Factor 2: The Unauthorized Person Who Used the PHI or to Whom the Disclosure Was Made

- Who was the unauthorized recipient?
- Did the unauthorized person have obligations to protect the PHI (e.g., another covered entity or business associate)?
- Is the unauthorized person known or unknown?
- Does the unauthorized person have the ability to re-identify de-identified information?

#### Factor 3: Whether the PHI Was Actually Acquired or Viewed

- Was the PHI actually acquired or viewed by the unauthorized person?
- Was the PHI only briefly accessible, or was it downloaded or copied?
- Is there evidence that the PHI was accessed (e.g., audit logs, forensic evidence)?
- Was the disclosure limited to an unintended recipient who returned or destroyed the information?

#### Factor 4: The Extent to Which the Risk to the PHI Has Been Mitigated

- What mitigation steps have been taken?
- Were assurances obtained from the unauthorized recipient that the PHI was not further used or disclosed?
- Was the PHI returned or destroyed?
- Was the unauthorized access limited to a person with existing access to some PHI (e.g., an employee who accessed a record outside their scope)?

### 4.3 Risk Assessment Scoring

| Risk Level | Probability of Compromise | Action Required |
|------------|--------------------------|-----------------|
| Low | Low probability of compromise based on all four factors | Document assessment; no breach notification required |
| Medium | Some indicators of compromise | Escalate to Privacy Officer and legal counsel for determination |
| High | High probability of compromise | Treat as confirmed breach; initiate notification procedures |

### 4.4 Assessment Timeline

- The initial risk assessment shall be completed within [PLACEHOLDER: number] hours of incident discovery.
- If additional investigation is required, a preliminary assessment shall be documented within [PLACEHOLDER: number] business days, with the final assessment completed within [PLACEHOLDER: number] business days.

### 4.5 Exceptions to Breach Definition

The following are not considered breaches under the HIPAA Breach Notification Rule:

1. **Unintentional Acquisition**: Unintentional acquisition, access, or use of PHI by a workforce member or authorized person, made in good faith and within the scope of authority, provided the information is not further used or disclosed in an impermissible manner.
2. **Inadvertent Disclosure**: Inadvertent disclosure of PHI by an authorized person to another authorized person at the same Covered Entity, Business Associate, or organized healthcare arrangement, provided the information is not further used or disclosed in an impermissible manner.
3. **Good Faith Belief**: A disclosure where the Covered Entity or Business Associate has a good faith belief that the unauthorized person to whom the disclosure was made would not reasonably have been able to retain the information.

## 5. Notification Requirements

### 5.1 Business Associate Notification to Covered Entity

As a Business Associate, Pivot Point Consulting shall:

- Notify the affected Covered Entity client without unreasonable delay and in no case later than **60 calendar days** from the date of discovery of the breach.
- **Best Practice Target**: Pivot Point Consulting shall endeavor to notify Covered Entity clients within [PLACEHOLDER: number, e.g., 10, 15] business days of breach discovery.
- Provide the Covered Entity with sufficient information to enable the Covered Entity to fulfill its notification obligations.

### 5.2 Information to Provide to Covered Entity

Notification to the Covered Entity shall include, to the extent possible:

- Identification of each individual whose unsecured PHI has been, or is reasonably believed to have been, breached.
- A description of what happened, including the date of the breach and the date of discovery.
- A description of the types of unsecured PHI involved (e.g., full name, Social Security number, date of birth, diagnosis, treatment information).
- Steps the individual should take to protect themselves from potential harm.
- A description of what Pivot Point Consulting is doing to investigate the breach, mitigate harm, and protect against further breaches.

### 5.3 Individual Notification (Covered Entity Responsibility, Supported by Pivot Point Consulting)

The Covered Entity is responsible for individual notification. Pivot Point Consulting shall support this process by:

- Providing all necessary information for individual notifications within the agreed-upon timeline.
- Assisting with notification logistics when requested by the Covered Entity.
- Reviewing notification content for accuracy when requested.

Individual notification requirements (for reference):

- Written notification sent by first-class mail or email (if the individual has agreed to electronic notice) within 60 days of discovery.
- If contact information is insufficient for 10 or more individuals, substitute notice via conspicuous posting on the Covered Entity's website for 90 days or notice in major media.
- Urgent notification by telephone if there is imminent misuse of PHI.

### 5.4 HHS Notification (Covered Entity Responsibility)

- **500 or more individuals affected**: The Covered Entity must notify HHS without unreasonable delay and no later than 60 days from discovery.
- **Fewer than 500 individuals affected**: The Covered Entity must notify HHS within 60 days of the end of the calendar year in which the breach was discovered.

Pivot Point Consulting shall provide all information necessary to support HHS notification.

### 5.5 Media Notification (Covered Entity Responsibility)

- If a breach affects 500 or more residents of a state or jurisdiction, the Covered Entity must notify prominent media outlets serving that state or jurisdiction within 60 days of discovery.
- Pivot Point Consulting shall coordinate with the Covered Entity's communications team when media notification is required.

## 6. Notification Content

All breach notifications (whether to the Covered Entity, individuals, HHS, or media) shall include the following elements:

1. **Description of the breach**: A brief description of what happened, including the date of the breach and the date of discovery.
2. **Types of information involved**: A description of the types of unsecured PHI that were involved in the breach (such as full name, Social Security number, date of birth, home address, account number, diagnosis, disability code, or other types of information).
3. **Steps for individuals**: Any steps individuals should take to protect themselves from potential harm resulting from the breach.
4. **Investigation and mitigation description**: A brief description of what the organization is doing to investigate the breach, to mitigate harm to individuals, and to protect against any further breaches.
5. **Contact procedures**: Contact procedures for individuals to ask questions or learn additional information, including a toll-free telephone number, email address, website, or postal address.

## 7. Business Associate Obligations

### 7.1 Subcontractor Breaches

- Pivot Point Consulting shall require subcontractors to notify Pivot Point Consulting of breaches of unsecured PHI without unreasonable delay and no later than [PLACEHOLDER: number] days of discovery.
- Subcontractor BAAs shall include specific breach notification obligations consistent with this policy.
- Pivot Point Consulting shall include breach notification requirements in all subcontractor agreements involving PHI.

### 7.2 Cooperation with Covered Entity

- Pivot Point Consulting shall cooperate fully with Covered Entity clients in breach investigation and response.
- Provide requested information and documentation promptly.
- Participate in joint incident review calls and meetings.
- Support the Covered Entity's remediation and notification efforts.

### 7.3 Indemnification

- Breach-related indemnification obligations shall be as specified in the applicable BAA and services agreement.
- Pivot Point Consulting shall maintain appropriate [PLACEHOLDER: insurance type, e.g., cyber liability, professional liability] insurance coverage for breach-related costs.

## 8. Documentation Requirements

### 8.1 Breach Investigation Documentation

All breach investigations shall be documented, including:

- Date and time of incident discovery.
- Date and time of incident occurrence (if different from discovery).
- Identity of the person who discovered the breach.
- Description of the incident.
- Types of PHI involved.
- Number of individuals affected.
- Four-factor risk assessment analysis and determination.
- Containment and mitigation actions taken.
- Notifications provided (to whom, when, and what was communicated).
- Remediation actions taken to prevent recurrence.
- Lessons learned.

### 8.2 Retention

- All breach-related documentation shall be retained for a minimum of six (6) years from the date of the breach or the date of completion of the investigation, whichever is later.
- Documentation shall be stored securely and accessible to authorized personnel only.

## 9. Breach Log

### 9.1 Maintenance

Pivot Point Consulting shall maintain a comprehensive breach log that records all suspected and confirmed breaches. The breach log shall be maintained by the Privacy Officer and shall include:

| Field | Description |
|-------|-------------|
| Incident ID | Unique identifier for the incident |
| Date Discovered | Date the incident was discovered |
| Date Occurred | Date the incident occurred |
| Date Reported to Covered Entity | Date the Covered Entity was notified |
| Description | Brief description of the incident |
| PHI Types | Types of PHI involved |
| Individuals Affected | Number of individuals affected |
| Risk Assessment Result | Low / Medium / High probability of compromise |
| Breach Determination | Breach / Not a Breach |
| Notifications Sent | To whom and when |
| Remediation Actions | Actions taken to prevent recurrence |
| Status | Open / Closed |
| Closed Date | Date the incident was closed |

### 9.2 Reporting

- The breach log shall be reviewed by the Privacy Officer at least [PLACEHOLDER: frequency, e.g., monthly].
- A summary of breach activity shall be reported to [PLACEHOLDER: executive title/committee] at least quarterly.
- Annual breach statistics shall be included in the organization's compliance report.

## 10. Roles and Responsibilities

### 10.1 Breach Response Team

The Breach Response Team is activated when a suspected or confirmed breach is identified. The team consists of:

| Role | Responsibility |
|------|---------------|
| **Privacy Officer** ([PLACEHOLDER: Name]) | Leads the breach response; conducts the risk assessment; coordinates notifications; manages the breach log |
| **Security Officer** ([PLACEHOLDER: Name]) | Leads technical investigation; manages containment and forensics; provides technical analysis for the risk assessment |
| **Legal Counsel** ([PLACEHOLDER: Name/Firm]) | Provides legal guidance on breach determination, notification requirements, and regulatory obligations |
| **Engagement Manager** (Applicable to breach) | Serves as the primary liaison with the affected Covered Entity client |
| **Communications Lead** ([PLACEHOLDER: Name]) | Manages internal and external communications; supports media notification if required |
| **HR Representative** ([PLACEHOLDER: Name]) | Manages workforce-related aspects, including sanctions for involved workforce members |
| **Executive Sponsor** ([PLACEHOLDER: Name/Title]) | Provides executive oversight and decision-making authority; approves breach determination and notification |

### 10.2 All Workforce Members

All workforce members are responsible for:

- Immediately reporting suspected breaches or security incidents.
- Cooperating fully with breach investigations.
- Preserving evidence and not destroying any information related to a suspected breach.
- Maintaining confidentiality about breach investigations.

### 10.3 Escalation Path

1. **Workforce Member** discovers potential breach and reports to **Security Officer or Privacy Officer** within 1 hour.
2. **Security Officer / Privacy Officer** initiates triage and assembles the Breach Response Team within [PLACEHOLDER: number] hours.
3. **Breach Response Team** conducts the four-factor risk assessment within [PLACEHOLDER: number] hours.
4. **Executive Sponsor** approves breach determination and notification approach.
5. **Privacy Officer** coordinates notification to Covered Entity within the required timeframe.
6. **Engagement Manager** manages ongoing communication with the Covered Entity.

## 11. Revision History

| Version | Date | Author | Changes | Approved By |
|---------|------|--------|---------|-------------|
| 1.0 | 2026-01-30 | Pivot Point Consulting | Initial policy creation | [PLACEHOLDER: Approver Name/Title] |
| | | | | |
| | | | | |
