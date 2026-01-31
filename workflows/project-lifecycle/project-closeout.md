---
title: "Project Closeout Workflow"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "project-lifecycle", "closeout", "engagement", "knowledge-transfer"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: Engagement Manager]"
---

# Workflow: Project Closeout

## Purpose

The project closeout workflow ensures every engagement concludes professionally with all deliverables accepted, knowledge transferred, lessons captured, and administrative loose ends resolved.
A thorough closeout protects PPC's reputation, strengthens client relationships for future work, and feeds organizational learning.

## Trigger

- **Trigger Event:** Engagement is complete (all SOW deliverables accepted or contract end date reached)
- **Trigger Source:** Delivery Lead confirmation, client sign-off
- **Frequency:** Once per engagement

## Roles

| Role | Responsibility in Workflow | Person/Team |
|------|---------------------------|-------------|
| Engagement Manager | Owns the closeout process, manages client relationship through transition | [PLACEHOLDER] |
| Delivery Lead | Coordinates deliverable handoff and knowledge transfer | [PLACEHOLDER] |
| Consulting Team | Completes final deliverables, participates in lessons learned | [PLACEHOLDER] |
| Client Sponsor | Provides formal acceptance, completes satisfaction survey | [PLACEHOLDER] |
| Account Lead / Business Development | Evaluates follow-on opportunities, updates CRM | [PLACEHOLDER] |

## Inputs

- Signed SOW with deliverable acceptance criteria
- Sprint board / project plan showing completion status
- Client feedback received throughout the engagement
- Team availability for closeout activities
- Access inventory (systems the PPC team currently has access to)

## Process Steps

### Step 1: Final Deliverable Acceptance

- **Owner:** Engagement Manager / Delivery Lead
- **Description:** Confirm all SOW deliverables have been completed and accepted by the client.
For each deliverable:
  - Present the final version to the client
  - Walk through acceptance criteria
  - Obtain written or email confirmation of acceptance
  - Document any exceptions or deferred items with mutual agreement
- **Tools/Systems:** [PLACEHOLDER: project management tool], email, document repository
- **SLA:** Within 5 business days of engagement end

### Step 2: Conduct Lessons Learned Session

- **Owner:** Delivery Lead
- **Description:** Facilitate a lessons learned session with the internal PPC team.
Optionally include the client if the relationship supports candid discussion.
Cover:
  - What went well (processes, tools, collaboration)
  - What could improve (scope management, communication, technical challenges)
  - What would we do differently next time
Document findings using the retrospective template.
Store in `project-management/lessons-learned/`.
- **Tools/Systems:** Knowledge base, retrospective template, [PLACEHOLDER: video conferencing tool]
- **SLA:** Within 10 business days of engagement end

### Step 3: Client Satisfaction Survey

- **Owner:** Engagement Manager
- **Description:** Send the client satisfaction survey to the client sponsor and key stakeholders.
The survey should cover:
  - Overall engagement satisfaction (1-5 scale)
  - Quality of deliverables
  - Team professionalism and communication
  - Likelihood to recommend PPC (NPS)
  - Open-ended feedback
Track responses and follow up on any scores below 4/5.
- **Tools/Systems:** [PLACEHOLDER: survey tool], email
- **SLA:** Survey sent within 5 business days of engagement end; follow-up within 10 business days

### Step 4: Archive Project Documents

- **Owner:** Delivery Lead
- **Description:** Organize and archive all project documents in the knowledge base.
Ensure:
  - All documents have current frontmatter with `status: "archived"` or appropriate status
  - Client-specific documents are stored in the correct client directory
  - No PHI, PII, or client credentials remain in any documents
  - Documents are organized by year (e.g., `clients/[client-name]/2026/`)
Update the project's README with a summary and links to key artifacts.
- **Tools/Systems:** Knowledge base, Git
- **SLA:** Within 10 business days of engagement end

### Step 5: Update Case Study Pipeline

- **Owner:** Engagement Manager / Account Lead
- **Description:** Evaluate whether this engagement is a candidate for a case study.
Criteria for case study candidacy:
  - Client willing to be referenced (obtain permission)
  - Measurable outcomes achieved
  - Engagement showcases PPC capabilities or a new service area
If applicable, create a draft case study entry using `templates/case-study-template.md` or run `/new-case-study`.
- **Tools/Systems:** Knowledge base, [PLACEHOLDER: CRM]
- **SLA:** Within 15 business days of engagement end

### Step 6: CODEOWNERS and Access Cleanup

- **Owner:** Delivery Lead
- **Description:** Review and update CODEOWNERS to remove team members no longer responsible for client-related content.
Revoke access to client systems for all PPC team members:
  - Client VPN or remote access
  - Client email or collaboration tools
  - Client environments (dev, test, production)
  - Client project management tools
Confirm access revocation with the client IT contact.
- **Tools/Systems:** CODEOWNERS file, client IT systems, access logs
- **SLA:** Within 5 business days of engagement end

### Step 7: Knowledge Transfer

- **Owner:** Delivery Lead / Consulting Team
- **Description:** Ensure all knowledge created during the engagement is accessible to the broader PPC organization.
Knowledge transfer includes:
  - Technical documentation and architecture decisions
  - Client-specific configurations or customizations
  - Relationships and contact information (stored appropriately)
  - Lessons learned and best practices
  - Reusable artifacts (templates, scripts, frameworks)
Conduct a knowledge transfer session with relevant practice leads or future team members if needed.
- **Tools/Systems:** Knowledge base, [PLACEHOLDER: communication tool]
- **SLA:** Within 10 business days of engagement end

### Step 8: Financial Closeout

- **Owner:** Engagement Manager
- **Description:** Ensure all invoicing is complete and final billing is submitted.
Reconcile project budget vs. actuals.
Document any budget variances and reasons.
Close the project in the financial tracking system.
- **Tools/Systems:** [PLACEHOLDER: financial system], [PLACEHOLDER: time tracking tool]
- **SLA:** Within 15 business days of engagement end

## Outputs

- Client acceptance confirmation for all deliverables
- Lessons learned document (stored in knowledge base)
- Client satisfaction survey results
- Archived project documentation
- Case study draft (if applicable)
- Updated CODEOWNERS file
- Access revocation confirmation
- Financial closeout summary

## Definition of Done

- [ ] All deliverables accepted by the client (written confirmation)
- [ ] Lessons learned session completed and documented
- [ ] Client satisfaction survey sent and responses tracked
- [ ] All project documents archived with correct metadata
- [ ] Case study pipeline updated (if applicable)
- [ ] CODEOWNERS updated and client access revoked
- [ ] Knowledge transfer completed
- [ ] Financial closeout completed (final invoice sent, budget reconciled)

## Exceptions

| Exception | Handling Procedure | Escalation |
|-----------|-------------------|------------|
| Client delays acceptance sign-off | Send reminders at 5 and 10 days; document implicit acceptance per SOW terms | Account Lead |
| Client declines satisfaction survey | Note in CRM; do not pressure | Engagement Manager documents feedback received informally |
| Team member departed before closeout | Reassign closeout tasks; rely on documented artifacts | Delivery Lead |
| Dispute over deliverable quality | Engage Account Lead; reference SOW acceptance criteria | Account Lead / Legal |

## Metrics

| Metric | Target | Measurement Method | Frequency |
|--------|--------|--------------------|-----------|
| Closeout completion time | 15 business days or less from engagement end | Date tracking | Per engagement |
| Client satisfaction score | 4.0/5.0 or higher average | Survey results | Per engagement |
| Lessons learned documented | 100% of engagements | Knowledge base audit | Quarterly |
| Access revocation timeliness | Within 5 business days | Access log review | Per engagement |

## Related Documents

- [Project Kickoff Workflow](project-kickoff.md)
- [Client Onboarding Workflow](../onboarding/client-onboarding.md)
- [Retrospective Template](../../templates/retrospective-template.md)
- [Case Study Template](../../templates/case-study-template.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial project closeout workflow | [Approver] |
