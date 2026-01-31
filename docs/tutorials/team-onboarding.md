---
title: "Team Onboarding Guide"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "tutorial"
tags: ["tutorial", "onboarding", "knowledge-base", "contributing", "hipaa", "btv"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Team Onboarding Guide

## Overview

Welcome to the Pivot Point Consulting knowledge base.
This guide walks you through everything you need to know to become an effective contributor.
It is organized as a 10-section reference that you can work through sequentially or jump to specific sections as needed.

---

## 1. Getting Access

Before you can contribute, you need access to the following systems:

| System | Purpose | How to Get Access |
|--------|---------|-------------------|
| GitHub | Knowledge base repository | Organization invite from IT or your manager |
| Git (local) | Version control for making changes | Install from https://git-scm.com |
| Text editor | Editing Markdown files | VS Code recommended (https://code.visualstudio.com) |
| MkDocs (local) | Preview documentation site locally | `pip install -r requirements.txt` |
| Claude Code (optional) | AI-assisted content generation and validation | Install CLI; API key from [PLACEHOLDER: admin process] |

### First-Time Setup

```bash
# Clone the repository
git clone https://github.com/derailed3/pivot-point-consulting-org.git
cd pivot-point-consulting-org

# (Optional) Set up local documentation preview
pip install -r requirements.txt
mkdocs serve
# Open http://127.0.0.1:8000 in your browser
```

For detailed setup instructions, see [Getting Started](getting-started.md).

---

## 2. Understanding the Structure

The knowledge base is organized into functional business areas.
Content follows the **Diataxis framework** (tutorials, how-to guides, reference, explanation) within the `docs/` directory, combined with functional directories for specific business areas.

### Key Directories

| Directory | What Lives Here | Example Content |
|-----------|----------------|-----------------|
| `docs/tutorials/` | Learning-oriented guides | Getting started, using the KB, team onboarding |
| `docs/how-to/` | Task-oriented procedures | Create a proposal, run a retro, HIPAA risk assessment |
| `docs/reference/` | Information-oriented lookups | Glossary, service catalog, tool inventory |
| `docs/explanation/` | Understanding-oriented discussion | Architecture decisions, design rationale |
| `policies/` | Organizational policies | HR, security, compliance, data governance |
| `workflows/` | Step-by-step processes | Sprint planning, onboarding, disaster recovery |
| `templates/` | Reusable document templates | 24+ templates for all content types |
| `client-delivery/` | Client-facing deliverables | Proposals, SOWs, presentations (SENSITIVE) |
| `marketing/` | Brand and content marketing | Case studies, blog posts, brand standards |

Every directory has a `README.md` that serves as its index.
Start there when exploring a new area.

### File Organization Principles

- **Kebab-case filenames:** `sprint-planning.md`, not `SprintPlanning.md`
- **50-character max** for filenames (excluding `.md`)
- **Year subdirectories** for date-sensitive content: `proposals/2026/`
- **Folder structure provides context**, not filename prefixes

---

## 3. Your First Contribution

The best way to learn is by doing.
Follow these steps to make your first contribution:

1. **Create a branch:**
   ```bash
   git checkout -b feat/your-name-first-contribution
   ```

2. **Pick a small task:**
   - Fix a typo you noticed
   - Add a missing tag to a document's frontmatter
   - Update a `README.md` index with a missing file
   - Add a term to the glossary

3. **Make your change** in your text editor.

4. **Commit your change:**
   ```bash
   git add path/to/changed-file.md
   git commit -m "docs: fix typo in sprint planning workflow"
   ```

5. **Push and create a PR:**
   ```bash
   git push -u origin feat/your-name-first-contribution
   ```
   Then create a Pull Request on GitHub targeting the `main` branch.

6. **Wait for review.** CODEOWNERS will auto-assign reviewers.
   Address any feedback and iterate until approved.

> **Tip:** Your first PR does not need to be perfect.
> The review process is a learning opportunity.
> Ask questions in the PR comments if anything is unclear.

---

## 4. Using Claude Code Skills

Claude Code provides 46 skills that automate common knowledge base tasks.
If you have Claude Code installed, type `/` followed by the skill name.

### Most-Used Skills for New Contributors

| Skill | What It Does | When to Use |
|-------|-------------|-------------|
| `/new-guide` | Creates a how-to guide from template | When documenting a new procedure |
| `/new-workflow` | Creates a workflow document | When defining a new process |
| `/new-policy` | Creates a policy document | When formalizing organizational rules |
| `/run-btv` | Validates a document against quality standards | Before submitting any PR |
| `/validate-document` | Validates a single document | Quick check on one file |
| `/explore-knowledge` | Searches the knowledge base | Finding existing content |
| `/export-to-word` | Converts Markdown to Word | Preparing client deliverables |

### How Skills Work

1. Type the skill command (e.g., `/new-guide`) in Claude Code.
2. Claude reads the relevant template from `templates/` and patterns from `.claude/feedback/patterns.md`.
3. Claude generates a pre-filled document based on your input.
4. Review the output, fill in remaining `[PLACEHOLDER]` markers, and submit via PR.

Skills always generate Markdown with proper frontmatter.
They follow the same templates and conventions that manual contributions should follow.

---

## 5. Local Preview with MkDocs

MkDocs renders the knowledge base as a searchable documentation website.
Running it locally lets you preview your changes before pushing.

### Setup

```bash
# From the repository root
pip install -r requirements.txt
mkdocs serve
```

Open `http://127.0.0.1:8000` in your browser.
The site auto-reloads when you save changes to any Markdown file.

### What to Check

- Your new document appears in the navigation
- Headings render correctly
- Tables display properly
- Internal links work (click them)
- Search finds your document (type keywords in the search bar)

---

## 6. Quality Standards (BTV)

Every document in the knowledge base must pass the Build-Test-Validate (BTV) quality pipeline before it can be approved.

### The Three Stages

| Stage | What It Checks | Common Failures |
|-------|---------------|-----------------|
| **BUILD** | Frontmatter valid, links resolve, renders correctly | Missing required frontmatter fields, broken links |
| **TEST** | Spelling, style guide compliance, cross-references, structure | Spelling errors, non-standard terminology, inconsistent headers |
| **VALIDATE** | Brand compliance, template match, policy adherence | Wrong tone, missing sections from template, PHI included |

### Quality Score

Documents receive a score from 0-100:

| Score | Rating | What to Do |
|-------|--------|-----------|
| 90-100 | Excellent | Ready for approval |
| 75-89 | Good | Minor fixes recommended |
| 50-74 | Needs Work | Significant revisions required |
| 0-49 | Poor | Major rewrite needed |

### Running BTV

```bash
# In Claude Code
/run-btv path/to/your-document.md
```

Run BTV before every PR submission.
Fix any flagged issues before requesting review.

---

## 7. Review Process

### Standard Review

All changes go through Pull Requests to the `main` branch.

1. Create a PR with a clear description of what changed and why.
2. CODEOWNERS automatically assigns reviewers based on the files modified.
3. At least 1 approval is required to merge.
4. Address all review comments before merging.

### Multi-Party Review (Compliance Content)

PRs that modify compliance-sensitive content require **2 approvals** from designated reviewers.
This applies to:
- `policies/compliance/`
- `policies/security/`
- `policies/data-governance/`

This additional review layer ensures changes to compliance content are thoroughly vetted and maintains the audit trail required by HIPAA.

### CODEOWNERS

The `CODEOWNERS` file maps directories to their responsible reviewers.
When you create a PR, GitHub automatically requests reviews from the appropriate owners.
You do not need to manually add reviewers for standard PRs.

---

## 8. Self-Learning System

The knowledge base includes a self-learning feedback loop that continuously improves content quality.

### How It Works

1. **Before generating content:** Claude reads `.claude/feedback/patterns.md` for proven patterns and lessons learned.
2. **After generating content:** Output is logged to `.claude/feedback/skills-log.jsonl`.
3. **After BTV validation:** Scores are logged to `.claude/feedback/quality-scores.jsonl`.
4. **After human edits:** Corrections are logged to `.claude/feedback/corrections.jsonl`.
5. **Periodically:** Run `/summarize-feedback` to synthesize all logs into updated patterns.

### What This Means for You

- Claude gets better at generating content over time based on team feedback.
- Your corrections and edits directly improve future content generation.
- Use `/log-correction` when you make significant edits to Claude-generated content so the system can learn.

---

## 9. HIPAA Considerations

As a healthcare IT consulting firm, HIPAA compliance is woven into everything we do -- including the knowledge base.

### Rules for Knowledge Base Content

| Rule | Rationale |
|------|-----------|
| **Never include PHI/PII** | No patient names, SSNs, MRNs, DOBs, email addresses, or other identifiable information |
| **Never include real client data** | Use `[PLACEHOLDER: description]` for client-specific details |
| **Never store credentials** | No passwords, API keys, tokens, or secrets in Markdown files |
| **Respect retention requirements** | Never delete files in `policies/compliance/`, `policies/security/`, or `policies/data-governance/` -- HIPAA requires 6-year retention |
| **Repository is private** | The repo must never be made public; it contains sensitive business content |

### If You Find PHI/PII in the Repository

1. **Do not share or distribute the file.**
2. Immediately notify [PLACEHOLDER: Compliance Officer] and [PLACEHOLDER: Privacy Officer].
3. The compliance team will assess the situation and take appropriate action.
4. Do not attempt to remove it from Git history yourself (this requires specialized procedures to scrub history).

---

## 10. Getting Help

| Question | Where to Go |
|----------|------------|
| "How do I set up my environment?" | [Getting Started](getting-started.md) |
| "How do I use the knowledge base?" | [Using This Knowledge Base](using-this-knowledge-base.md) |
| "What are the contribution rules?" | [CONTRIBUTING.md](../../CONTRIBUTING.md) |
| "What quality standards must I meet?" | [Document Quality Standards](../../workflows/quality/document-standards.md) |
| "What does this term mean?" | [Glossary](../reference/glossary.md) |
| "What tools does PPC use?" | [Tool Inventory](../reference/tool-inventory.md) |
| "What services does PPC offer?" | [Service Catalog](../reference/service-catalog.md) |
| "Which Claude Code skill should I use?" | [CLAUDE.md](../../CLAUDE.md) -- Skills Index |
| "I found a problem with the KB" | Open a GitHub Issue |
| "I need help from a person" | [PLACEHOLDER: communication tool] channel: #knowledge-base |

### Key Contacts

| Role | Contact |
|------|---------|
| Knowledge Base Admin | [PLACEHOLDER] |
| Compliance Officer | [PLACEHOLDER] |
| IT Support | [PLACEHOLDER] |
| Your Mentor | Assigned during onboarding |

---

## Next Steps After Onboarding

- [ ] Complete your first contribution (Step 3 above)
- [ ] Read the [Document Quality Standards](../../workflows/quality/document-standards.md)
- [ ] Run BTV on at least one document to see how it works
- [ ] Browse 2-3 directories to familiarize yourself with existing content
- [ ] Set up MkDocs locally and search for a topic relevant to your role
- [ ] Bookmark this guide for future reference

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial team onboarding guide | [Approver] |
