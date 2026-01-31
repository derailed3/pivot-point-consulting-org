---
title: "How to Create a Client Proposal"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "how-to"
tags: ["how-to", "proposal", "client-delivery", "business-development"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
difficulty: "INTERMEDIATE"
estimated-time: "2-4 hours"
---

# How To: Create a Client Proposal

## Overview

This guide walks you through creating a client proposal for a Pivot Point Consulting engagement.
Proposals are the primary vehicle for presenting our capabilities, approach, and investment to prospective clients.
By the end of this guide, you will have a polished proposal document ready for review and delivery.

## Prerequisites

- [ ] Client requirements are understood (from discovery call, RFP, or intake form)
- [ ] Engagement type is determined (staff augmentation, project-based, or advisory)
- [ ] Appropriate PPC team members have been identified for the engagement
- [ ] Access to the PPC knowledge base repository
- [ ] Access to the proposal template and boilerplate content
- [ ] Pricing guidance from the Account Lead or Finance (see `financial/rate-cards/`)

## Steps

### Step 1: Determine the Delivery Model

Before starting the proposal, confirm which delivery model fits the client's needs.

| Delivery Model | Description | Typical Use Case |
|---------------|-------------|-----------------|
| **Staff Augmentation** | PPC consultants embedded in the client's team | Client has a defined project but needs specialized skills |
| **Project-Based** | Defined scope, deliverables, milestones, and fixed/capped fees | Client needs a specific outcome delivered end-to-end |
| **Advisory** | Expert guidance and recommendations without hands-on implementation | Client needs strategic direction, assessments, or roadmaps |

The delivery model determines which proposal sections to include and how to frame the investment.

### Step 2: Generate the Proposal Document

Use one of the following methods to start the proposal:

**Option A: Claude Code Skill**
```
/new-proposal
```
Follow the prompts to provide client name, engagement type, and key details.
The skill will generate a pre-filled proposal based on the template.

**Option B: Manual Template Copy**
1. Copy `templates/proposal-template.md` to `client-delivery/proposals/[year]/[client-name]-proposal.md`
2. Update the frontmatter with the correct client and engagement details
3. Begin filling in each section

### Step 3: Fill In the Client Context

Complete the following sections with client-specific information:

1. **Executive Summary** -- Summarize the client's challenge and PPC's proposed approach in 2-3 paragraphs.
Focus on the client's pain points and desired outcomes, not PPC's capabilities.
2. **Client Background** -- Brief overview of the client organization, their industry segment, current state, and strategic goals.
3. **Understanding of Needs** -- Demonstrate that PPC understands the specific requirements by paraphrasing what was learned during discovery.

> **Note:** Never include real PHI, PII, or confidential client data in the proposal stored in the knowledge base.
> Use `[PLACEHOLDER: client-specific detail]` for any sensitive information.

### Step 4: Select Applicable Sections by Delivery Model

Different delivery models emphasize different proposal sections.

| Section | Staff Aug | Project-Based | Advisory |
|---------|:---------:|:-------------:|:--------:|
| Scope of Work | Brief | Detailed | Moderate |
| Deliverables | N/A | Detailed with milestones | Recommendations / Reports |
| Timeline | Duration-based | Milestone-based | Phase-based |
| Team Structure | Resource profiles | Full team org chart | Lead advisor + support |
| Approach/Methodology | Client-directed | PPC-defined | Assessment framework |
| Pricing | Hourly/weekly rates | Fixed/capped with payment schedule | Retainer or phase-based |

Remove or minimize sections that do not apply to the engagement type.

### Step 5: Add Team Bios

Include consultant bios for the proposed team:

1. Reference boilerplate content from `marketing/content/` or recruiting sizzle sheets from `recruiting/sizzle-sheets/`.
2. Tailor each bio to highlight experience relevant to the client's industry and needs.
3. Include certifications relevant to the engagement (e.g., Epic certified, HITRUST practitioner).
4. Keep each bio to 150-200 words.

If sizzle sheets do not exist for proposed team members, use `/generate-sizzle` to create them.

### Step 6: Add the Pricing / Investment Section

1. Reference the appropriate rate card from `financial/rate-cards/`.
2. Frame pricing as an "Investment" rather than "Cost" -- emphasize the value delivered.
3. Include:
   - Fee structure (hourly, fixed, retainer, etc.)
   - Payment terms and schedule
   - Expenses policy (travel, tools, etc.)
   - Assumptions and exclusions
4. For project-based engagements, tie payments to milestones where possible.

> **Important:** All pricing must be approved by the Account Lead or [PLACEHOLDER: Finance contact] before inclusion in the proposal.

### Step 7: Run BTV Validation

Before submitting for review, validate the proposal quality:

```
/run-btv client-delivery/proposals/[year]/[client-name]-proposal.md
```

The BTV pipeline checks:
- Frontmatter completeness and validity
- Internal link resolution
- Spelling and style guide compliance
- Brand compliance (terminology, tone)
- Template structure adherence

Fix any issues flagged by BTV before proceeding.

### Step 8: Submit for Internal Review

1. Create a branch: `git checkout -b feat/proposal-[client-name]`
2. Commit the proposal: `git add client-delivery/proposals/[year]/[client-name]-proposal.md`
3. Push and create a PR targeting `main`
4. Add reviewers:
   - Account Lead (for client relationship and strategy)
   - Practice Lead (for technical accuracy and approach)
   - [PLACEHOLDER: Finance reviewer] (for pricing approval)
5. Address review feedback and iterate until approved

### Step 9: Export to Word for Client Delivery

Once approved, export the proposal to Word format for delivery to the client:

```
/export-to-word client-delivery/proposals/[year]/[client-name]-proposal.md
```

This uses Pandoc to convert the Markdown to a formatted Word document using PPC's branded template.
Review the exported document for formatting issues before sending.

## Expected Outcome

- A complete, branded client proposal in Markdown (source of truth in the knowledge base)
- An exported Word document ready for client delivery
- All pricing approved by the appropriate stakeholders
- Proposal has passed BTV quality validation

## Troubleshooting

| Issue | Possible Cause | Resolution |
|-------|---------------|------------|
| BTV fails on brand compliance | Non-standard terminology or tone used | Review the style guide; replace flagged terms |
| Pandoc export has formatting issues | Complex tables or images not rendering | Simplify tables; ensure images use relative paths |
| Pricing section incomplete | Rate card not available for this engagement type | Contact [PLACEHOLDER: Finance contact] for rate guidance |
| Team bios not available | New consultants without sizzle sheets | Run `/generate-sizzle` to create bios |

## Related Guides

- [Proposal Template](../../templates/proposal-template.md)
- [SOW Template](../../templates/sow-template.md)
- [Document Quality Standards](../../workflows/quality/document-standards.md)
- [Getting Started with the Knowledge Base](../tutorials/getting-started.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial how-to guide for proposals | [Approver] |
