---
name: "review-brand-compliance"
description: "Reviews documents for brand voice, messaging alignment, and terminology consistency. Use when the user asks to check brand compliance, review tone, or verify messaging alignment."
user-invocable: true
allowed-tools: ["Read", "Glob", "Grep"]
---

# Review Brand Compliance

Follow these steps to review a document for brand voice, messaging alignment, and terminology consistency.

## Step 1: Get Target File

Ask the user for the file path of the document to review. Read the file.

## Step 2: Load Brand Standards

1. Read `marketing/brand/style-guide.md` for voice, tone, and terminology standards.
2. Read `marketing/brand/messaging-framework.md` for approved messaging and positioning.
3. Read `.claude/feedback/patterns.md` for proven patterns.

## Step 3: Check Company Name Consistency

Scan the document for all references to the company. Verify:

- "Pivot Point Consulting" is used for full name references
- "PPC" is acceptable as an abbreviation after first full use
- No incorrect variations (e.g., "Pivot Point", "PivotPoint", "Pivot Point Consulting, LLC" in non-legal contexts)
- Consistent capitalization throughout

Report each instance with line number and whether it passes or fails.

## Step 4: Check Preferred Terminology

Compare the document against the style guide's preferred and banned terms:

- **Preferred terms** — Verify usage of approved terminology for services, capabilities, and market segments
- **Banned terms** — Flag any use of deprecated, incorrect, or competitor-associated terms
- **Industry jargon** — Verify healthcare IT terminology is used correctly and consistently
- **Acronyms** — First use should be spelled out with the acronym in parentheses

Report each finding with the term found, the preferred alternative (if applicable), and the line number.

## Step 5: Check Voice and Tone

Evaluate the document's voice and tone against the style guide:

- **Voice characteristics** — Knowledgeable, approachable, results-oriented, trustworthy
- **Tone appropriate for context** — More formal for proposals and policies; warmer for internal comms and culture content
- **Active voice** — Flag excessive passive voice usage
- **Person consistency** — Consistent use of first/second/third person appropriate to the document type
- **Jargon density** — Flag sections that are overly technical without explanation

Provide specific examples of passages that align well and passages that need adjustment.

## Step 6: Check Messaging Alignment

Compare key claims and positioning statements against the messaging framework:

- **Value propositions** — Do they align with approved messaging?
- **Differentiators** — Are PPC's stated differentiators represented accurately?
- **Target audience** — Is the language appropriate for the intended reader?
- **Proof points** — Are claims supported by evidence or examples?

## Step 7: Output Findings

Present the review results as a formatted report:

1. **File Reviewed** — Document path and title.
2. **Overall Brand Compliance** — High / Medium / Low with summary.
3. **Company Name Usage** — Table with: Instance, Line, Status, Correction Needed.
4. **Terminology Findings** — Table with: Term Found, Line, Status, Preferred Alternative.
5. **Voice and Tone Assessment** — Narrative evaluation with specific examples.
6. **Messaging Alignment** — Assessment of how well the document aligns with approved messaging.
7. **Suggested Rewrites** — For each issue found, provide a specific rewrite suggestion showing the original text and the recommended revision.
8. **Summary** — Total issues found, categorized by severity (must-fix, should-fix, nice-to-have).
