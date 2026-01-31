# CLAUDE.md -- Project Constitution

This file governs all Claude Code behavior in this repository.
Read this file completely before every task.

## Identity

This is the **Pivot Point Consulting organizational knowledge base** -- a Markdown-first documentation repository for a Healthcare IT consulting firm.
This is NOT a code repo.
All content is Markdown with YAML frontmatter.
The repo serves as the single source of truth for policies, processes, templates, marketing content, client deliverables, and institutional knowledge.

**Remote:** https://github.com/derailed3/pivot-point-consulting-org.git
**Branch:** main
**Platform:** Windows
**Visibility:** Private (HIPAA/client data -- never make public)

## Architecture

Content follows the **Diataxis framework** (tutorials, how-to guides, reference, explanation) combined with functional business areas.

### Top-Level Directory Map

| Directory | Purpose |
|-----------|---------|
| `docs/` | Diataxis documentation (tutorials, how-to, reference, explanation) |
| `policies/` | Organizational policies (HR, security, compliance, data governance, operations) |
| `marketing/` | Brand standards, content (case studies, blog posts, social media, whitepapers) |
| `client-delivery/` | Proposals, SOWs, presentations, reports (SENSITIVE) |
| `legal/` | NDAs, MSAs, IP agreements, contract lifecycle, review checklists |
| `business-development/` | Partner programs, alliances, referrals, GTM strategies |
| `it-infrastructure/` | Architecture, admin guides, SaaS inventory, runbooks |
| `knowledge/` | FAQ, knowledge articles, decision logs, tips and tricks |
| `culture/` | Values, surveys, recognition, DEI, events |
| `recruiting/` | Job descriptions, resumes, sizzle sheets, interview guides, scorecards |
| `internal-comms/` | Newsletters, announcements, town halls |
| `project-management/` | Charters, risk registers, status reports, change requests, lessons learned |
| `competitive-intelligence/` | Competitor profiles, win/loss analysis, market positioning |
| `clients/` | Health checks, escalations, satisfaction tracking |
| `innovation/` | POCs, tech evaluations, emerging technology |
| `financial/` | Rate cards, pricing models, estimations, budgets |
| `training/` | Programs, certifications, lunch-and-learn, resources |
| `vendors/` | Evaluations, partner profiles, contracts |
| `workflows/` | Project lifecycle, onboarding, sales, quality, disaster recovery |
| `templates/` | 38 reusable document templates |
| `_archive/` | Deprecated/superseded content (never delete from git history) |

## Conventions

### File Naming
- **Kebab-case** for all filenames: `breach-notification.md`, not `BreachNotification.md`
- **50-character max** filename length (excluding extension)
- Use folder structure for context, not filename prefixes

### YAML Frontmatter (Required on Every Document)
Every `.md` file MUST have YAML frontmatter with at minimum:
```yaml
---
title: "Document Title"
author: ""
created: "YYYY-MM-DD"
updated: "YYYY-MM-DD"
status: "draft"           # draft | review | approved | stale | archived
category: ""
tags: []
reviewers: []
next-review: "YYYY-MM-DD"
version: "1.0"
effective-date: ""
superseded-date: ""
supersedes: ""
template-version: "1.0"
---
```

Policy documents additionally require:
```yaml
controls:
  hitrust: []
  soc2: []
retention-until: "YYYY-MM-DD"   # Minimum 6 years for HIPAA
```

### Markdown Style
- ATX headers only (`#`, `##`, `###`)
- One sentence per line (for cleaner git diffs)
- No trailing whitespace
- Single blank line between sections
- Tables use pipe syntax with header separator

### Git Conventions
- Conventional commits: `feat:`, `fix:`, `docs:`, `chore:`, `refactor:`
- All changes via PR to `main` (no direct pushes)
- Compliance content (`policies/compliance/`, `policies/security/`, `policies/data-governance/`) requires 2 approvals

### Content Lifecycle
```
draft -> review -> approved -> stale -> archived
```
- `stale` is set when `next-review` date passes without update
- `archived` content moves to `_archive/[year]/` preserving original path

## Quality Gates: BTV Loop

Every document passes through Build-Test-Validate before approval:

1. **BUILD**: Frontmatter valid, links resolve, renders correctly
2. **TEST**: Spelling passes, style guide compliance, cross-references intact
3. **VALIDATE**: Brand compliance, policy adherence, template structure match

Run `/run-btv` on any document or glob pattern to execute the full pipeline.

## Skills Index

There are 46 skills available via `/command`.
**Before generating any content, ALWAYS read `patterns.md` and the relevant template first.**

### Content Generation (use these when asked to create documents)
- When the user asks to create a **policy**, use `/new-policy`
- When the user asks to create a **proposal**, use `/new-proposal`
- When the user asks to create a **statement of work** or **SOW**, use `/new-sow`
- When the user asks to create a **case study**, use `/new-case-study`
- When the user asks to create a **blog post** or **article**, use `/new-blog-post`
- When the user asks to create a **social media post**, use `/new-social-post`
- When the user asks to create a **how-to guide**, use `/new-guide`
- When the user asks to create a **workflow** or **process**, use `/new-workflow`
- When the user asks to create a **retrospective**, use `/new-retrospective`
- When the user asks to create a **rate card**, use `/new-rate-card`
- When the user asks to create an **estimation** or **effort estimate**, use `/new-estimation`
- When the user asks to create a **training program**, use `/new-training-program`
- When the user asks to create a **vendor evaluation**, use `/new-vendor-evaluation`
- When the user asks to create a **lunch and learn**, use `/new-lunch-and-learn`
- When the user asks to create a **competitor analysis** or **win/loss report**, use `/new-competitor-analysis`
- When the user asks to create a **client review** or **health check**, use `/new-client-review`
- When the user asks to create a **POC** or **proof of concept**, use `/new-poc`
- When the user asks to create a **QBR** or **quarterly business review**, use `/new-qbr`
- When the user asks to create an **executive report** or **leadership summary**, use `/new-executive-report`
- When the user asks to create a **job description**, use `/new-job-description`
- When the user asks to create an **interview guide**, use `/new-interview-guide`
- When the user asks to create a **project charter**, use `/new-project-charter`
- When the user asks to create a **risk register**, use `/new-risk-register`
- When the user asks to create a **status report**, use `/new-status-report`
- When the user asks to create an **announcement**, use `/new-announcement`
- When the user asks to create a **newsletter**, use `/new-newsletter`
- When the user asks to create an **FAQ**, use `/new-faq`
- When the user asks to create a **knowledge article**, use `/new-knowledge-article`
- When the user asks to create a **decision log** or **ADR**, use `/new-decision-log`
- When the user asks to create a **survey**, use `/new-survey`
- When the user asks to create an **NDA**, use `/new-nda`
- When the user asks to create a **contract review checklist**, use `/new-contract-review`
- When the user asks to create a **partner profile**, use `/new-partner-profile`
- When the user asks to create a **GTM strategy**, use `/new-gtm-strategy`
- When the user asks to create a **runbook**, use `/new-runbook`

### Recruitment (high-impact skills)
- When the user asks to **format a resume**, use `/format-resume`
- When the user asks to **create a sizzle sheet** or consultant write-up, use `/generate-sizzle`
- When the user asks to **generate interview questions** or match a candidate, use `/match-interview`
- When the user asks to **build a spreadsheet** or create tabular data, use `/build-spreadsheet`

### Quality and Learning
- When the user asks to **validate** a document, use `/validate-document`
- When the user asks to **check brand compliance**, use `/review-brand-compliance`
- When the user asks to **run BTV** or validate multiple docs, use `/run-btv`
- When the user asks to **analyze feedback** or review patterns, use `/summarize-feedback`

### Utility
- When the user asks to **onboard a client**, use `/onboard-client`
- When the user asks to **search the knowledge base**, use `/explore-knowledge`
- When the user asks to **create a new skill**, use `/build-skill`
- When the user asks to **log a correction**, use `/log-correction`
- When the user asks to **export to Word**, use `/export-to-word`
- When the user asks to **import from Word**, use `/import-from-word`
- When the user asks for **compliance evidence** or audit readiness, use `/compliance-evidence`

**After generating any document, suggest running `/run-btv` to validate it.**

## Self-Learning System

This repo has a self-learning feedback loop:

1. **Before generating**: Read `.claude/feedback/patterns.md` for proven patterns
2. **After generating**: Log output to `.claude/feedback/skills-log.jsonl`
3. **After validation**: Log scores to `.claude/feedback/quality-scores.jsonl`
4. **After human edits**: Corrections logged to `.claude/feedback/corrections.jsonl`
5. **Periodically**: Run `/summarize-feedback` to synthesize all logs into updated patterns

## Agent Instructions

1. **Never fabricate organizational facts.** Use `[PLACEHOLDER: description]` for any information you do not have (client names, revenue figures, specific dates, leadership names).
2. **Always use templates.** Read the appropriate template from `templates/` before generating content.
3. **Read patterns first.** Check `.claude/feedback/patterns.md` before generating any content.
4. **Check for duplicates.** Search the target directory before creating a new file.
5. **Maintain indexes.** After creating/modifying files, update the directory's `README.md` index.
6. **Log everything.** Append to `.claude/feedback/skills-log.jsonl` after every skill invocation.
7. **Never include PHI/PII.** No SSNs, MRNs, patient names, DOBs, or real email addresses in any document.
8. **Respect retention.** Never delete files in `policies/compliance/`, `policies/security/`, or `policies/data-governance/`. HIPAA requires 6-year retention.
9. **Year-based filing.** Date-sensitive content goes in year subdirectories (e.g., `proposals/2026/`).
10. **Markdown is source of truth.** Word/PDF are export formats only. Never store `.docx` or `.pdf` in the repo.

## Healthcare IT Context

Pivot Point Consulting operates in healthcare IT consulting.
Key compliance frameworks: **HIPAA**, **HITECH**, **HITRUST CSF**, **SOC 2 Type II**.
Key terminology: PHI, ePHI, covered entity, business associate, BAA, minimum necessary standard, breach notification, HL7, FHIR, EHR, EMR, interoperability.
EHR platforms: Epic, Oracle Health (Cerner), MEDITECH, Allscripts.
Delivery models: staff augmentation, project-based, advisory.
