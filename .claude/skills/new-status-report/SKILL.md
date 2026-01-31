---
name: "new-status-report"
description: "Generates engagement status reports with RAG health indicators, accomplishments, and metrics. Use when the user asks to create a status report, progress report, or weekly update."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Engagement Status Report

Follow these steps to generate a new engagement status report.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/status-report-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `project-management/status-reports/` for existing reports that may overlap with the requested reporting period. Alert the user if a duplicate or overlapping report is found.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Engagement / Project Name**
- **Reporting Period** (e.g., Week of 2025-01-20, Sprint 14)
- **Overall Health** (Red / Amber / Green)
- **Accomplishments** this period
- **Next Period Plans**
- **Risks / Issues** (with severity and mitigation)
- **Key Metrics** (e.g., milestones hit, tickets closed, hours burned)
- **Budget Status** (on track / over / under, variance %)
- **Resource Utilization** (allocated vs. actual)

## Step 4: Generate the Status Report

Using the template structure, generate the status report with the following sections:

1. **Header** — Engagement name, reporting period, report date, author, distribution list.
2. **Executive Summary** — One-paragraph health overview with RAG indicator.
3. **Accomplishments** — Bulleted list of completed items this period.
4. **Next Period Plans** — Bulleted list of planned activities.
5. **Risks and Issues** — Table with ID, description, severity (H/M/L), owner, mitigation, status.
6. **Key Metrics** — Table or list of quantitative measures.
7. **Budget Status** — Planned vs. actual spend, variance, forecast.
8. **Resource Utilization** — Team member allocation and actual hours.
9. **Decisions Needed** — Any items requiring stakeholder input.
10. **Appendix** — Supporting data or links as needed.

Include full YAML frontmatter:

```yaml
---
title: "[Engagement] Status Report — [Period]"
type: status-report
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
engagement: "[PLACEHOLDER]"
reporting-period: "[PLACEHOLDER]"
overall-health: "[Red|Amber|Green]"
next-review: "YYYY-MM-DD"
tags:
  - status-report
  - project-management
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
project-management/status-reports/[year]/[engagement]-[period].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-status-report", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
