---
name: "new-decision-log"
description: "Generates architectural or organizational decision records (ADRs). Use when the user asks to log a decision, create a decision record, or document an ADR."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Decision Record (ADR)

Follow these steps to generate a new architectural or organizational decision record.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/decision-log-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates and Determine Sequence

Use Glob to scan `knowledge/decision-logs/` for existing decision records. Determine the next ADR number by finding the highest existing number and incrementing by one. Check if a decision record already exists for the same topic.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Decision Title** — Concise name for the decision
- **Status** — proposed, accepted, deprecated, or superseded
- **Context** — What is the situation that requires a decision?
- **Decision** — What was decided?
- **Consequences** — What are the positive and negative outcomes?
- **Alternatives Considered** — What other options were evaluated?
- **Participants** — Who was involved in making the decision?
- **Date** — When was the decision made?

## Step 4: Generate the Decision Record

Using the template structure, generate the decision record with these sections:

1. **Title and Number** — ADR-[NNN]: [Decision Title].
2. **Status** — Current status (proposed | accepted | deprecated | superseded). If superseded, link to the replacing ADR.
3. **Date** — Decision date.
4. **Participants** — List of people involved in the decision.
5. **Context** — Describe the situation, forces at play, and why a decision is needed. Include relevant constraints, requirements, and background.
6. **Decision** — State the decision clearly and concisely. Use active voice ("We will..." or "The team decided to...").
7. **Consequences** — Two subsections:
   - **Positive** — Benefits and advantages of this decision.
   - **Negative** — Trade-offs, risks, or costs accepted.
8. **Alternatives Considered** — For each alternative: brief description, pros, cons, and reason for rejection.
9. **Related Decisions** — Links to related ADRs if applicable.
10. **Review Date** — When this decision should be revisited.

Include full YAML frontmatter:

```yaml
---
title: "ADR-[NNN]: [Decision Title]"
type: decision-record
status: "[proposed|accepted|deprecated|superseded]"
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
decision-date: "YYYY-MM-DD"
participants: ["[PLACEHOLDER]"]
next-review: "YYYY-MM-DD"
tags:
  - decision-record
  - adr
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
knowledge/decision-logs/[year]/adr-[NNN]-[title-slug].md
```

Use zero-padded three-digit ADR numbers (e.g., `adr-001-use-markdown-for-docs.md`). Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-decision-log", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
