---
name: "new-faq"
description: "Generates FAQ entries with short and detailed answers organized by topic. Use when the user asks to create an FAQ, frequently asked question, or Q&A document."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate FAQ Entry

Follow these steps to generate a new FAQ entry.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/faq-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `knowledge/faq/` for existing FAQ entries. Use Grep to search for similar questions or topics. Alert the user if a duplicate or closely related FAQ already exists and suggest updating the existing entry instead.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Topic** — Category or subject area (e.g., Benefits, IT, Onboarding, Consulting)
- **Question** — The exact question as a user would ask it
- **Short Answer** — One to two sentence summary answer
- **Detailed Answer** — Full explanation with context, steps, or examples
- **Related Articles** — Links to other FAQ entries or knowledge articles
- **Audience** — Who typically asks this question (employees, clients, consultants)

## Step 4: Generate the FAQ Entry

Using the template structure, generate the FAQ entry with these sections:

1. **Question** — Clear, natural-language question.
2. **Short Answer** — Concise answer (1-2 sentences) suitable for quick reference or search snippets.
3. **Detailed Answer** — Full explanation including:
   - Context or background
   - Step-by-step instructions if applicable
   - Examples or scenarios
   - Edge cases or exceptions
4. **Related Articles** — Bulleted list of links to related FAQ entries or knowledge articles.
5. **Last Verified** — Date the answer was last confirmed accurate.
6. **Contact** — Who to reach out to if the answer does not resolve the question.

Include full YAML frontmatter:

```yaml
---
title: "[Question]"
type: faq
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
topic: "[PLACEHOLDER]"
audience: "[employees|clients|consultants|all]"
last-verified: "YYYY-MM-DD"
next-review: "YYYY-MM-DD"
tags:
  - faq
  - [topic]
---
```

## Step 5: Write the File

Write the file to:

```
knowledge/faq/[topic]-[question-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-faq", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
