---
title: "How to Run a Retrospective"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "how-to"
tags: ["how-to", "retrospective", "agile", "continuous-improvement", "facilitation"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
difficulty: "BEGINNER"
estimated-time: "90 minutes (preparation + session)"
---

# How To: Run a Retrospective

## Overview

This guide provides step-by-step instructions for facilitating a sprint or project retrospective at Pivot Point Consulting.
Retrospectives are a cornerstone of continuous improvement, giving teams a safe space to reflect on what worked, what did not, and what to change.
By the end of this guide, you will have a documented retrospective with actionable improvement items.

## Prerequisites

- [ ] Sprint or project milestone is complete
- [ ] Sprint review has been conducted (if running a sprint retro)
- [ ] 60-90 minutes scheduled with all team members
- [ ] Previous retrospective action items available for review
- [ ] Access to the PPC knowledge base and retrospective template
- [ ] A virtual whiteboard or retro facilitation tool (Miro, MURAL, or [PLACEHOLDER: retro tool])

## Steps

### Step 1: Schedule the Session

1. Block 60-90 minutes on the team calendar.
   - Sprint retros: schedule immediately after the sprint review, same day if possible.
   - Project milestone retros: schedule within 5 business days of the milestone.
2. Send the calendar invite with:
   - A brief description of the session purpose
   - Link to the virtual whiteboard or retro tool (pre-configured)
   - Request that attendees think about what went well and what could improve
3. Ensure all team members can attend; reschedule if key voices will be absent.

> **Tip:** Rotate the facilitator role across team members to build facilitation skills and bring fresh perspectives.

### Step 2: Generate the Retrospective Template

Use one of the following methods:

**Option A: Claude Code Skill**
```
/new-retrospective
```
Follow the prompts to provide the project/sprint name, date range, and participants.
The skill generates a pre-filled retrospective document.

**Option B: Manual Template Copy**
1. Copy `templates/retrospective-template.md` to `project-management/lessons-learned/[project-name]-retro-[date].md`
2. Update the frontmatter with the correct details
3. Pre-populate the Project/Sprint Info and Participants sections

### Step 3: Set Ground Rules

Open the session by establishing ground rules.
These are essential for creating psychological safety:

1. **Focus on process, not people.** We are examining systems and workflows, not assigning blame.
2. **All perspectives are valued.** Every voice matters regardless of role or seniority.
3. **What happens in retro stays in retro.** Specific comments are not attributed outside the session (action items are shared, not who said what).
4. **One speaker at a time.** Respect each other's airtime.
5. **Assume positive intent.** Everyone is trying to do their best work.

Optionally, run a quick icebreaker or mood check to warm up the group:
- "Rate this sprint 1-5 with your fingers"
- "One word to describe the sprint"
- "Highs and lows in one sentence each"

### Step 4: Collect Input

Use a simultaneous capture method (virtual sticky notes) to avoid groupthink.
Give the team 5-7 minutes of silent writing for each category.

**Category 1: What Went Well (5-7 minutes)**
- What should we keep doing?
- What worked better than expected?
- What are we proud of?

**Category 2: What Could Improve (5-7 minutes)**
- What frustrated us?
- What slowed us down?
- What did not work as expected?

**Category 3: Ideas and Experiments (5-7 minutes)**
- What new approaches should we try?
- What tools or practices might help?
- What have we seen work well on other teams or engagements?

After each silent writing period, have team members briefly present their items (30 seconds each).

### Step 5: Group and Prioritize

1. **Affinity grouping:** Move related sticky notes together and give each group a theme label.
2. **Dot voting:** Give each team member 3-5 votes to place on the themes they consider most important.
3. **Rank by votes:** The themes with the most votes are the team's top priorities for improvement.
4. Discuss the top 2-3 themes briefly to ensure shared understanding.

### Step 6: Assign Action Items

For each of the top 2-3 improvement themes, define a concrete action item:

| # | Action Item | Owner | Due Date | Definition of Done |
|---|-------------|-------|----------|-------------------|
| 1 | [Specific, measurable action] | [Team member name] | [Date -- typically next retro] | [How we will know it is complete] |
| 2 | [Specific, measurable action] | [Team member name] | [Date] | [How we will know it is complete] |
| 3 | [Specific, measurable action] | [Team member name] | [Date] | [How we will know it is complete] |

Guidelines for good action items:
- **Specific:** "Implement a Definition of Ready checklist" not "Improve our planning"
- **Owned:** Every action has exactly one owner (not "the team")
- **Time-bound:** Due by a specific date (default: the next retrospective)
- **Small:** Achievable within one sprint; break larger items into smaller experiments
- **Limited:** Commit to 2-3 items maximum to ensure follow-through

### Step 7: Document in the Knowledge Base

1. Fill in all sections of the retrospective template generated in Step 2.
2. Include:
   - All "went well" items (even those not voted as top priority)
   - All "could improve" items
   - Action items with owners and due dates
   - Metrics from the sprint (velocity, acceptance rate, etc.)
   - Lessons learned that may apply to other engagements
3. Commit the document to the knowledge base:
   ```bash
   git add project-management/lessons-learned/[retro-filename].md
   git commit -m "docs: add retrospective for [project/sprint name]"
   git push
   ```
4. Store in `project-management/lessons-learned/` with the naming convention: `[project-name]-retro-[YYYY-MM-DD].md`

### Step 8: Follow Up on Actions Next Sprint

1. Add retrospective action items to the next sprint board as tasks.
2. At the start of the next retrospective, review the status of each action item.
3. Celebrate completed actions and discuss the impact.
4. Carry forward incomplete items (if still relevant) or close them with a reason.

## Expected Outcome

- A documented retrospective stored in the knowledge base
- 2-3 concrete action items with owners and due dates
- Team morale pulse captured
- Previous action items reviewed and updated
- Lessons learned available for other PPC teams and engagements

## Troubleshooting

| Issue | Possible Cause | Resolution |
|-------|---------------|------------|
| Team is silent during input collection | Lack of psychological safety or low engagement | Use anonymous input (written first); reinforce ground rules; facilitator shares first |
| Same issues surface every retro | Action items not being completed | Prioritize follow-through; escalate systemic blockers |
| Session runs over time | Too much discussion, not enough structure | Use strict timebox for each section; park deep discussions |
| Dominant voices overshadow others | Uneven facilitation | Use round-robin format; ask quieter members directly |
| No actionable outcomes | Items too vague or ambitious | Apply the SMART criteria; break large items down |

## Facilitation Format Options

| Format | Time Needed | Best For |
|--------|------------|----------|
| **Start/Stop/Continue** | 45 min | Quick retros, new teams |
| **What Went Well / Improve / Ideas** | 60 min | Standard retros (recommended default) |
| **4Ls (Liked/Learned/Lacked/Longed For)** | 60 min | Balanced reflection |
| **Sailboat** | 75 min | Visual teams, long projects |
| **Timeline** | 90 min | Complex sprints with many events |

## Related Guides

- [Sprint Retrospective Workflow](../../workflows/project-lifecycle/sprint-retrospective.md)
- [Retrospective Template](../../templates/retrospective-template.md)
- [Sprint Review Workflow](../../workflows/project-lifecycle/sprint-review.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial how-to guide for retrospectives | [Approver] |
