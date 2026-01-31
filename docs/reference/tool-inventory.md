---
title: "Tool Inventory"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "reference"
tags: ["reference", "tools", "inventory", "software", "infrastructure"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Tool Inventory

## Overview

This document provides a comprehensive inventory of tools and platforms used by Pivot Point Consulting for internal operations, client delivery, and knowledge management.
Each entry includes the tool's purpose, the team responsible for administration, how to request access, and the cost tier.

## Tool Categories

- [Knowledge Management and Documentation](#knowledge-management-and-documentation)
- [Communication and Collaboration](#communication-and-collaboration)
- [Project Management](#project-management)
- [Development and Version Control](#development-and-version-control)
- [Client Relationship Management](#client-relationship-management)
- [Financial and Time Tracking](#financial-and-time-tracking)
- [Security and Compliance](#security-and-compliance)
- [Marketing and Content](#marketing-and-content)
- [HR and Recruiting](#hr-and-recruiting)

---

## Knowledge Management and Documentation

### GitHub

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Source control for the knowledge base, collaboration via PRs, issue tracking, project boards |
| **Category** | Core platform |
| **Owner** | [PLACEHOLDER: IT / Knowledge Base Admin] |
| **URL** | https://github.com/derailed3/pivot-point-consulting-org |
| **Access Request** | Request from hiring manager or IT; GitHub organization invite required |
| **Cost Tier** | [PLACEHOLDER: GitHub Team or GitHub Enterprise plan] |
| **Users** | All staff |
| **SSO/MFA** | [PLACEHOLDER: SSO integration details]; MFA required |

### MkDocs (Material Theme)

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Renders the Markdown knowledge base as a searchable documentation website |
| **Category** | Documentation site generator |
| **Owner** | [PLACEHOLDER: IT / Knowledge Base Admin] |
| **URL** | [PLACEHOLDER: published MkDocs site URL] |
| **Access Request** | No additional access needed beyond GitHub (site auto-builds from the repo) |
| **Cost Tier** | Free (open-source); hosting via [PLACEHOLDER: GitHub Pages or other host] |
| **Users** | All staff (read); contributors (write via Git) |
| **Local Setup** | `pip install -r requirements.txt && mkdocs serve` |

### Claude Code

| Attribute | Detail |
|-----------|--------|
| **Purpose** | AI-assisted content generation, document validation (BTV), knowledge base skills automation |
| **Category** | AI assistant |
| **Owner** | [PLACEHOLDER: Knowledge Base Admin] |
| **URL** | N/A (CLI tool) |
| **Access Request** | Install Claude Code CLI; configure with Anthropic API key from [PLACEHOLDER: API key management process] |
| **Cost Tier** | [PLACEHOLDER: Anthropic usage-based pricing or enterprise plan] |
| **Users** | Contributors and content creators |
| **Skills Available** | 46 skills -- see `CLAUDE.md` for the full index |

### Pandoc

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Converts Markdown to Word (.docx) and Word to Markdown for import/export workflows |
| **Category** | Document conversion |
| **Owner** | Self-managed (installed locally) |
| **URL** | https://pandoc.org |
| **Access Request** | Self-install: `choco install pandoc` or `winget install pandoc` |
| **Cost Tier** | Free (open-source) |
| **Users** | Anyone creating client deliverables |

---

## Communication and Collaboration

### [PLACEHOLDER: Communication Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Real-time team messaging, channels, direct messages, file sharing |
| **Category** | Communication |
| **Owner** | [PLACEHOLDER: IT Administrator] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Provisioned automatically during onboarding; request additional channels from IT |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | All staff |
| **Key Channels** | #general, #knowledge-base, #client-delivery, [PLACEHOLDER: additional channels] |

### [PLACEHOLDER: Video Conferencing Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Video meetings, screen sharing, webinars, client calls |
| **Category** | Communication |
| **Owner** | [PLACEHOLDER: IT Administrator] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Provisioned automatically during onboarding |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | All staff |
| **Recording Policy** | [PLACEHOLDER: recording and retention policy] |

### Email

| Attribute | Detail |
|-----------|--------|
| **Purpose** | External communication, formal correspondence, client communication |
| **Category** | Communication |
| **Owner** | [PLACEHOLDER: IT Administrator] |
| **URL** | [PLACEHOLDER: email system URL] |
| **Access Request** | Provisioned automatically during onboarding |
| **Cost Tier** | [PLACEHOLDER: included in productivity suite] |
| **Users** | All staff |

---

## Project Management

### [PLACEHOLDER: Project Management Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Sprint boards, backlog management, task tracking, time logging, reporting |
| **Category** | Project management |
| **Owner** | [PLACEHOLDER: PMO / Operations] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Request from Delivery Lead or PMO; provisioned per engagement |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | Delivery teams, project managers, engagement managers |
| **Key Integrations** | [PLACEHOLDER: GitHub, communication tool, time tracking] |

---

## Development and Version Control

### Git

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Version control for all knowledge base content |
| **Category** | Version control |
| **Owner** | Self-managed (installed locally) |
| **URL** | https://git-scm.com |
| **Access Request** | Self-install; included in most development environments |
| **Cost Tier** | Free (open-source) |
| **Users** | All contributors |

### Visual Studio Code

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Recommended text editor for Markdown editing, Git integration, extensions |
| **Category** | Development tool |
| **Owner** | Self-managed (installed locally) |
| **URL** | https://code.visualstudio.com |
| **Access Request** | Self-install |
| **Cost Tier** | Free |
| **Users** | All contributors |
| **Recommended Extensions** | Markdown All in One, markdownlint, YAML, GitLens |

---

## Client Relationship Management

### [PLACEHOLDER: CRM Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Pipeline management, client contact database, opportunity tracking, engagement history |
| **Category** | CRM |
| **Owner** | [PLACEHOLDER: Business Development / Sales Operations] |
| **URL** | [PLACEHOLDER: CRM URL] |
| **Access Request** | Request from BD Lead; access level depends on role |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | Business development, account leads, engagement managers |

---

## Financial and Time Tracking

### [PLACEHOLDER: Time Tracking Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Time entry, utilization tracking, billing preparation |
| **Category** | Financial |
| **Owner** | [PLACEHOLDER: Finance / Operations] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Provisioned during onboarding |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | All consultants, project managers |

### [PLACEHOLDER: Financial/Accounting System]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Invoicing, accounts receivable, budgeting, financial reporting |
| **Category** | Financial |
| **Owner** | [PLACEHOLDER: Finance Team] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Request from Finance; restricted to finance team and leadership |
| **Cost Tier** | [PLACEHOLDER: pricing tier] |
| **Users** | Finance team, leadership |

---

## Security and Compliance

### [PLACEHOLDER: Security Tool / SIEM]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Security monitoring, log aggregation, threat detection |
| **Category** | Security |
| **Owner** | [PLACEHOLDER: IT Security] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Restricted to IT security team |
| **Cost Tier** | [PLACEHOLDER: pricing tier] |
| **Users** | IT security team |

### [PLACEHOLDER: LMS / Training Platform]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | HIPAA training, compliance training, professional development courses |
| **Category** | Training and compliance |
| **Owner** | [PLACEHOLDER: HR / Compliance] |
| **URL** | [PLACEHOLDER: platform URL] |
| **Access Request** | Provisioned during onboarding; enrollment by HR |
| **Cost Tier** | [PLACEHOLDER: per-user/month or per-course pricing] |
| **Users** | All staff (mandatory HIPAA training) |

---

## Marketing and Content

### [PLACEHOLDER: Design Tool]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Graphics creation, presentation design, social media assets |
| **Category** | Marketing |
| **Owner** | [PLACEHOLDER: Marketing Team] |
| **URL** | [PLACEHOLDER: tool URL] |
| **Access Request** | Request from Marketing Lead |
| **Cost Tier** | [PLACEHOLDER: per-user/month pricing tier] |
| **Users** | Marketing team, content creators |

---

## HR and Recruiting

### [PLACEHOLDER: HRIS System]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Employee records, benefits administration, performance management |
| **Category** | HR |
| **Owner** | [PLACEHOLDER: HR Team] |
| **URL** | [PLACEHOLDER: system URL] |
| **Access Request** | Provisioned during onboarding (employee self-service); HR admin access restricted |
| **Cost Tier** | [PLACEHOLDER: per-employee/month pricing] |
| **Users** | All staff (self-service), HR team (admin) |

### [PLACEHOLDER: ATS (Applicant Tracking System)]

| Attribute | Detail |
|-----------|--------|
| **Purpose** | Job postings, candidate tracking, interview scheduling, offer management |
| **Category** | Recruiting |
| **Owner** | [PLACEHOLDER: Recruiting Team] |
| **URL** | [PLACEHOLDER: system URL] |
| **Access Request** | Request from Recruiting Lead; access for hiring managers and interviewers |
| **Cost Tier** | [PLACEHOLDER: pricing tier] |
| **Users** | Recruiting team, hiring managers |

---

## Tool Summary

| Tool | Category | Cost Tier | All Staff | Access Process |
|------|----------|-----------|:---------:|---------------|
| GitHub | Version control / KB | [PLACEHOLDER] | Yes | Org invite from IT |
| MkDocs | Documentation site | Free | Yes (read) | Auto-built from repo |
| Claude Code | AI assistant | [PLACEHOLDER] | No (contributors) | CLI install + API key |
| Pandoc | Document conversion | Free | No (as needed) | Self-install |
| [PLACEHOLDER: Comms] | Communication | [PLACEHOLDER] | Yes | Auto-provisioned |
| [PLACEHOLDER: Video] | Video conferencing | [PLACEHOLDER] | Yes | Auto-provisioned |
| [PLACEHOLDER: PM tool] | Project management | [PLACEHOLDER] | Delivery teams | Request from PMO |
| [PLACEHOLDER: CRM] | CRM | [PLACEHOLDER] | BD/Account teams | Request from BD Lead |
| [PLACEHOLDER: Time] | Time tracking | [PLACEHOLDER] | Yes | Auto-provisioned |
| [PLACEHOLDER: LMS] | Training | [PLACEHOLDER] | Yes | Auto-provisioned |
| [PLACEHOLDER: HRIS] | HR | [PLACEHOLDER] | Yes (self-service) | Auto-provisioned |

## Related Documents

- [Getting Started with the Knowledge Base](../tutorials/getting-started.md)
- [Team Onboarding Guide](../tutorials/team-onboarding.md)
- [IT Infrastructure](../../it-infrastructure/README.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial tool inventory | [Approver] |
