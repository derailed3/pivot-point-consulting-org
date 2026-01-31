---
title: "How to Conduct a HIPAA Risk Assessment"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "how-to"
tags: ["how-to", "hipaa", "risk-assessment", "compliance", "security", "nist"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
difficulty: "ADVANCED"
estimated-time: "2-6 weeks (depending on scope)"
---

# How To: Conduct a HIPAA Risk Assessment

## Overview

This guide provides a structured approach to conducting a HIPAA Security Rule risk assessment following the NIST SP 800-30 methodology.
A risk assessment is a foundational requirement of the HIPAA Security Rule (45 CFR 164.308(a)(1)(ii)(A)) and must be performed regularly to identify threats to ePHI and ensure appropriate safeguards are in place.
This guide is intended for compliance officers, security leads, and consultants delivering risk assessment engagements.

## Prerequisites

- [ ] Access to the organization's systems inventory (all systems that create, receive, maintain, or transmit ePHI)
- [ ] Current information security policies and procedures
- [ ] Previous risk assessment reports (if available)
- [ ] Organizational chart and workforce roster (to identify roles with ePHI access)
- [ ] Network architecture diagrams
- [ ] Business Associate Agreement inventory
- [ ] Familiarity with HIPAA Security Rule requirements (Administrative, Physical, and Technical Safeguards)
- [ ] Copy of NIST SP 800-30 Rev. 1 (Guide for Conducting Risk Assessments) for reference

## Steps

### Step 1: Define the Scope

1. Identify all systems, applications, and environments that create, receive, maintain, or transmit ePHI.
2. Document the boundaries of the assessment:
   - In-scope systems and locations
   - In-scope workforce members and roles
   - In-scope business associates and third parties
   - Out-of-scope items (with justification)
3. Create or update the ePHI asset inventory:

| Asset ID | System/Application | ePHI Data Types | Location | Owner | Business Associate |
|----------|-------------------|----------------|----------|-------|-------------------|
| [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

> **Note:** The scope must cover all ePHI -- not just the EHR system.
> Consider email, file shares, mobile devices, backup systems, paper records (if converted to electronic), and any system where ePHI may reside.

### Step 2: Identify Threats and Vulnerabilities

For each in-scope asset, identify potential threats and vulnerabilities.

**Threat Categories (per NIST SP 800-30):**

| Category | Examples |
|----------|---------|
| **Natural** | Flood, earthquake, fire, hurricane, pandemic |
| **Human (intentional)** | Hacking, malware, social engineering, insider threat, ransomware |
| **Human (unintentional)** | Misdirected email, lost device, configuration error, improper disposal |
| **Environmental** | Power failure, HVAC failure, water damage, hardware failure |

**Vulnerability Identification Methods:**
- Review previous audit findings and incident reports
- Conduct technical vulnerability scans (if in scope)
- Interview system administrators and key personnel
- Review configuration settings against CIS benchmarks or NIST guidelines
- Analyze access control reports and user privilege reviews

Document each threat-vulnerability pair for every asset.

### Step 3: Assess Current Safeguards

For each threat-vulnerability pair, document the safeguards currently in place.
Map safeguards to the HIPAA Security Rule implementation specifications:

| Safeguard Type | HIPAA Reference | Examples |
|---------------|-----------------|---------|
| **Administrative** | 164.308 | Risk management policy, workforce training, access authorization procedures, incident response plan |
| **Physical** | 164.310 | Facility access controls, workstation security, device disposal procedures |
| **Technical** | 164.312 | Access controls, audit logging, encryption, integrity controls, transmission security |

Assess the effectiveness of each safeguard:
- **Effective:** Safeguard adequately mitigates the risk
- **Partially effective:** Safeguard exists but has gaps
- **Ineffective:** Safeguard does not adequately address the risk
- **Missing:** No safeguard in place

### Step 4: Determine Likelihood

For each threat-vulnerability pair, estimate the likelihood of occurrence considering:
- The motivation and capability of the threat source
- The nature and severity of the vulnerability
- The effectiveness of current safeguards

| Likelihood Level | Score | Description |
|-----------------|-------|-------------|
| **Very Low** | 1 | Highly unlikely; strong safeguards in place |
| **Low** | 2 | Unlikely but possible; adequate safeguards |
| **Moderate** | 3 | Possible; safeguards have some gaps |
| **High** | 4 | Likely; significant safeguard deficiencies |
| **Very High** | 5 | Almost certain; minimal or no safeguards |

### Step 5: Determine Impact

For each threat-vulnerability pair, estimate the impact if the threat were to exploit the vulnerability.
Consider impact across multiple dimensions:

| Impact Dimension | Considerations |
|-----------------|---------------|
| **Patient harm** | Could the breach result in harm to patients? |
| **Regulatory** | Potential OCR fines, corrective action plans, breach notification requirements |
| **Financial** | Direct costs (fines, remediation, legal) and indirect costs (lost business, credit monitoring) |
| **Reputational** | Impact on organizational reputation and public trust |
| **Operational** | Disruption to clinical operations or business processes |

| Impact Level | Score | Description |
|-------------|-------|-------------|
| **Very Low** | 1 | Negligible effect on operations or individuals |
| **Low** | 2 | Minor effect; easily recoverable |
| **Moderate** | 3 | Significant effect; requires notable effort to recover |
| **High** | 4 | Major effect; long-term consequences |
| **Very High** | 5 | Catastrophic effect; may threaten organizational viability |

### Step 6: Calculate Risk Levels

Multiply the likelihood score by the impact score to produce a risk score.

| | Very Low Impact (1) | Low Impact (2) | Moderate Impact (3) | High Impact (4) | Very High Impact (5) |
|---|:---:|:---:|:---:|:---:|:---:|
| **Very High Likelihood (5)** | 5 | 10 | 15 | 20 | 25 |
| **High Likelihood (4)** | 4 | 8 | 12 | 16 | 20 |
| **Moderate Likelihood (3)** | 3 | 6 | 9 | 12 | 15 |
| **Low Likelihood (2)** | 2 | 4 | 6 | 8 | 10 |
| **Very Low Likelihood (1)** | 1 | 2 | 3 | 4 | 5 |

| Risk Level | Score Range | Required Action |
|-----------|-------------|-----------------|
| **Critical** | 20-25 | Immediate remediation required; escalate to leadership |
| **High** | 12-19 | Remediation plan required within 30 days |
| **Moderate** | 6-11 | Remediation plan required within 90 days |
| **Low** | 1-5 | Accept risk or address during next review cycle |

### Step 7: Document Findings in the Risk Register

Record all findings in a formal risk register.

| Risk ID | Asset | Threat | Vulnerability | Likelihood | Impact | Risk Score | Risk Level | Current Safeguards | Recommended Remediation |
|---------|-------|--------|--------------|------------|--------|-----------|------------|-------------------|------------------------|
| [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

Use the risk register template from `project-management/risk-registers/` or run `/new-risk-register`.

### Step 8: Develop the Remediation Plan

For each risk rated Moderate or above, develop a remediation plan:

1. **Identify the remediation action** -- What specific safeguard or control will be implemented?
2. **Assign an owner** -- Who is responsible for implementing the remediation?
3. **Set a target date** -- When must the remediation be complete? (Align with risk level urgency)
4. **Estimate resources** -- What budget, personnel, or tools are needed?
5. **Define success criteria** -- How will completion and effectiveness be verified?

Prioritize remediation based on risk level (Critical first, then High, then Moderate).

### Step 9: Track Implementation

1. Monitor remediation progress against target dates.
2. Conduct follow-up assessments on remediated items to verify effectiveness.
3. Update the risk register with current status.
4. Report progress to leadership on a [PLACEHOLDER: monthly/quarterly] basis.
5. Maintain evidence of remediation for audit purposes.

### Step 10: Plan Annual Reassessment

HIPAA requires ongoing risk management, and best practice is to conduct a full risk assessment annually.

1. Schedule the next risk assessment (typically 12 months from the current assessment).
2. Conduct interim assessments when significant changes occur:
   - New systems or applications handling ePHI
   - Organizational changes (mergers, acquisitions, new locations)
   - Security incidents or breaches
   - Changes in regulatory requirements
3. Maintain a continuous risk management process between annual assessments.

## Expected Outcome

- Comprehensive risk register documenting all identified risks to ePHI
- Risk scores calculated for each threat-vulnerability pair
- Remediation plan with owners, deadlines, and success criteria
- Executive summary suitable for leadership review
- Evidence trail suitable for OCR audit or HITRUST assessment
- Scheduled reassessment date

## Troubleshooting

| Issue | Possible Cause | Resolution |
|-------|---------------|------------|
| Incomplete asset inventory | Shadow IT or undocumented systems | Conduct network scanning; interview department heads |
| Stakeholders unwilling to participate | Perceived as audit rather than improvement | Frame as a collaborative risk reduction exercise; emphasize HIPAA mandate |
| No previous risk assessment exists | First-time assessment | Use NIST SP 800-30 as the baseline framework; expect longer timeline |
| Risk scores all rated "Low" | Assessment not thorough enough or bias toward optimism | Use independent reviewers; challenge assumptions |

## References

- NIST SP 800-30 Rev. 1: Guide for Conducting Risk Assessments
- NIST SP 800-66 Rev. 2: Implementing the HIPAA Security Rule
- HHS Guidance on Risk Analysis: https://www.hhs.gov/hipaa/for-professionals/security/guidance/guidance-risk-analysis/index.html
- HITRUST CSF Risk Management Framework

## Related Guides

- [Glossary](../reference/glossary.md)
- [Risk Register Template](../../templates/project-charter-template.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial HIPAA risk assessment guide | [Approver] |
