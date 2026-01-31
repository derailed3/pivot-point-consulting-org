---
name: "new-contract-review"
description: "Generates contract review checklists for legal review of agreements. Use when the user asks to create a contract review checklist, legal review template, or agreement review guide."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Contract Review Checklist

Follow these steps to generate a new contract review checklist.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/contract-review-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `legal/review-checklists/` for existing checklists. Alert the user if a similar checklist already exists for the same document type.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Document Type** — MSA, SOW, NDA, SLA, vendor agreement, subcontractor agreement, etc.
- **Counterparty** — Who is the other party to the agreement
- **Key Terms to Verify** — Specific terms or clauses of concern
- **Risk Areas** — Known risk areas for this type of agreement
- **Compliance Requirements** — HIPAA, HITRUST, SOC 2, state-specific regulations
- **Financial Terms** — Payment terms, rate cards, penalties, caps
- **IP / Work Product** — Ownership, licensing, work-for-hire provisions
- **Approval Authority** — Who has authority to approve and sign

## Step 4: Generate the Contract Review Checklist

Using the template structure, generate the checklist with these sections:

1. **Document Overview** — Contract type, parties, effective date, reviewer, review date.
2. **Key Terms Verification** — Checklist table with: Term, Expected Value, Actual Value, Status (OK / Issue / Missing), Notes.
3. **Risk Areas** — Table with: Risk Category, Description, Severity (H/M/L), Recommendation.
4. **Compliance Requirements** — Checklist of regulatory and certification requirements:
   - HIPAA BAA present and adequate
   - HITRUST obligations addressed
   - SOC 2 requirements specified
   - Data handling and breach notification
   - State-specific requirements
5. **Financial Terms Review** — Payment terms, rate structures, expense policies, caps, penalties, true-up provisions.
6. **IP and Work Product** — Ownership of deliverables, pre-existing IP carve-outs, licensing terms, open source obligations.
7. **Liability and Indemnification** — Limitation of liability, indemnification obligations, insurance requirements.
8. **Term and Termination** — Duration, renewal, termination for convenience/cause, wind-down obligations.
9. **Approval Authority** — Table with: Approval Level, Threshold, Approver, Status.
10. **Sign-Off** — Reviewer name, date, recommendation (approve / approve with changes / reject), conditions.

Include full YAML frontmatter:

```yaml
---
title: "Contract Review — [Document Type] — [Counterparty]"
type: contract-review
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
document-type: "[PLACEHOLDER]"
counterparty: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - contract-review
  - legal
---
```

## Step 5: Write the File

Write the file to:

```
legal/review-checklists/[document-type]-[counterparty-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-contract-review", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
