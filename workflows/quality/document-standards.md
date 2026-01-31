---
title: "Document Quality Standards"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["quality", "standards", "btv", "documentation"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Document Quality Standards

## Purpose

This document defines the quality bar for all content in the Pivot Point Consulting knowledge base.
Every document must meet these standards before reaching `approved` status.

## Quality Dimensions

### 1. Structure

- YAML frontmatter present with all required fields
- Correct template structure followed
- ATX headers used (`#`, `##`, `###`)
- Maximum 4 heading levels
- Revision History table present at bottom

### 2. Content

- Accurate and complete information
- No fabricated organizational facts
- `[PLACEHOLDER: description]` used for unknown data
- No PHI, PII, or client-identifiable information
- Appropriate level of detail for the audience

### 3. Style

- One sentence per line
- No trailing whitespace
- Kebab-case filenames (50 char max)
- Preferred terminology per style guide
- Consistent voice and tone per context

### 4. Compliance (Policy Documents)

- `controls.hitrust` and `controls.soc2` mappings present
- `retention-until` date set (minimum 6 years for HIPAA)
- `effective-date` populated
- Approved by designated reviewers

### 5. Links and References

- All internal links resolve
- Relative paths used for internal links
- No broken external links
- Related documents cross-referenced

## BTV Pipeline

All documents pass through three validation stages:

| Stage | Checks | Fail Action |
|-------|--------|-------------|
| **BUILD** | Frontmatter valid, links resolve, renders correctly | Fix and re-run |
| **TEST** | Spelling, style guide, cross-references, structure | Fix and re-run |
| **VALIDATE** | Brand compliance, template match, policy adherence | Fix and re-run |

### Quality Score

Documents receive a score from 0-100:

| Score | Rating | Action |
|-------|--------|--------|
| 90-100 | Excellent | Ready for approval |
| 75-89 | Good | Minor fixes recommended |
| 50-74 | Needs Work | Significant revisions required |
| 0-49 | Poor | Major rewrite needed |

Target: 80% of documents pass BTV on first attempt.

## Review Cycles

| Content Type | Review Frequency |
|-------------|-----------------|
| Policies | Every 12 months |
| Workflows | Every 12 months |
| Marketing content | Every 6 months |
| Templates | Every 6 months |
| Client deliverables | No scheduled review (archive after engagement) |

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial quality standards | [Approver] |
