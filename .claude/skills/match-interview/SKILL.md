---
name: "match-interview"
description: "Generates tailored interview questions by matching a job description against a consultant resume. Use when the user asks to generate interview questions, match a candidate, or prepare for an interview."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Tailored Interview Questions

Follow these steps to generate interview questions by matching a job description against a consultant resume.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Get Input Documents

Ask the user for:

1. **Job Description** — File path or pasted text describing the role requirements
2. **Resume** — File path or pasted text of the candidate's resume

Read both documents. If file paths are provided, read the files. Use Glob to search `recruiting/resumes/` if the user provides only a consultant name.

## Step 3: Analyze Skill Gaps and Matches

Compare the job description requirements against the resume:

- **Strong Matches** — Skills, experience, and certifications that directly align
- **Partial Matches** — Related but not exact experience (e.g., similar EHR system, adjacent domain)
- **Gaps** — Required skills or experience not evident in the resume
- **Bonus Qualifications** — Resume strengths that exceed JD requirements

Calculate an overall **Match Score**: Strong / Moderate / Weak based on the ratio of matches to requirements.

## Step 4: Generate Interview Questions

Generate questions for four interview stages:

### Stage 1: Screen (Recruiter / HR)
Focus on culture fit, availability, salary expectations, and logistics.

- 3-4 culture fit questions aligned with PPC values
- Availability and start date
- Salary/rate expectations
- Relocation or travel willingness
- Right-to-work confirmation

### Stage 2: Basic / 1st Round (Hiring Manager)
Focus on behavioral STAR questions, role motivation, and team dynamics.

- 4-5 behavioral questions using STAR format (Situation, Task, Action, Result)
- 2-3 questions about motivation for the role
- 2-3 questions about team dynamics and collaboration
- Questions should probe areas identified as partial matches or gaps

### Stage 3: Technical / 2nd Round (Technical Lead / SME)
Focus on domain-specific technical knowledge, scenario-based problems, and tool proficiency.

- 4-6 domain-specific technical questions based on JD requirements
- 2-3 scenario-based problems ("How would you handle...")
- 2-3 tool proficiency questions for required systems (Epic, Cerner, ServiceNow, etc.)
- Questions should specifically probe identified gaps

### Stage 4: Client Interview (Client Stakeholder)
Focus on client-facing preparation.

- 3-4 client-specific prep notes and talking points for the consultant
- 2-3 likely client questions with suggested responses
- Key engagement context the consultant should understand
- Communication and presentation tips

## Step 5: Generate Additional Outputs

- **Risk Areas** — Specific concerns based on gaps, with suggested follow-up questions
- **Follow-Up Questions** — Deeper probes for each stage based on likely responses
- **Match Score Summary** — Overall assessment: Strong / Moderate / Weak with justification

## Step 6: Write the File

Write the file to:

```
recruiting/interview-guides/[consultant-name]-[role-slug].md
```

Include full YAML frontmatter:

```yaml
---
title: "Interview Guide — [Consultant Name] for [Role]"
type: interview-guide
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
consultant-name: "[PLACEHOLDER]"
role: "[PLACEHOLDER]"
match-score: "[strong|moderate|weak]"
next-review: "YYYY-MM-DD"
tags:
  - interview
  - recruiting
---
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 7: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "match-interview", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created", "match-score": "<strong|moderate|weak>"}
```
