---
title: "Sprint Retrospective Workflow"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "agile", "retrospective", "continuous-improvement", "project-lifecycle"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: Delivery Lead]"
---

# Workflow: Sprint Retrospective

## Purpose

The sprint retrospective provides a structured opportunity for the team to reflect on how the sprint went and identify concrete improvements for the next iteration.
This ceremony is critical to PPC's commitment to continuous improvement and delivering increasingly effective outcomes for our clients.

## Trigger

- **Trigger Event:** End of each sprint, after the sprint review is complete
- **Trigger Source:** Sprint calendar / [PLACEHOLDER: project management tool]
- **Frequency:** Every sprint (biweekly by default)

## Roles

| Role | Responsibility in Workflow | Person/Team |
|------|---------------------------|-------------|
| Facilitator (Scrum Master / Delivery Lead) | Leads the session, ensures psychological safety, captures outcomes | [PLACEHOLDER] |
| Team Members | Participate honestly, propose improvements, commit to action items | [PLACEHOLDER] |
| Product Owner (optional) | Participates if relevant to team dynamics; may attend by invitation | [PLACEHOLDER] |

## Inputs

- Sprint metrics (velocity, commitment accuracy, blocker count)
- Sprint review outcomes and stakeholder feedback
- Action items from the previous retrospective (for follow-up)
- Any team observations or incidents from the sprint
- Retrospective template (see `templates/retrospective-template.md`)

## Process Steps

### Step 1: Set the Stage

- **Owner:** Facilitator
- **Description:** Open the session by establishing ground rules for psychological safety.
Remind the team:
  - Focus on processes and systems, not individuals.
  - All perspectives are valued.
  - What is shared in the retro stays in the retro (unless action items require external communication).
Run a quick icebreaker or mood check (e.g., "Rate the sprint 1-5" or a one-word summary).
- **Tools/Systems:** [PLACEHOLDER: video conferencing tool], virtual whiteboard or retro tool
- **SLA:** 5 minutes

### Step 2: Review Previous Action Items

- **Owner:** Facilitator
- **Description:** Walk through the action items from the last retrospective.
For each item, confirm whether it was completed, in progress, or not started.
Discuss the impact of completed actions -- did they make a difference?
Carry forward incomplete items if still relevant, or close them if no longer applicable.
- **Tools/Systems:** Previous retrospective document, [PLACEHOLDER: project management tool]
- **SLA:** 5-10 minutes

### Step 3: Collect Input -- What Went Well

- **Owner:** All Team Members
- **Description:** Each team member shares what went well during the sprint.
Use sticky notes (physical or virtual) so all ideas are captured simultaneously.
Group similar items together.
Celebrate wins and acknowledge good work.
- **Tools/Systems:** Virtual whiteboard (Miro, MURAL, or [PLACEHOLDER: retro tool])
- **SLA:** 10 minutes

### Step 4: Collect Input -- What Could Improve

- **Owner:** All Team Members
- **Description:** Each team member shares areas for improvement.
Focus on process, tools, communication, and collaboration -- not individual performance.
Again, use simultaneous capture to avoid groupthink.
Group related improvement areas.
- **Tools/Systems:** Virtual whiteboard or retro tool
- **SLA:** 10 minutes

### Step 5: Collect Input -- Ideas and Experiments

- **Owner:** All Team Members
- **Description:** Brainstorm potential solutions or experiments to address the improvement areas.
Encourage creative thinking and small experiments over large process overhauls.
- **Tools/Systems:** Virtual whiteboard or retro tool
- **SLA:** 10 minutes

### Step 6: Prioritize and Select Action Items

- **Owner:** Facilitator with team input
- **Description:** Dot-vote or rank the improvement ideas.
Select the top 2-3 action items the team will commit to for the next sprint.
Keeping the number small ensures follow-through.
For each action item, assign:
  - An **owner** responsible for driving the action
  - A **due date** (typically by the next retrospective)
  - A **definition of done** so progress can be measured
- **Tools/Systems:** Virtual whiteboard, [PLACEHOLDER: project management tool]
- **SLA:** 10 minutes

### Step 7: Document in the Knowledge Base

- **Owner:** Facilitator
- **Description:** Use the retrospective template to document the session.
Run `/new-retrospective` to generate a pre-filled template, or copy from `templates/retrospective-template.md`.
Fill in all sections: what went well, what could improve, action items with owners and dates.
Store the completed retrospective in `project-management/lessons-learned/`.
- **Tools/Systems:** Knowledge base, Git
- **SLA:** Within 24 hours of the retrospective

### Step 8: Close the Session

- **Owner:** Facilitator
- **Description:** Summarize the key takeaways and committed action items.
Thank the team for their participation and candor.
Confirm when the next retrospective will occur.
- **Tools/Systems:** N/A
- **SLA:** 5 minutes

## Outputs

- Completed retrospective document (stored in knowledge base)
- 2-3 action items with owners and due dates
- Updated status on previous retrospective action items
- Team morale pulse (from icebreaker or mood check)

## Definition of Done

- [ ] All team members had the opportunity to contribute
- [ ] What went well and what could improve are documented
- [ ] 2-3 action items are defined with owners and due dates
- [ ] Previous sprint's action items have been reviewed
- [ ] Retrospective document is committed to the knowledge base
- [ ] Session completed within 60-90 minutes

## Facilitation Techniques

| Technique | Description | Best For |
|-----------|------------|----------|
| **Start/Stop/Continue** | What should we start, stop, and continue doing? | Quick retros, new teams |
| **4Ls** | Liked, Learned, Lacked, Longed For | Balanced reflection |
| **Sailboat** | Wind (helps), Anchors (slows), Rocks (risks), Island (goal) | Visual teams, long projects |
| **Mad/Sad/Glad** | Emotional check on sprint events | Team morale focus |
| **Timeline** | Plot events on a sprint timeline, then discuss | Complex sprints with many events |

## Exceptions

| Exception | Handling Procedure | Escalation |
|-----------|-------------------|------------|
| Team too small (1-2 people) | Combine with sprint review or conduct a written reflection | Delivery Lead |
| Recurring issue not being resolved | Escalate to engagement manager; may need structural change | Engagement Manager |
| Facilitator is part of the issue | Bring in a neutral facilitator from another team | Practice Lead |
| Remote/async team cannot meet synchronously | Use async retro tool with 48-hour input window | Facilitator compiles and shares |

## Metrics

| Metric | Target | Measurement Method | Frequency |
|--------|--------|--------------------|-----------|
| Action item completion rate | 80%+ completed by next retro | Review at start of each retro | Every sprint |
| Session duration | 60-90 minutes | Time tracking | Every sprint |
| Participation rate | 100% of team members contribute | Input count per person | Every sprint |
| Recurring themes | Decreasing over time (issues are being resolved) | Theme tracking across retros | Quarterly |

## Related Documents

- [Retrospective Template](../../templates/retrospective-template.md)
- [Sprint Review Workflow](sprint-review.md)
- [Sprint Planning Workflow](sprint-planning.md)
- [How to Run a Retrospective](../../docs/how-to/run-a-retrospective.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial sprint retrospective workflow | [Approver] |
