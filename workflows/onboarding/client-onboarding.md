---
title: "Client Onboarding Workflow"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "onboarding", "client", "engagement", "baa", "hipaa"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: Engagement Manager]"
---

# Workflow: Client Onboarding

## Purpose

The client onboarding workflow establishes a structured process for bringing new clients into the PPC engagement model.
This workflow ensures compliance requirements are met (especially BAA verification), teams are assigned, communication channels are established, and both parties are set up for a successful engagement.

> **Tip:** Use the `/onboard-client` Claude Code skill to automate portions of this workflow.

## Trigger

- **Trigger Event:** Contract or SOW signed by the client
- **Trigger Source:** Business development handoff, legal confirmation
- **Frequency:** Once per new client engagement

## Roles

| Role | Responsibility in Workflow | Person/Team |
|------|---------------------------|-------------|
| Account Lead | Overall client relationship; ensures smooth handoff from BD | [PLACEHOLDER] |
| Engagement Manager | Manages onboarding logistics and team coordination | [PLACEHOLDER] |
| Delivery Lead | Prepares team assignments and technical onboarding | [PLACEHOLDER] |
| Legal / Compliance | Verifies BAA and contractual requirements | [PLACEHOLDER] |
| IT Administrator | Provisions client-side access for PPC team members | [PLACEHOLDER] |
| Client Sponsor | Provides organizational context, approves access, and designates client contacts | [PLACEHOLDER] |

## Inputs

- Executed contract or SOW
- Client organizational information (industry segment, size, EHR platform, etc.)
- Client contact list (sponsor, PM, IT, end users)
- BAA status (executed, pending, or not required)
- Client systems and tools inventory (what the PPC team needs access to)
- Engagement scope and delivery model (staff augmentation, project-based, or advisory)

## Process Steps

### Step 1: Kickoff Scheduling

- **Owner:** Engagement Manager
- **Description:** Schedule the project kickoff meeting with the client.
Coordinate availability across all key participants (client and PPC).
Send a calendar invite with a draft agenda and pre-read materials.
Reference the [Project Kickoff Workflow](../project-lifecycle/project-kickoff.md) for the full kickoff process.
- **Tools/Systems:** [PLACEHOLDER: calendar tool], [PLACEHOLDER: communication tool]
- **SLA:** Within 5 business days of contract execution

### Step 2: Team Assignment

- **Owner:** Delivery Lead / Account Lead
- **Description:** Assign the PPC consulting team based on engagement requirements.
Consider:
  - Required skills and certifications (e.g., Epic certified, HITRUST experience)
  - Team availability and current utilization
  - Client preferences or prior relationships
  - Geographic or time zone alignment
Notify assigned team members and provide engagement context.
- **Tools/Systems:** [PLACEHOLDER: resource management tool], [PLACEHOLDER: communication tool]
- **SLA:** Within 3 business days of contract execution

### Step 3: Communication Plan

- **Owner:** Engagement Manager
- **Description:** Establish the communication plan for the engagement.
Define:
  - Primary communication channel (email, [PLACEHOLDER: communication tool], client's system)
  - Meeting cadence (daily standups, weekly status, monthly executive)
  - Status report format and frequency (reference status report template)
  - Escalation path (PPC side and client side)
  - After-hours contact protocol (if applicable)
Document in the project charter or engagement file.
- **Tools/Systems:** Meeting notes template, project charter
- **SLA:** Defined before kickoff meeting

### Step 4: RACI Matrix

- **Owner:** Engagement Manager / Delivery Lead
- **Description:** Develop the RACI matrix for the engagement.
Cover key activities:
  - Deliverable creation and approval
  - Status reporting
  - Change request management
  - Issue escalation
  - Go-live decisions (if applicable)
Review the RACI with the client during the kickoff meeting.

| Activity | PPC Delivery Lead | PPC Consultant | Client PM | Client Sponsor |
|----------|:-----------------:|:--------------:|:---------:|:--------------:|
| Deliverable creation | A | R | C | I |
| Deliverable review/approval | C | I | R | A |
| Status reporting | R/A | C | I | I |
| Change requests | C | I | R | A |
| Issue escalation | R | I | C | A |

- **Tools/Systems:** Project charter, meeting notes
- **SLA:** Draft before kickoff; finalized within 1 week of kickoff

### Step 5: Tool Access (Client Systems)

- **Owner:** IT Administrator / Delivery Lead
- **Description:** Request and provision access to all required client systems for PPC team members.
Common access requirements include:
  - Client VPN or remote desktop
  - EHR environment (Epic, Oracle Health, etc.) -- training environments first
  - Client project management tool
  - Client email or collaboration platform (if required)
  - Client document repository
Track all access requests with status and expected completion date.
**Important:** Do not access any system containing ePHI until BAA verification (Step 6) is confirmed.
- **Tools/Systems:** Client IT request process, access tracking spreadsheet
- **SLA:** Access provisioned within 5 business days of request

### Step 6: BAA Verification

- **Owner:** Legal / Compliance
- **Description:** Verify that a Business Associate Agreement is fully executed between PPC and the client before any team member accesses ePHI.
Check:
  - BAA is signed by both parties
  - BAA covers the scope of the current engagement
  - BAA is on file with Legal
  - All subcontractor BAAs are in place (if applicable)
If no BAA exists, escalate immediately to Legal for execution.
- **Tools/Systems:** Legal document repository, compliance tracking
- **SLA:** Verified before any ePHI access (hard requirement)

### Step 7: Status Report Cadence

- **Owner:** Engagement Manager / Delivery Lead
- **Description:** Establish the status report cadence and format.
Standard cadence:
  - **Weekly:** Operational status report to client PM and sponsor
  - **Monthly:** Executive summary to client leadership (if applicable)
  - **Ad hoc:** Issue or escalation reports as needed
Use the status report template from `templates/` or run `/new-status-report`.
- **Tools/Systems:** Knowledge base, [PLACEHOLDER: project management tool]
- **SLA:** First status report within 1 week of engagement start

### Step 8: Initial Knowledge Transfer

- **Owner:** Account Lead / Delivery Lead
- **Description:** Conduct knowledge transfer from the sales/BD team to the delivery team.
Cover:
  - Client background and organizational culture
  - Key stakeholder personalities and preferences
  - Historical context (previous engagements, known pain points)
  - Competitive landscape (incumbent vendors, other consultancies involved)
  - Specific commitments made during the sales process
Document key insights in the client directory within the knowledge base.
- **Tools/Systems:** Knowledge base (`clients/` directory), [PLACEHOLDER: CRM]
- **SLA:** Before or during the first week of the engagement

## Outputs

- Scheduled kickoff meeting
- Assigned and notified PPC team
- Documented communication plan
- RACI matrix (reviewed with client)
- Client system access provisioned for all team members
- BAA verified and on file
- Status report cadence established
- Knowledge transfer documentation in the knowledge base

## Definition of Done

- [ ] Kickoff meeting is scheduled and agenda distributed
- [ ] PPC team is assigned and aware of engagement context
- [ ] Communication plan is documented and agreed upon
- [ ] RACI matrix is reviewed with the client
- [ ] All team members have required client system access
- [ ] BAA is verified and on file (before any ePHI access)
- [ ] Status report cadence is established and first report is scheduled
- [ ] Sales-to-delivery knowledge transfer is complete

## Exceptions

| Exception | Handling Procedure | Escalation |
|-----------|-------------------|------------|
| BAA not executed at contract signing | Block all ePHI access; escalate to Legal for immediate execution | Compliance Officer / Legal |
| Client delays access provisioning | Begin non-ePHI work; follow up daily with client IT | Engagement Manager to Client Sponsor |
| Team assignment conflict (resources unavailable) | Identify alternate resources; communicate timeline impact to client | Account Lead / Practice Lead |
| Client uses tools PPC team is unfamiliar with | Schedule tool training; allocate ramp-up time in project plan | Delivery Lead |

## Metrics

| Metric | Target | Measurement Method | Frequency |
|--------|--------|--------------------|-----------|
| Time from contract to kickoff | 5 business days or less | Date tracking | Per engagement |
| BAA verification before ePHI access | 100% compliance | Compliance log | Per engagement |
| Team access provisioned | Within 5 business days of request | Access request tracker | Per engagement |
| Client onboarding satisfaction | 4/5 or higher | Post-kickoff feedback | Per engagement |

## Related Documents

- [Project Kickoff Workflow](../project-lifecycle/project-kickoff.md)
- [Project Closeout Workflow](../project-lifecycle/project-closeout.md)
- [New Hire Onboarding Workflow](new-hire-onboarding.md)
- [SOW Template](../../templates/sow-template.md)
- [Status Report Template](../../templates/meeting-notes-template.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial client onboarding workflow | [Approver] |
