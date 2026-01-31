---
title: "Sprint Review Workflow"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "agile", "sprint-review", "project-lifecycle", "demo"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: Delivery Lead]"
---

# Workflow: Sprint Review

## Purpose

The sprint review is an opportunity to demonstrate completed work to stakeholders, gather feedback, and adjust the backlog based on what was learned.
This ceremony closes the feedback loop between the delivery team and the client or product owner, ensuring the work delivered aligns with expectations and business needs.

## Trigger

- **Trigger Event:** End of each sprint (last day of sprint, before the retrospective)
- **Trigger Source:** Sprint calendar / [PLACEHOLDER: project management tool]
- **Frequency:** Every sprint (biweekly by default)

## Roles

| Role | Responsibility in Workflow | Person/Team |
|------|---------------------------|-------------|
| Scrum Master / Delivery Lead | Facilitates the session, manages agenda and timebox | [PLACEHOLDER] |
| Product Owner / Client Lead | Accepts or rejects completed items, provides feedback | [PLACEHOLDER] |
| Consulting Team | Demonstrates completed work, answers questions | [PLACEHOLDER] |
| Stakeholders / Client Representatives | Reviews demos, provides feedback and direction | [PLACEHOLDER] |

## Inputs

- Sprint board showing completed, in-progress, and not-started items
- Sprint goal from the sprint planning session
- Demo-ready deliverables (working software, documents, configurations, etc.)
- Feedback from previous sprint review (if any outstanding items)

## Process Steps

### Step 1: Prepare the Demo

- **Owner:** Consulting Team
- **Description:** Before the meeting, each team member with completed items prepares a brief demonstration.
Demos should show the deliverable in a realistic context (test environment, sample data, etc.).
Identify the acceptance criteria being addressed for each item.
- **Tools/Systems:** [PLACEHOLDER: demo environment], shared screen
- **SLA:** Preparation completed 1 hour before the sprint review

### Step 2: Open the Sprint Review

- **Owner:** Scrum Master / Delivery Lead
- **Description:** Welcome attendees and set the context.
Recap the sprint goal.
Summarize sprint metrics: items committed vs. completed, velocity, and any notable events.
- **Tools/Systems:** [PLACEHOLDER: video conferencing tool], sprint board
- **SLA:** 5 minutes

### Step 3: Demo Completed Work

- **Owner:** Consulting Team
- **Description:** Walk through each completed item with a live demonstration.
Explain what was built, how it meets the acceptance criteria, and any decisions made during implementation.
Allow stakeholders to ask questions and interact with the deliverable.
- **Tools/Systems:** Demo environment, shared screen
- **SLA:** 5-10 minutes per item (total demo time should not exceed 40 minutes)

### Step 4: Gather Stakeholder Feedback

- **Owner:** Product Owner / Client Lead
- **Description:** After each demo (or at the end of all demos), solicit feedback from stakeholders.
Record feedback as new backlog items, modifications to existing items, or acceptance confirmations.
Note any items that are not accepted and the reason for rejection.
- **Tools/Systems:** [PLACEHOLDER: project management tool], meeting notes
- **SLA:** 10-15 minutes

### Step 5: Update the Backlog

- **Owner:** Product Owner / Client Lead
- **Description:** Based on feedback received:
  - Mark accepted items as "Done."
  - Create new backlog items for requested changes or new features.
  - Re-prioritize the backlog if stakeholder priorities have shifted.
  - Move incomplete items back to the backlog with updated notes.
- **Tools/Systems:** [PLACEHOLDER: project management tool]
- **SLA:** 5 minutes (detailed backlog grooming occurs separately)

### Step 6: Document Outcomes

- **Owner:** Scrum Master / Delivery Lead
- **Description:** Record sprint review outcomes including:
  - Items accepted and items rejected (with reasons)
  - Key feedback themes
  - New backlog items created
  - Updated priorities or direction changes
Distribute the sprint review summary to all attendees and relevant stakeholders.
- **Tools/Systems:** Meeting notes template, [PLACEHOLDER: communication tool]
- **SLA:** Within 24 hours of sprint review

## Outputs

- Sprint review summary document
- Updated backlog with new items and re-prioritized entries
- Accepted items marked as "Done" in sprint board
- Rejected items returned to backlog with feedback notes
- Stakeholder feedback recorded for reference

## Definition of Done

- [ ] All completed items have been demonstrated
- [ ] Stakeholder feedback has been collected and documented
- [ ] Backlog has been updated to reflect feedback
- [ ] Sprint review summary has been distributed
- [ ] Accepted items are marked "Done" in the project management tool

## Exceptions

| Exception | Handling Procedure | Escalation |
|-----------|-------------------|------------|
| Key stakeholder unavailable | Record demo and share asynchronously; collect feedback via email | Product Owner follows up within 48 hours |
| No items completed in sprint | Still hold the review; discuss blockers and what was learned | Delivery Lead escalates to engagement manager |
| Stakeholder rejects all items | Document reasons; schedule follow-up session to align on expectations | Engagement Manager / Account Lead |
| Demo environment unavailable | Use screenshots or recordings as fallback | IT support for environment restoration |

## Metrics

| Metric | Target | Measurement Method | Frequency |
|--------|--------|--------------------|-----------|
| Acceptance rate | 90%+ of demonstrated items accepted | Accepted / demonstrated items | Every sprint |
| Stakeholder attendance | Key stakeholders present at every review | Attendance tracking | Every sprint |
| Feedback items captured | All feedback documented within 24 hours | Review summary audit | Every sprint |
| Sprint goal achievement | Sprint goal met or partially met | Team assessment | Every sprint |

## Related Documents

- [Sprint Planning Workflow](sprint-planning.md)
- [Daily Standup Workflow](daily-standup.md)
- [Sprint Retrospective Workflow](sprint-retrospective.md)
- [Status Report Template](../../templates/meeting-notes-template.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial sprint review workflow | [Approver] |
