---
title: "Getting Started with the Knowledge Base"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "tutorial"
tags: ["tutorial", "getting-started", "onboarding"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Getting Started with the Knowledge Base

## Overview

This tutorial walks you through setting up your local environment and making your first contribution to the Pivot Point Consulting knowledge base.

## Prerequisites

- GitHub account with repository access (request from your manager or IT)
- Git installed on your computer
- A text editor (VS Code recommended)

## Step 1: Clone the Repository

```bash
git clone https://github.com/derailed3/pivot-point-consulting-org.git
cd pivot-point-consulting-org
```

## Step 2: Set Up Local Documentation Preview (Optional)

To preview the documentation site locally:

```bash
pip install -r requirements.txt
mkdocs serve
```

Open `http://127.0.0.1:8000` in your browser.
The site auto-reloads when you save changes.

## Step 3: Install Pandoc (Optional)

For Word import/export functionality:

```bash
# Windows (Chocolatey)
choco install pandoc

# Windows (winget)
winget install pandoc
```

## Step 4: Understand the Structure

Browse the top-level directories to understand where content lives:

- `policies/` -- Organizational policies
- `marketing/` -- Brand and content
- `client-delivery/` -- Client-facing deliverables
- `workflows/` -- Internal processes
- `templates/` -- Document templates
- `docs/` -- Documentation and guides

See `CLAUDE.md` for the complete directory map.

## Step 5: Make Your First Contribution

1. **Create a branch**: `git checkout -b feat/your-change`
2. **Start from a template**: Copy the relevant template from `templates/`
3. **Fill in the content**: Replace `[PLACEHOLDER]` markers with real content
4. **Ensure frontmatter**: Every `.md` file needs YAML frontmatter
5. **Submit a PR**: `git push -u origin feat/your-change` then create a PR on GitHub

## Step 6: Using Claude Code Skills

If you have Claude Code installed, you can use skills to generate content:

```
/new-policy        -- Create a policy document
/new-proposal      -- Create a client proposal
/new-guide         -- Create a how-to guide
/format-resume     -- Format a resume to PPC template
/run-btv           -- Validate a document
```

Type `/` in Claude Code to see all available skills.

## Next Steps

- Read the full [Team Onboarding Guide](team-onboarding.md)
- Review [CONTRIBUTING.md](../../CONTRIBUTING.md) for detailed guidelines
- Check [Document Quality Standards](../../workflows/quality/document-standards.md) for the quality bar

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial tutorial | [Approver] |
