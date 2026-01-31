---
title: "Sprint Planning Workflow"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "agile", "sprint-planning", "project-lifecycle"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: Delivery Lead]"
---

# Workflow: Sprint Planning

## Purpose

Sprint planning establishes the work commitment for the upcoming sprint.
This workflow ensures every sprint begins with a clear goal, well-estimated backlog items, and explicit ownership of deliverables.
Consistent sprint planning drives predictable delivery for both internal initiatives and client engagements.

## Trigger

- **Trigger Event:** Start of each sprint (typically every two weeks)
- **Trigger Source:** Sprint calendar / [PLACEHOLDER: project management tool]
- **Frequency:** Every sprint (biweekly by default; adjusted per engagement)

## Roles

| Role | Responsibility in Workflow | Person/Team |
|------|---------------------------|-------------|
| Scrum Master / Delivery Lead | Facilitates the session, ensures timebox, removes impediments | [PLACEHOLDER] |
| Product Owner / Client Lead | Prioritizes backlog, clarifies acceptance criteria, defines sprint goal | [PLACEHOLDER] |
| Development / Consulting Team | Estimates effort, selects items, commits to sprint scope | [PLACEHOLDER] |
| Stakeholders (optional) | Provides context on upcoming priorities or dependencies | [PLACEHOLDER] |

## RACI Matrix

| Activity | Scrum Master | Product Owner | Team Members | Stakeholders |
|----------|:------------:|:-------------:|:------------:|:------------:|
| Schedule sprint planning session | R | I | I | I |
| Groom and prioritize backlog | C | R/A | C | C |
| Present candidate sprint items | I | R | I | I |
| Estimate effort (story points / hours) | C | C | R/A | - |
| Select sprint items | C | A | R | I |
| Define sprint goal | C | R/A | C | I |
| Assign owners to sprint items | R | C | A | - |
| Document sprint board | R/A | I | I | I |

> **Legend:** R = Responsible, A = Accountable, C = Consulted, I = Informed

## Inputs

- Prioritized product / project backlog
- Velocity data from previous sprints (if available)
- Team capacity for the upcoming sprint (account for PTO, holidays, other commitments)
- Outstanding action items from the last sprint retrospective
- Client or stakeholder feedback from the last sprint review
- Any known dependencies or blockers

## Process Steps

### Step 1: Review the Backlog

- **Owner:** Product Owner / Client Lead
- **Description:** Walk the team through the top-priority backlog items.
Present the business context and acceptance criteria for each candidate item.
Answer clarifying questions from the team.
- **Tools/Systems:** [PLACEHOLDER: project management tool], shared screen
- **SLA:** 15-20 minutes

### Step 2: Select Sprint Items

- **Owner:** Consulting Team (with Product Owner approval)
- **Description:** Based on team capacity and velocity, select backlog items to bring into the sprint.
Ensure the total estimated effort does not exceed the team's available capacity.
Consider dependencies between items and external teams.
- **Tools/Systems:** [PLACEHOLDER: project management tool]
- **SLA:** 15-20 minutes

### Step 3: Estimate Effort

- **Owner:** Consulting Team
- **Description:** Apply estimation technique (planning poker, t-shirt sizing, or story points) to any items that have not yet been estimated.
Re-estimate items whose scope has changed since the last grooming session.
- **Tools/Systems:** [PLACEHOLDER: estimation tool or planning poker app]
- **SLA:** 15-20 minutes

### Step 4: Assign Owners

- **Owner:** Scrum Master / Delivery Lead
- **Description:** Assign a primary owner to each sprint item.
Ensure workload is balanced across team members.
Identify any items that require pairing or cross-functional collaboration.
- **Tools/Systems:** [PLACEHOLDER: project management tool]
- **SLA:** 5-10 minutes

### Step 5: Define the Sprint Goal

- **Owner:** Product Owner / Client Lead
- **Description:** Articulate a concise sprint goal that describes the overarching outcome the team aims to achieve.
The sprint goal should be measurable and directly tied to client or business value.
- **Tools/Systems:** Documented in sprint board description
- **SLA:** 5 minutes

### Step 6: Document in Sprint Board

- **Owner:** Scrum Master / Delivery Lead
- **Description:** Ensure all selected items are moved to the sprint board with correct status, estimates, and owners.
Record the sprint goal prominently in the sprint description.
Share the sprint board link with all stakeholders.
- **Tools/Systems:** [PLACEHOLDER: project management tool]
- **SLA:** 5 minutes

## Outputs

- Populated sprint board with all committed items
- Sprint goal documented and communicated
- Each sprint item has an owner, estimate, and acceptance criteria
- Team capacity allocation recorded
- Sprint planning meeting notes (if applicable)

## Definition of Done

- [ ] All sprint items have clear acceptance criteria
- [ ] All sprint items are estimated
- [ ] Every item has an assigned owner
- [ ] Sprint goal is documented and agreed upon by the team
- [ ] Sprint board is visible and accessible to all team members and stakeholders
- [ ] Team capacity has been validated (PTO and other commitments accounted for)

## Exceptions

| Exception | Handling Procedure | Escalation |
|-----------|-------------------|------------|
| Product Owner unavailable | Delegate to backup or reschedule within 24 hours | Delivery Lead escalates to engagement manager |
| Team cannot commit to minimum viable sprint | Reduce scope or extend sprint duration with stakeholder agreement | Engagement Manager / Client Lead |
| Critical production issue mid-planning | Pause planning, address the issue, resume or reschedule | Delivery Lead |
| New team member unfamiliar with backlog | Pair with experienced team member; provide backlog overview before session | Scrum Master |

## Metrics

| Metric | Target | Measurement Method | Frequency |
|--------|--------|--------------------|-----------|
| Sprint commitment accuracy | 80-100% of committed items completed | Compare committed vs. completed items at sprint end | Every sprint |
| Planning session duration | 60 minutes or less | Time tracking | Every sprint |
| Velocity trend | Stable or improving | Story points completed per sprint | Rolling 5 sprints |
| Carryover rate | Less than 20% | Items rolled to next sprint / total committed | Every sprint |

## Tips for Effective Sprint Planning

- Keep the meeting timeboxed; deeper discussions should happen in backlog refinement.
- Use historical velocity as a guide, not a mandate.
- Leave 10-15% capacity buffer for unplanned work and bug fixes.
- Ensure acceptance criteria are written before the item enters the sprint.
- For client engagements, align the sprint goal with the current SOW milestones.

## Related Documents

- [Sprint Review Workflow](sprint-review.md)
- [Sprint Retrospective Workflow](sprint-retrospective.md)
- [Daily Standup Workflow](daily-standup.md)
- [Project Charter Template](../../templates/project-charter-template.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial sprint planning workflow | [Approver] |
