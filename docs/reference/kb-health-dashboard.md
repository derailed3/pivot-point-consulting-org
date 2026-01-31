---
title: "Knowledge Base Health Dashboard"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "reference"
tags: ["reference", "dashboard", "metrics", "quality", "health", "governance"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Knowledge Base Health Dashboard

## Overview

This dashboard provides a comprehensive view of the PPC knowledge base health across five dimensions: content coverage, quality, staleness, skill usage, and team activity.
Metrics are updated periodically by running `/summarize-feedback` which aggregates data from the self-learning system logs.

> **To populate this dashboard with current data, run:**
> ```
> /summarize-feedback
> ```

---

## 1. Content Coverage Metrics

### Documents by Category

| Category | Count | % of Total |
|----------|:-----:|:----------:|
| Policy | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Workflow | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| How-To Guide | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Tutorial | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Reference | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Explanation | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Template | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Marketing | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Client Delivery | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Other | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| **Total** | **[PLACEHOLDER]** | **100%** |

### Documents by Status

| Status | Count | % of Total | Target |
|--------|:-----:|:----------:|:------:|
| Draft | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | < 30% |
| Review | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | < 10% |
| Approved | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | > 50% |
| Stale | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | < 10% |
| Archived | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | N/A |

### Content Gap Analysis

Areas identified as needing additional documentation:

| Area | Current Coverage | Gap Description | Priority |
|------|:----------------:|-----------------|:--------:|
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

### Coverage by Business Area

| Business Area | Documents | README Index | Templates Available |
|--------------|:---------:|:------------:|:-------------------:|
| Policies | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Workflows | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Client Delivery | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Marketing | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Legal | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Project Management | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Recruiting | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Training | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| IT Infrastructure | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Financial | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |

---

## 2. Quality Metrics

### BTV Pass Rate

| Metric | Value | Target |
|--------|:-----:|:------:|
| Average BTV score | [PLACEHOLDER: run /summarize-feedback to populate] | 80+ |
| First-attempt pass rate (score >= 90) | [PLACEHOLDER: run /summarize-feedback to populate] | 80% |
| Documents below score 50 | [PLACEHOLDER: run /summarize-feedback to populate] | 0 |

### BTV Score Distribution

| Score Range | Rating | Count | % of Total |
|-------------|--------|:-----:|:----------:|
| 90-100 | Excellent | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| 75-89 | Good | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| 50-74 | Needs Work | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| 0-49 | Poor | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |

### Common BTV Failure Reasons

| Failure Reason | Occurrences | % of Failures | Trend |
|---------------|:-----------:|:-------------:|:-----:|
| Missing frontmatter fields | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Broken internal links | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Spelling errors | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Style guide violations | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Brand non-compliance | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| Template structure mismatch | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| PHI/PII detected | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |

---

## 3. Staleness Metrics

### Documents Past Review Date

| Category | Total Docs | Past Review Date | % Stale | Oldest Stale Doc |
|----------|:---------:|:----------------:|:-------:|:----------------:|
| Policies | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| Workflows | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| Marketing | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| Templates | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| Docs | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

### Freshness Summary

| Metric | Value | Target |
|--------|:-----:|:------:|
| Average document age (days since last update) | [PLACEHOLDER: run /summarize-feedback to populate] | < 180 |
| % of documents reviewed in last 12 months | [PLACEHOLDER: run /summarize-feedback to populate] | > 80% |
| Documents with `next-review` date set | [PLACEHOLDER: run /summarize-feedback to populate] | 100% |
| Documents approaching review date (within 30 days) | [PLACEHOLDER: run /summarize-feedback to populate] | N/A (informational) |

### Upcoming Reviews

| Document | Next Review Date | Owner | Days Until Due |
|----------|:----------------:|-------|:--------------:|
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

---

## 4. Skill Usage Metrics

### Invocation Counts (Last 30 Days)

| Skill | Invocations | Success Rate | Avg BTV Score |
|-------|:-----------:|:------------:|:-------------:|
| `/new-policy` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/new-proposal` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/new-guide` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/new-workflow` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/run-btv` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | N/A |
| `/format-resume` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/generate-sizzle` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| `/export-to-word` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | N/A |
| `/explore-knowledge` | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | N/A |
| Other skills | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] |
| **Total** | **[PLACEHOLDER]** | **[PLACEHOLDER]** | **[PLACEHOLDER]** |

### Approval and Correction Rates

| Metric | Value | Target | Trend |
|--------|:-----:|:------:|:-----:|
| Skill output approval rate (merged without major edits) | [PLACEHOLDER: run /summarize-feedback to populate] | > 70% | [PLACEHOLDER] |
| Correction frequency (edits logged via /log-correction) | [PLACEHOLDER: run /summarize-feedback to populate] | Decreasing | [PLACEHOLDER] |
| Average corrections per skill output | [PLACEHOLDER: run /summarize-feedback to populate] | < 3 | [PLACEHOLDER] |

### Top Correction Patterns

| Pattern | Frequency | Skills Affected | Action Taken |
|---------|:---------:|-----------------|-------------|
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

---

## 5. Team Activity Metrics

### Pull Request Activity (Last 30 Days)

| Metric | Value | Target |
|--------|:-----:|:------:|
| PRs opened | [PLACEHOLDER: run /summarize-feedback to populate] | N/A |
| PRs merged | [PLACEHOLDER: run /summarize-feedback to populate] | N/A |
| PRs closed without merging | [PLACEHOLDER: run /summarize-feedback to populate] | < 10% of opened |
| Average time to merge | [PLACEHOLDER: run /summarize-feedback to populate] | < 3 business days |
| Average review turnaround | [PLACEHOLDER: run /summarize-feedback to populate] | < 2 business days |

### Active Contributors (Last 30 Days)

| Contributor | PRs Merged | Docs Created | Docs Updated | Reviews Completed |
|-------------|:----------:|:------------:|:------------:|:-----------------:|
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

### Review Turnaround

| Reviewer | Reviews Assigned | Reviews Completed | Avg Turnaround (days) |
|----------|:----------------:|:-----------------:|:---------------------:|
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |
| [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] | [PLACEHOLDER] | [PLACEHOLDER] |

---

## Dashboard Health Summary

| Dimension | Status | Key Indicator |
|-----------|:------:|--------------|
| Content Coverage | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Quality | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Staleness | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Skill Performance | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |
| Team Activity | [PLACEHOLDER: run /summarize-feedback to populate] | [PLACEHOLDER] |

> **Status Legend:** GREEN = Meets or exceeds targets | AMBER = Below target, action plan in place | RED = Significantly below target, immediate action needed

---

## How to Update This Dashboard

1. Run `/summarize-feedback` to aggregate data from the self-learning system logs.
2. The skill will analyze:
   - `.claude/feedback/skills-log.jsonl` (skill invocations)
   - `.claude/feedback/quality-scores.jsonl` (BTV results)
   - `.claude/feedback/corrections.jsonl` (human corrections)
   - Git history (contribution metrics)
   - Frontmatter across all documents (coverage and staleness)
3. Replace `[PLACEHOLDER: run /summarize-feedback to populate]` values with current data.
4. Update the `updated` field in frontmatter.
5. Commit and push.

Recommended update cadence: **Monthly** or before leadership reviews.

## Related Documents

- [Document Quality Standards](../../workflows/quality/document-standards.md)
- [CLAUDE.md](../../CLAUDE.md)
- [CONTRIBUTING.md](../../CONTRIBUTING.md)
- [Using This Knowledge Base](../tutorials/using-this-knowledge-base.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial KB health dashboard template | [Approver] |
