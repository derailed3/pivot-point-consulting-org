---
name: "new-survey"
description: "Generates employee engagement survey templates with Likert scale and open-ended questions. Use when the user asks to create a survey, employee feedback form, or engagement assessment."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Employee Engagement Survey

Follow these steps to generate a new employee engagement survey template.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/survey-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `culture/surveys/` for existing surveys. Alert the user if a similar survey already exists for the same period or topic.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Survey Title** — Name of the survey
- **Objectives** — What the survey aims to measure or learn
- **Target Audience** — Who will receive the survey (all employees, specific team, etc.)
- **Question Topics** — Areas to cover (e.g., job satisfaction, management, culture, growth)
- **Distribution Plan** — How and when the survey will be sent
- **Anonymity Level** — Fully anonymous, confidential, or identified
- **Deadline** — When responses are due

## Step 4: Generate the Survey

Using the template structure, generate the survey with these sections:

1. **Survey Overview** — Title, purpose, estimated completion time, anonymity statement.
2. **Objectives** — Bulleted list of what the survey intends to measure.
3. **Target Audience** — Description of who should complete the survey.
4. **Likert Scale Questions** — Grouped by category. Use a 5-point scale (Strongly Disagree to Strongly Agree). Include 15-25 questions covering:
   - Job Satisfaction (3-5 questions)
   - Management and Leadership (3-5 questions)
   - Culture and Values (3-5 questions)
   - Growth and Development (3-5 questions)
   - Communication (2-3 questions)
   - Work-Life Balance (2-3 questions)
5. **Open-Ended Questions** — 3-5 free-text questions for qualitative feedback.
6. **Distribution Plan** — Timeline, channel, reminders, and closing date.
7. **Analysis Framework** — How results will be analyzed (e.g., by department, by tenure, trending over time).
8. **Action Planning Template** — Structure for translating results into improvement actions: Finding, Priority, Owner, Action, Target Date.

Include full YAML frontmatter:

```yaml
---
title: "[Survey Title]"
type: survey
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
target-audience: "[PLACEHOLDER]"
anonymity: "[anonymous|confidential|identified]"
distribution-date: "YYYY-MM-DD"
closing-date: "YYYY-MM-DD"
next-review: "YYYY-MM-DD"
tags:
  - survey
  - employee-engagement
  - culture
---
```

## Step 5: Write the File

Determine the current year. Write the file to:

```
culture/surveys/[year]/[survey-title-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-survey", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
