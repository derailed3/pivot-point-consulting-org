---
name: "onboard-client"
description: "Generates a complete client onboarding package with kickoff agenda, comms plan, RACI matrix, and status template. Use when the user asks to onboard a client, set up a new engagement, or create kickoff materials."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Client Onboarding Package

Follow these steps to generate a complete client onboarding package.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `marketing/brand/style-guide.md` for voice and tone guidance.
3. Use Glob to check `templates/` for any onboarding-related templates.

## Step 2: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Client Name** — Use `[PLACEHOLDER]` if not provided; never use real client names in templates
- **Engagement Type** — Advisory, implementation, optimization, managed services, staff augmentation, etc.
- **Team Leads** — PPC project manager, engagement lead, technical lead
- **Client Stakeholders** — Key client contacts and their roles
- **Start Date** — Engagement start date
- **Duration** — Expected engagement length
- **Scope Summary** — Brief description of the engagement scope

## Step 3: Generate Kickoff Meeting Agenda

Create a kickoff meeting agenda with:

1. **Meeting Details** — Date, time, location/link, duration (typically 60-90 minutes), attendees.
2. **Welcome and Introductions** (10 min) — Team introductions, icebreaker.
3. **Engagement Overview** (15 min) — Scope, objectives, success criteria, timeline.
4. **Team Structure and Roles** (10 min) — RACI overview, key contacts, escalation paths.
5. **Communication Plan** (10 min) — Meeting cadence, status reports, collaboration tools.
6. **Governance and Decision-Making** (10 min) — Change control, approval process, risk management.
7. **Immediate Next Steps** (10 min) — Week 1 activities, access provisioning, document requests.
8. **Q&A** (15 min) — Open discussion.
9. **Action Items and Wrap-Up** (5 min) — Summarize decisions and next steps.

## Step 4: Generate Communications Plan

Create a communications plan with:

1. **Communication Matrix** — Table with: Communication Type, Frequency, Audience, Owner, Channel, Template.
   - Status reports (weekly)
   - Steering committee (bi-weekly or monthly)
   - Team stand-ups (daily or as needed)
   - Escalation notifications (as needed)
   - Change requests (as needed)
2. **Distribution Lists** — Who receives what communications.
3. **Escalation Procedures** — When and how to escalate issues.
4. **Collaboration Tools** — Shared drives, project management tools, messaging channels.

## Step 5: Generate RACI Matrix

Create a RACI matrix with:

1. **Activity List** — Key activities and deliverables for the engagement.
2. **Roles** — Columns for each team member or role (PPC PM, PPC Lead, Client PM, Client Sponsor, etc.).
3. **RACI Assignments** — For each activity:
   - **R** = Responsible (does the work)
   - **A** = Accountable (approves/owns)
   - **C** = Consulted (provides input)
   - **I** = Informed (kept in the loop)

Pre-populate with common consulting engagement activities:
- Project planning and scheduling
- Requirements gathering
- Solution design
- Configuration/build
- Testing
- Training
- Go-live support
- Status reporting
- Change management
- Issue resolution

## Step 6: Generate Pre-Filled Status Report Template

Create a status report template pre-filled with engagement details:

- Engagement name and team
- Reporting period structure
- RAG health indicator placeholder
- Standard sections from the status report template
- Pre-populated risk and issue categories relevant to the engagement type

## Step 7: Write All Files

Determine the current year. Write all files to `client-delivery/reports/[year]/` or appropriate directories:

1. **Kickoff Agenda:**
   ```
   client-delivery/reports/[year]/[client-slug]-kickoff-agenda.md
   ```

2. **Communications Plan:**
   ```
   client-delivery/reports/[year]/[client-slug]-comms-plan.md
   ```

3. **RACI Matrix:**
   ```
   client-delivery/reports/[year]/[client-slug]-raci.md
   ```

4. **Status Report Template:**
   ```
   client-delivery/reports/[year]/[client-slug]-status-template.md
   ```

Each file should include full YAML frontmatter with:

```yaml
---
title: "[Document Title]"
type: "[kickoff-agenda|comms-plan|raci|status-template]"
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
client: "[PLACEHOLDER]"
engagement-type: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - client-onboarding
  - [engagement-type]
---
```

Use `[PLACEHOLDER]` for all client-specific details that were not provided.

## Step 8: Output Summary

After generating all files, provide a summary:

- List of files created with full paths
- Reminder to fill in all `[PLACEHOLDER]` values
- Suggestion to run `/validate-document` on each file before sharing with the client
- Reminder that no real client names should be stored in the repository

## Step 9: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "onboard-client", "files": ["<path1>", "<path2>", "<path3>", "<path4>"], "timestamp": "<ISO-8601>", "status": "created", "engagement-type": "<type>"}
```
