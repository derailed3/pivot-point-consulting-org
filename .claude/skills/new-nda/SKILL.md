---
name: "new-nda"
description: "Generates non-disclosure agreement templates in mutual or one-way format. Use when the user asks to create an NDA, confidentiality agreement, or non-disclosure document."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Non-Disclosure Agreement Template

Follow these steps to generate a new NDA template.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/nda-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `legal/nda/` for existing NDA templates. Alert the user if a similar NDA already exists for the same parties or purpose.

## Step 3: Gather Required Context

**First, ask the user:** Is this a **mutual** NDA (both parties share confidential information) or a **one-way** NDA (only one party discloses)?

Then ask for the following information (use `[PLACEHOLDER]` for anything not provided):

- **NDA Type** — Mutual or one-way
- **Parties** — Disclosing party and receiving party (or both parties if mutual)
- **Purpose** — What business relationship or project necessitates the NDA
- **Definition of Confidential Information** — Specific categories or scope
- **Term** — Duration of the confidentiality obligation (e.g., 2 years, 5 years)
- **Exclusions** — Standard exclusions (publicly known, independently developed, etc.)
- **Governing Law** — Jurisdiction

## Step 4: Generate the NDA

Using the template structure, generate the NDA with these sections:

1. **Header** — Document title, NDA type, effective date.
2. **Parties** — Full legal names, addresses, and roles (Disclosing Party / Receiving Party, or Party A / Party B for mutual).
3. **Recitals** — Brief statement of purpose and why confidentiality is needed.
4. **Definition of Confidential Information** — Detailed scope of what is covered. Include standard categories (technical, business, financial, customer data).
5. **Exclusions from Confidential Information** — Standard carve-outs:
   - Information that becomes publicly available through no fault of the receiving party
   - Information already known to the receiving party
   - Information independently developed
   - Information disclosed by a third party without restriction
6. **Obligations of Receiving Party** — Use reasonable measures to protect, limit access to need-to-know, no unauthorized disclosure.
7. **Term and Termination** — Duration of the agreement and survival period of obligations.
8. **Return or Destruction of Information** — Requirements upon termination.
9. **Remedies** — Injunctive relief, damages, attorney fees.
10. **General Provisions** — Entire agreement, amendments, severability, assignment, notices, governing law.
11. **Signature Block** — Spaces for authorized signatures, printed names, titles, dates.

**Important:** Include a prominent disclaimer:

> **DISCLAIMER: This is a template for reference purposes only. It does not constitute legal advice. All NDAs must be reviewed and approved by legal counsel before execution.**

Include full YAML frontmatter:

```yaml
---
title: "[Mutual|One-Way] NDA — [Party/Purpose]"
type: nda
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
nda-type: "[mutual|one-way]"
parties: ["[PLACEHOLDER]"]
term: "[PLACEHOLDER]"
requires-legal-review: true
next-review: "YYYY-MM-DD"
tags:
  - nda
  - legal
  - confidentiality
---
```

## Step 5: Write the File

Write the file to:

```
legal/nda/[nda-type]-[party-or-purpose-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Remind About Legal Review

After writing the file, explicitly remind the user:

> "This NDA template has been generated as a starting point. It **must** be reviewed and approved by legal counsel before being sent to any external party."

## Step 7: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-nda", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "note": "requires-legal-review"}
```
