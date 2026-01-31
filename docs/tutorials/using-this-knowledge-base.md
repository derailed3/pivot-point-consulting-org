---
title: "Using This Knowledge Base"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "tutorial"
tags: ["tutorial", "knowledge-base", "mkdocs", "claude-code", "btv", "onboarding"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Using This Knowledge Base

## Overview

The Pivot Point Consulting knowledge base is a Markdown-first documentation repository that serves as the single source of truth for policies, processes, templates, marketing content, client deliverables, and institutional knowledge.
This tutorial explains how to navigate, search, contribute to, and maintain the knowledge base effectively.

## 1. Browsing by Directory

The knowledge base is organized into functional business areas at the top level.
Each directory has a `README.md` that serves as an index for its contents.

| Directory | What You Will Find |
|-----------|-------------------|
| `docs/` | Tutorials, how-to guides, reference material, and explanations (Diataxis framework) |
| `policies/` | HR, security, compliance, data governance, and operations policies |
| `workflows/` | Step-by-step process guides for project lifecycle, onboarding, sales, and quality |
| `templates/` | Reusable document templates for every content type |
| `marketing/` | Brand standards, case studies, blog posts, social media, and whitepapers |
| `client-delivery/` | Proposals, SOWs, presentations, and reports (sensitive content) |
| `legal/` | NDAs, MSAs, IP agreements, and contract lifecycle materials |
| `project-management/` | Charters, risk registers, status reports, change requests, and lessons learned |
| `recruiting/` | Job descriptions, resumes, sizzle sheets, interview guides, and rate sheets |
| `training/` | Programs, certifications, lunch-and-learn sessions, and resources |
| `financial/` | Rate cards, pricing models, estimations, and budgets |
| `knowledge/` | FAQs, knowledge articles, decision logs, and tips |
| `_archive/` | Deprecated and superseded content (preserved for retention) |

**How to browse:**
1. Start at the top-level directory that matches your need.
2. Open the `README.md` in that directory for an index of available documents.
3. Navigate into subdirectories for more specific content.
4. Use the frontmatter `tags` field to understand the document's scope.

## 2. Using MkDocs Search

The knowledge base is published as a documentation site using MkDocs Material.
The site provides full-text search across all documents.

**To search the published site:**
1. Navigate to the MkDocs site at [PLACEHOLDER: MkDocs URL].
2. Click the search bar (or press `/` or `s` as keyboard shortcuts).
3. Type your search terms and results appear instantly.
4. Click a result to navigate to the document.

**To search locally:**
1. Run `mkdocs serve` from the repository root.
2. Open `http://127.0.0.1:8000` in your browser.
3. Use the same search functionality as the published site.

**Search tips:**
- Use specific terms: "HIPAA breach notification" rather than "compliance"
- Use quotes for exact phrases: `"sprint retrospective"`
- Search works across document titles, headings, and body text

## 3. Understanding Frontmatter

Every document in the knowledge base has YAML frontmatter at the top (between `---` markers).
Frontmatter provides metadata about the document and drives the quality and lifecycle systems.

### Key Frontmatter Fields

| Field | Purpose | Example |
|-------|---------|---------|
| `title` | Document title (used in site navigation) | "Sprint Planning Workflow" |
| `status` | Lifecycle status | draft, review, approved, stale, archived |
| `category` | Content type classification | policy, workflow, how-to, tutorial, reference |
| `tags` | Searchable keywords | ["hipaa", "compliance", "security"] |
| `reviewers` | GitHub handles of assigned reviewers | ["@derailed3"] |
| `next-review` | Date when the document must be reviewed for freshness | "2027-01-30" |
| `version` | Document version number | "1.0" |
| `effective-date` | When the document becomes active | "2026-01-30" |
| `supersedes` | Path to the document this one replaces | "" |

### Status Lifecycle

```
draft --> review --> approved --> stale --> archived
```

- **draft:** Initial creation; not yet reviewed
- **review:** Submitted for peer review via PR
- **approved:** Reviewed and accepted; the current authoritative version
- **stale:** The `next-review` date has passed without an update
- **archived:** No longer current; moved to `_archive/[year]/`

## 4. Using Claude Code Skills

Claude Code skills automate common knowledge base tasks.
Type `/` followed by the skill name in Claude Code to invoke a skill.

### Content Generation Skills

| Skill | What It Creates |
|-------|----------------|
| `/new-policy` | Policy document from template |
| `/new-proposal` | Client proposal |
| `/new-sow` | Statement of work |
| `/new-guide` | How-to guide |
| `/new-workflow` | Workflow document |
| `/new-case-study` | Marketing case study |
| `/new-blog-post` | Blog post |
| `/new-retrospective` | Sprint/project retrospective |
| `/new-project-charter` | Project charter |

### Quality and Validation Skills

| Skill | What It Does |
|-------|-------------|
| `/run-btv` | Runs the Build-Test-Validate quality pipeline on a document |
| `/validate-document` | Validates a single document against standards |
| `/review-brand-compliance` | Checks brand and style guide compliance |

### Utility Skills

| Skill | What It Does |
|-------|-------------|
| `/export-to-word` | Converts Markdown to Word using Pandoc |
| `/import-from-word` | Converts Word to Markdown |
| `/explore-knowledge` | Searches the knowledge base |
| `/onboard-client` | Walks through the client onboarding checklist |
| `/format-resume` | Formats a resume to PPC template |
| `/generate-sizzle` | Creates a consultant sizzle sheet |

See `CLAUDE.md` for the complete skills index.

## 5. The BTV Quality Process

BTV (Build-Test-Validate) is the quality pipeline every document must pass before reaching `approved` status.

### Stage 1: BUILD

Checks structural validity:
- YAML frontmatter is present and all required fields are populated
- All internal links resolve to actual files
- Document renders correctly in MkDocs

### Stage 2: TEST

Checks content quality:
- Spelling passes (no errors)
- Style guide compliance (preferred terminology, consistent voice)
- Cross-references are intact
- Structural conventions followed (ATX headers, one sentence per line)

### Stage 3: VALIDATE

Checks brand and compliance:
- Brand terminology and tone are correct
- Document follows its category's template structure
- Policy documents have required compliance mappings
- No PHI, PII, or sensitive data included

### Running BTV

```
/run-btv path/to/document.md
```

Or validate all documents in a directory:

```
/run-btv docs/how-to/
```

Documents receive a score from 0-100.
The target for approval is 90 or above.

## 6. Review Cycles

All documents have a scheduled review cycle based on their content type.

| Content Type | Review Frequency |
|-------------|-----------------|
| Policies | Every 12 months |
| Workflows | Every 12 months |
| Marketing content | Every 6 months |
| Templates | Every 6 months |
| Client deliverables | No scheduled review (archive after engagement) |

### How the Review Process Works

1. The `next-review` date in frontmatter indicates when a review is due.
2. When a review is due, the document owner (from `reviewers`) is responsible for updating it.
3. If the `next-review` date passes without an update, the document status changes to `stale`.
4. To complete a review:
   - Read the document thoroughly
   - Update any outdated information
   - Change `updated` to today's date
   - Set a new `next-review` date
   - Increment the version number
   - Submit a PR for review
5. Compliance documents (`policies/compliance/`, `policies/security/`, `policies/data-governance/`) require **2 approvals** on the PR.

## 7. Staleness Management

Stale documents are those whose `next-review` date has passed.
The knowledge base uses automated detection to flag stale content.

**What to do with stale documents:**
1. Review the document and update any outdated information.
2. If the document is still relevant, update the frontmatter and submit a PR.
3. If the document is no longer needed, change status to `archived` and move to `_archive/[year]/`.
4. Never delete documents from git history (especially compliance content with HIPAA's 6-year retention requirement).

## 8. Contributing New Content

1. **Start from a template.** Always copy the appropriate template from `templates/` rather than starting from scratch.
2. **Use a skill if available.** Claude Code skills pre-fill templates with relevant content.
3. **Follow naming conventions.** Kebab-case filenames, 50-character max.
4. **Create a branch.** `git checkout -b feat/your-change`
5. **Run BTV before submitting.** `/run-btv path/to/your-document.md`
6. **Submit a PR.** CODEOWNERS will auto-assign reviewers.
7. **Address feedback.** Iterate until approved.

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for detailed contribution guidelines.

## 9. What NOT to Include

The knowledge base must never contain:
- **PHI/PII:** No patient names, SSNs, MRNs, dates of birth, or other identifiable health information
- **Credentials:** No passwords, API keys, tokens, or secrets
- **Binary office files:** Use Markdown; export to Word only for delivery
- **Client-identifiable data:** Use `[PLACEHOLDER: description]` for any client-specific information

## 10. Getting Help

| Need | Where to Go |
|------|------------|
| How to use Git and the KB | [Getting Started](getting-started.md) |
| Full onboarding walkthrough | [Team Onboarding Guide](team-onboarding.md) |
| Contribution rules | [CONTRIBUTING.md](../../CONTRIBUTING.md) |
| Quality standards | [Document Quality Standards](../../workflows/quality/document-standards.md) |
| Terminology questions | [Glossary](../reference/glossary.md) |
| Find the right skill | [CLAUDE.md](../../CLAUDE.md) -- Skills Index |
| Report an issue | Open a GitHub Issue in the repository |
| Ask a colleague | [PLACEHOLDER: communication tool] channel: #knowledge-base |

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial knowledge base usage tutorial | [Approver] |
