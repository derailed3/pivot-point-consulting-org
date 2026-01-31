---
name: "new-announcement"
description: "Generates internal company announcements for organization-wide distribution. Use when the user asks to create an announcement, company update, or internal notice."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Internal Company Announcement

Follow these steps to generate a new internal company announcement.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/announcement-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `internal-comms/announcements/` for existing announcements on the same topic. Alert the user if a similar announcement already exists.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Subject** — Clear, concise topic of the announcement
- **Audience** — All-company, specific department, leadership, etc.
- **Key Message** — The primary takeaway (one sentence)
- **Supporting Details** — Background, rationale, or additional context
- **Action Items** — What the audience needs to do, if anything
- **Effective Date** — When the change or event takes effect
- **Contact** — Who to reach out to for questions

## Step 4: Generate the Announcement

Using the template structure, generate the announcement with these sections:

1. **Header** — Subject line, date, from, audience.
2. **Opening** — Attention-getting first sentence that states the key message.
3. **Body** — Supporting details, context, and rationale. Keep concise (aim for under 500 words).
4. **Action Items** — Numbered list of specific actions the audience should take, with deadlines if applicable.
5. **Timeline** — Key dates or milestones if relevant.
6. **Resources** — Links to related documents, FAQs, or tools.
7. **Contact Information** — Name, role, email, or channel for questions.
8. **Closing** — Brief, positive sign-off.

Include full YAML frontmatter:

```yaml
---
title: "[Subject]"
type: announcement
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
audience: "[PLACEHOLDER]"
effective-date: "YYYY-MM-DD"
next-review: "YYYY-MM-DD"
tags:
  - announcement
  - internal-comms
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
internal-comms/announcements/[year]/[subject-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-announcement", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
