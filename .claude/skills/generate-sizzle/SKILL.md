---
name: "generate-sizzle"
description: "Generates client-facing consultant sizzle sheets highlighting key achievements and expertise. Use when the user asks to create a sizzle sheet, consultant write-up, or client-facing profile."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Consultant Sizzle Sheet

Follow these steps to generate a client-facing consultant sizzle sheet.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/sizzle-sheet-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Get Consultant Information

Ask the user for the consultant's name or the path to an existing resume.

If a resume path is provided, read the resume file to extract relevant information. Also use Glob to search `recruiting/resumes/` for existing formatted resumes if only a name is provided.

## Step 3: Extract Key Highlights

From the resume or provided information, extract:

- **Consultant Name**
- **Role / Title** at PPC
- **Years of Experience** in healthcare IT consulting
- **Key Achievements** — The most impressive, quantifiable accomplishments (5-7)
- **Relevant Experience** — Top 3 most relevant engagements or projects
- **Certifications** — Most notable certifications (e.g., Epic, Cerner, PMP, CISSP)
- **Education** — Highest degree and institution
- **Standout Differentiators** — What makes this consultant unique

## Step 4: Generate the Sizzle Sheet

Write in PPC brand voice (professional, confident, client-focused). The sizzle sheet is a one-page marketing document, so be concise and impactful.

Structure:

1. **Consultant Name** — Prominent header.
2. **Role / Title** — Current role at Pivot Point Consulting.
3. **Professional Summary** — 3-4 sentences that sell the consultant's expertise. Focus on outcomes delivered, not just duties performed. Use third person ("Jane brings 15 years of...").
4. **Key Highlights** — 5-7 achievement-oriented bullets. Each bullet should:
   - Start with an action verb
   - Include a quantified result where possible
   - Be relevant to the target client or engagement
5. **Relevant Experience** — Top 3 engagements with:
   - Client type (e.g., "Large Academic Medical Center" — no real client names)
   - Engagement scope
   - Key outcomes
6. **Certifications and Education** — Combined section with notable credentials.

### Writing Guidelines:

- Use third person throughout
- No real client names — use descriptive labels ("500-bed community hospital")
- Quantify outcomes wherever possible
- Focus on healthcare IT relevance
- Keep to one page equivalent (~400-500 words)
- Match PPC brand voice: knowledgeable, approachable, results-oriented

Include full YAML frontmatter:

```yaml
---
title: "Sizzle Sheet — [Consultant Name]"
type: sizzle-sheet
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
consultant-name: "[Full Name]"
current-role: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - sizzle-sheet
  - recruiting
  - client-facing
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
recruiting/sizzle-sheets/[year]/[consultant-name-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "generate-sizzle", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "source": "<resume-path-if-applicable>"}
```
