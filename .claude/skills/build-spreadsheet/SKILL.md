---
name: "build-spreadsheet"
description: "Creates structured data for spreadsheets including bill rate calculators, tracking sheets, and utilization reports. Use when the user asks to build a spreadsheet, create a tracker, or generate tabular data for Excel."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Build Spreadsheet Data

Follow these steps to create structured tabular data for spreadsheets.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/spreadsheet-spec-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Gather Requirements

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Spreadsheet Purpose** — What problem this spreadsheet solves
- **Data Requirements** — What columns, rows, and data types are needed
- **Calculations** — What formulas or computed fields are required
- **Use Case** — Who will use this and how often

### Common Use Cases:

- **Bill Rate Calculator** — Roles, levels, base rates, multipliers, blended rates
- **Consultant Availability Matrix** — Consultants, current engagement, end date, availability, skills
- **Engagement Profitability Calculator** — Revenue, cost, margin, utilization, realization
- **Resource Tracking Sheet** — Team members, allocation %, project assignments, hours
- **Project Budget Tracker** — Line items, planned vs. actual, variance, forecast

## Step 3: Check for Existing Spreadsheets

Use Glob to search the repository for existing spreadsheets or data files related to the topic. Alert the user if something similar already exists.

## Step 4: Generate the Spreadsheet Data

Generate two output formats:

### Format 1: Markdown Tables (for repository storage)

Create well-structured Markdown tables with:

- Clear column headers
- Appropriate alignment (left for text, right for numbers)
- Sample data rows showing expected format
- Formula descriptions as comments below each table

### Format 2: CSV (for Excel import)

Create a CSV version of the same data:

- Header row with column names
- Sample data rows
- A separate section documenting formulas in Excel syntax (e.g., `=SUM(B2:B10)`, `=B2*C2`)
- Notes on conditional formatting recommendations

### Include Documentation:

- **Purpose** — What this spreadsheet is for
- **Instructions** — How to use and maintain it
- **Column Definitions** — What each column means
- **Formula Descriptions** — What each formula calculates and where to place it
- **Conditional Formatting** — Suggested color coding or data validation rules
- **Pivot Table Suggestions** — Recommended pivot table configurations if applicable

Include full YAML frontmatter:

```yaml
---
title: "[Spreadsheet Purpose]"
type: spreadsheet-data
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
purpose: "[PLACEHOLDER]"
output-formats: ["markdown", "csv"]
next-review: "YYYY-MM-DD"
tags:
  - spreadsheet
  - data
---
```

## Step 5: Write the Files

Determine the appropriate directory based on content type:

- Bill rates / financial: `finance/`
- Resource tracking: `project-management/`
- Recruiting data: `recruiting/`
- General / other: `tools/spreadsheets/`

Write the Markdown version:
```
[directory]/[purpose-slug].md
```

Write the CSV version:
```
[directory]/[purpose-slug].csv
```

Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "build-spreadsheet", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
