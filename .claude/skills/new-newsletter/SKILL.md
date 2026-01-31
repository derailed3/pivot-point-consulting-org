---
name: "new-newsletter"
description: "Generates internal company newsletter issues with highlights, spotlights, and events. Use when the user asks to create a newsletter, company update digest, or internal bulletin."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Internal Company Newsletter

Follow these steps to generate a new internal newsletter issue.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/newsletter-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `internal-comms/newsletters/` for existing newsletter issues. Determine the next issue number by finding the highest existing issue number and incrementing by one.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Issue Number** — Auto-determine if not provided
- **Publication Date** — Target distribution date
- **Executive Message** — Brief message from leadership
- **Company Highlights** — Key wins, milestones, or updates (3-5 items)
- **Team Spotlights** — Employee or team recognitions
- **Upcoming Events** — Dates, descriptions, registration links
- **Industry News** — Relevant healthcare IT or consulting news
- **Knowledge Sharing** — Tips, best practices, or learning resources

## Step 4: Generate the Newsletter

Using the template structure, generate the newsletter with these sections:

1. **Header** — Newsletter title, issue number, date, tagline.
2. **Executive Message** — 2-3 paragraph message from leadership. Warm, motivating tone.
3. **Company Highlights** — Bulleted or card-style list of 3-5 achievements or updates.
4. **Team Spotlights** — 1-2 team or individual features with brief descriptions.
5. **Upcoming Events** — Table or list with event name, date, location/link, description.
6. **Industry News** — 2-3 summaries of relevant industry developments with links.
7. **Knowledge Sharing** — Tips, recommended reading, or training opportunities.
8. **Closing** — Call to action, feedback link, next issue preview.

Include full YAML frontmatter:

```yaml
---
title: "PPC Newsletter — Issue [N]"
type: newsletter
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
issue-number: [N]
publication-date: "YYYY-MM-DD"
next-review: "YYYY-MM-DD"
tags:
  - newsletter
  - internal-comms
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
internal-comms/newsletters/[year]/issue-[NNN].md
```

Use zero-padded three-digit issue numbers (e.g., `issue-001.md`). Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-newsletter", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
