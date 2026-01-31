---
name: "new-interview-guide"
description: "Generates structured interview guides with behavioral and technical questions. Use when the user asks to create an interview guide, interview questions, or evaluation rubric."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Interview Guide

Generate a structured interview guide for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the interview guide template** from `templates/interview-guide-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Role**: The position being interviewed for (e.g., "Senior Epic Analyst", "Project Manager").
   - **Competency focus areas**: Key areas to evaluate (e.g., technical skills, leadership, communication, problem-solving).
   - **Interview stage**: Phone screen, first round, technical, final round, or panel.

5. **Check for duplicates** by scanning `recruiting/interview-guides/` for existing guides for the same role. Alert the user if one exists and ask whether to update or create new.

6. **Generate the interview guide** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Interview guide title
     - `role`: Role being interviewed
     - `interview-stage`: Stage of the interview process
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `version`: 1.0
   - **Role Context**: Brief description of the role, team, and what success looks like in this position. Reference the corresponding job description if available.
   - **Competency Areas**: List of 4-6 competency areas to evaluate, each with:
     - Competency name
     - Why it matters for this role
     - What "good" looks like
   - **Screen Questions** (for phone screens):
     - 5-7 qualifying questions to assess basic fit
     - Expected answers or evaluation criteria for each
   - **Behavioral Questions** (STAR format):
     - 6-10 behavioral questions organized by competency area
     - Each question formatted with:
       - The question
       - What the question assesses
       - Follow-up probes
       - What a strong answer includes (Situation, Task, Action, Result)
   - **Technical Assessment** (if applicable):
     - Scenario-based questions or exercises
     - Expected approaches or solutions
     - Evaluation criteria
   - **Scoring Rubric**: Table with columns:
     - Competency Area
     - 1 - Below Expectations
     - 2 - Meets Some Expectations
     - 3 - Meets Expectations
     - 4 - Exceeds Expectations
     - 5 - Exceptional
   - **Red Flags**: Warning signs that should raise concern:
     - Bulleted list of specific behaviors, responses, or patterns to watch for
   - **Green Flags**: Positive indicators that strengthen a candidacy:
     - Bulleted list of specific behaviors, responses, or patterns that indicate strong fit
   - **Interview Closing**: Standard closing script including:
     - Opportunity for candidate questions
     - Next steps description
     - Timeline communication

7. **Write the file** to `recruiting/interview-guides/[kebab-case-role]-[stage].md`.

8. **Update the directory README** at `recruiting/interview-guides/README.md` by adding the new guide to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-interview-guide", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "role": "<role>", "stage": "<interview-stage>"}
   ```
