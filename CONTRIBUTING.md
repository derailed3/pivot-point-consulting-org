---
title: "Contributing Guidelines"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "governance"
tags: ["contributing", "guidelines", "process"]
reviewers: ["@derailed3"]
next-review: "2026-07-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Contributing to the Knowledge Base

## Prerequisites

- GitHub account with repository access
- Git installed locally
- (Optional) Pandoc for Word import/export: `choco install pandoc` or `winget install pandoc`
- (Optional) Python 3.8+ for local docs preview: `pip install -r requirements.txt`

## Workflow

1. **Create a branch** from `main`: `git checkout -b feat/your-change`
2. **Make your changes** following the conventions below
3. **Submit a pull request** to `main`
4. **Wait for review** -- CODEOWNERS will be auto-assigned
5. **Address feedback** and merge when approved

### Compliance Content (Extra Review)

PRs touching `policies/compliance/`, `policies/security/`, or `policies/data-governance/` require **2 approvals** from designated compliance/security reviewers.

## Naming Conventions

- **Kebab-case filenames**: `breach-notification.md`, not `BreachNotification.md`
- **50-character max** filename length (excluding `.md`)
- **Year subdirectories** for date-sensitive content: `proposals/2026/`
- Use folder structure for context, not filename prefixes

## YAML Frontmatter

Every Markdown file requires frontmatter.
Minimum fields:

```yaml
---
title: "Your Title"
author: "Your Name"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: ""
tags: []
reviewers: []
next-review: "2026-07-30"
version: "1.0"
effective-date: ""
superseded-date: ""
supersedes: ""
template-version: "1.0"
---
```

## Using Templates

Always start from a template in `templates/`.
Templates include all required sections and frontmatter fields.

## Using Claude Code Skills

Claude Code skills automate document creation.
Type `/` followed by the skill name:

- `/new-policy` -- Create a policy document
- `/new-proposal` -- Create a client proposal
- `/new-guide` -- Create a how-to guide
- `/format-resume` -- Format a resume to PPC template
- `/run-btv` -- Validate a document

See `CLAUDE.md` for the full skills index.

## Quality Standards (BTV)

All documents go through Build-Test-Validate:

1. **Build**: Frontmatter valid, links resolve, renders correctly
2. **Test**: Spelling passes, style guide compliance
3. **Validate**: Brand compliance, template structure match

Run `/run-btv` before submitting a PR.

## What NOT to Include

- **PHI/PII**: No patient names, SSNs, MRNs, DOBs
- **Credentials**: No passwords, API keys, tokens
- **Binary office files**: Use Markdown; export to Word via `/export-to-word`
- **Client-identifiable data**: Use `[PLACEHOLDER: client name]` instead

## Local Documentation Preview

```bash
pip install -r requirements.txt
mkdocs serve
```

Opens at `http://127.0.0.1:8000` with live reload.

## Commit Messages

Use conventional commits:

- `feat: add remote work policy`
- `fix: correct HIPAA breach notification timeline`
- `docs: update onboarding guide`
- `chore: update markdownlint config`

## Getting Help

- Check `docs/tutorials/team-onboarding.md` for a full walkthrough
- Review CODEOWNERS to find the owner of a specific area
- Open a GitHub Issue using the appropriate template
