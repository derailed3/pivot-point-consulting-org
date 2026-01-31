---
title: "Writing Style Guide"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "brand"
tags: ["brand", "style-guide", "writing", "voice"]
reviewers: ["@derailed3"]
next-review: "2026-07-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
---

# Writing Style Guide

## Voice and Tone

### Brand Voice

[PLACEHOLDER: Brand voice characteristics (e.g., authoritative yet approachable, technical but accessible)]

### Tone by Context

| Context | Tone | Example |
|---------|------|---------|
| Client proposals | Professional, confident | [PLACEHOLDER] |
| Blog posts | Thought leadership, approachable | [PLACEHOLDER] |
| Policies | Formal, clear, directive | [PLACEHOLDER] |
| Internal comms | Warm, direct, inclusive | [PLACEHOLDER] |
| Social media | Engaging, concise, action-oriented | [PLACEHOLDER] |

## Healthcare IT Terminology

### Preferred Terms

| Use This | Not This |
|----------|----------|
| Healthcare IT | Health IT, HIT |
| Electronic health record (EHR) | Electronic medical record (EMR) -- unless specifically referring to EMR |
| Protected health information (PHI) | Patient data (too vague in compliance contexts) |
| Interoperability | Integration (when referring to HL7/FHIR standards) |
| Pivot Point Consulting | PPC (in external-facing content; PPC acceptable internally) |

### Acronym Usage

- Spell out on first use: "Health Insurance Portability and Accountability Act (HIPAA)"
- After first use, acronym only: "HIPAA requires..."
- Common acronyms that do not need spelling out internally: PHI, EHR, HIPAA, FHIR, HL7

### Industry Terms Glossary Reference

See `docs/reference/glossary.md` for the full organizational terminology glossary.

## Formatting Standards

### Document Structure

- Use ATX headers (`#`, `##`, `###`) -- never setext (underline) headers
- Maximum 4 header levels (H1 through H4)
- One sentence per line for cleaner git diffs
- Single blank line between sections

### Lists

- Use `-` for unordered lists (not `*` or `+`)
- Use `1.` for ordered lists (auto-numbered)
- Indent nested lists with 2 spaces

### Tables

- Use pipe syntax with header separator
- Align columns with spaces for readability in source

### Links

- Use relative paths for internal links: `[Policy](../policies/hr/pto-policy.md)`
- Use descriptive link text: `[PTO Policy](...)` not `[click here](...)`

### Emphasis

- **Bold** for key terms on first use, UI elements, and required actions
- *Italic* for document titles, publication names, and light emphasis
- `Code` for file names, commands, and technical terms

## Numbers and Dates

- Spell out one through nine; use numerals for 10 and above
- Dates: YYYY-MM-DD in frontmatter, "January 30, 2026" in prose
- Percentages: use numeral + % (e.g., 15%)
- Currency: $X,XXX.XX format

## Compliance Writing

### PHI/PII Rules

- **Never** include real patient names, SSNs, MRNs, or DOBs
- Use `[PLACEHOLDER: description]` for any data you do not have
- When referencing PHI examples, use clearly fictional data

### Legal Disclaimers

[PLACEHOLDER: Standard disclaimer text for proposals, SOWs, and external documents]

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial style guide structure | [Approver] |
