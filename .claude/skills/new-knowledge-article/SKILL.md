---
name: "new-knowledge-article"
description: "Generates internal knowledge articles for the organizational wiki. Use when the user asks to create a knowledge article, wiki page, or internal reference document."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Internal Knowledge Article

Follow these steps to generate a new knowledge article.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/knowledge-article-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `knowledge/articles/` for existing articles on the same topic. Use Grep to search for overlapping content. Alert the user if a similar article exists and suggest updating or linking rather than duplicating.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Title** — Descriptive article title
- **Summary** — One to two sentence overview
- **Full Content** — The body of the article
- **Prerequisites** — What the reader needs before following the article (if applicable)
- **Steps** — Ordered procedure if the article is a how-to (if applicable)
- **Audience** — Target readers (e.g., all employees, engineering, consultants)
- **Related Articles** — Links to related knowledge articles or FAQ entries
- **Tags** — Keywords for discoverability

## Step 4: Generate the Knowledge Article

Using the template structure, generate the article with these sections:

1. **Summary** — One to two sentence overview of what this article covers and who it is for.
2. **Prerequisites** — Bulleted list of required knowledge, access, or tools (omit if not applicable).
3. **Content Body** — Full article content. Use headings, lists, code blocks, and tables as appropriate. Aim for clarity and scannability.
4. **Steps** — Numbered procedure if the article is instructional (omit if not applicable).
5. **Examples** — Concrete examples, screenshots references, or sample outputs if helpful.
6. **Related Articles** — Bulleted list of links to related articles.
7. **Revision History** — Table with date, author, and change description.

Include full YAML frontmatter:

```yaml
---
title: "[Article Title]"
type: knowledge-article
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
audience: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - knowledge
  - [topic-tags]
---
```

## Step 5: Write the File

Write the file to:

```
knowledge/articles/[title-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-knowledge-article", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
