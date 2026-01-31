---
name: "compliance-evidence"
description: "Generates audit readiness reports for HITRUST and SOC 2 by scanning policy control mappings. Use when the user asks for compliance evidence, audit readiness, control coverage, or gap analysis."
user-invocable: true
allowed-tools: ["Read", "Glob", "Grep", "Write"]
---

# Generate Compliance Evidence Report

Follow these steps to generate an audit readiness report by scanning policy control mappings for HITRUST and SOC 2.

## Step 1: Scan Policy Files

Use Glob to find all policy files:

```
policies/**/*.md
```

Read each policy file and extract frontmatter fields:

- `title` — Policy name
- `status` — Current status (draft, review, approved, archived, deprecated)
- `version` — Policy version number
- `effective-date` — When the policy became effective
- `next-review` — When the policy is due for review
- `retention-until` — Data retention date if applicable
- `approved-by` — Who approved the policy
- `approved-date` — When it was approved
- `hitrust` — Array of HITRUST control IDs (e.g., ["01.a", "01.b", "09.aa"])
- `soc2` — Array of SOC 2 control IDs (e.g., ["CC1.1", "CC6.1", "CC7.2"])

## Step 2: Build Control Coverage Matrix

### HITRUST Controls

Create a matrix mapping each HITRUST control ID to its covering policies:

| Control ID | Control Name | Policies | Status | Version | Last Reviewed |
|-----------|-------------|----------|--------|---------|---------------|
| 01.a | ... | [list] | [status] | [ver] | [date] |

### SOC 2 Controls

Create a matrix mapping each SOC 2 control ID (Trust Services Criteria) to its covering policies:

| Control ID | Control Name | Policies | Status | Version | Last Reviewed |
|-----------|-------------|----------|--------|---------|---------------|
| CC1.1 | ... | [list] | [status] | [ver] | [date] |

## Step 3: Identify Gaps

Analyze the coverage matrices for:

1. **Controls Without Policies** — Control IDs that appear in no policy's frontmatter. These are coverage gaps.
2. **Controls With Only Draft Policies** — Controls covered only by draft (unapproved) policies.
3. **Controls With Expired Reviews** — Controls where all covering policies have overdue `next-review` dates.
4. **Single-Policy Controls** — Controls covered by only one policy (single point of failure).

## Step 4: Check Policy Health

For each policy, assess:

1. **Status** — Is the policy approved? Draft policies should be flagged.
2. **Version Currency** — Is the version current? Flag if version is below 1.0.
3. **Effective Date** — Is the policy in effect? Flag future effective dates.
4. **Review Status** — Is `next-review` in the past? Flag overdue reviews.
5. **Retention** — Is `retention-until` set and in the future?
6. **Approval** — For approved policies, are `approved-by` and `approved-date` present?

## Step 5: Generate the Readiness Report

Structure the report with these sections:

### 1. Executive Summary
- Overall readiness assessment (Ready / Needs Attention / Not Ready)
- Total controls mapped, coverage percentage, gap count
- Key findings and recommended actions

### 2. Control Coverage Matrix — HITRUST
- Full HITRUST control coverage table
- Coverage percentage

### 3. Control Coverage Matrix — SOC 2
- Full SOC 2 control coverage table
- Coverage percentage

### 4. Policies per Control with Version and Approval Status
- Detailed view showing each control with its policies, versions, and approval chain

### 5. Overdue Reviews
- Table of policies with `next-review` dates in the past
- Days overdue, responsible owner, recommended action

### 6. Gap Analysis
- Controls without policy coverage
- Controls with insufficient coverage (draft-only, single-policy)
- Severity assessment for each gap

### 7. Recommended Remediation Actions
- Prioritized list of actions to close gaps
- For each action: Gap, Priority (Critical/High/Medium/Low), Recommended Action, Owner, Target Date

Include full YAML frontmatter:

```yaml
---
title: "Compliance Evidence Report — [YYYY-MM-DD]"
type: compliance-evidence
status: draft
author: "Claude Code"
created: "YYYY-MM-DD"
frameworks: ["HITRUST", "SOC 2"]
next-review: "YYYY-MM-DD"
tags:
  - compliance
  - audit
  - hitrust
  - soc2
  - evidence
---
```

## Step 6: Write the Report

Determine the current year. Write the file to:

```
policies/compliance/evidence/[year]/readiness-report-[YYYY-MM-DD].md
```

Create intermediate directories if needed.

## Step 7: Output Summary

Present a brief summary to the user:

- Total policies scanned
- HITRUST coverage: X/Y controls (Z%)
- SOC 2 coverage: X/Y controls (Z%)
- Gaps found: N
- Overdue reviews: N
- Path to the full report

## Step 8: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "compliance-evidence", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "hitrust-coverage": "<percentage>", "soc2-coverage": "<percentage>", "gaps": <count>}
```
