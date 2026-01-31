---
name: "new-training-program"
description: "Generates structured training programs with modules and assessments. Use when the user asks to create a training program, course, or curriculum. Includes objectives, modules, and completion criteria."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Training Program

Generate a structured training program for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the training program template** from `templates/training-program-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Training topic**: The subject of the training (e.g., "Epic EHR Fundamentals", "HIPAA Compliance", "Project Management Essentials").
   - **Target audience**: Who will take this training (e.g., new consultants, project managers, all staff).
   - **Delivery format**: Instructor-led, self-paced, blended, or virtual.
   - **Duration**: Expected total time commitment.

5. **Check for duplicates** by scanning `training/programs/` for existing programs on the same topic. Alert the user if a similar program exists.

6. **Generate the training program document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Program title
     - `topic`: Training topic
     - `audience`: Target audience
     - `format`: Delivery format
     - `duration`: Total duration
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `version`: 1.0
   - **Program Overview**: Brief description of the program, its purpose, and expected outcomes.
   - **Learning Objectives**: Numbered list of specific, measurable objectives (use Bloom's taxonomy verbs):
     - "Upon completion, participants will be able to..."
   - **Target Audience**: Detailed description of who should attend, including:
     - Role types
     - Experience level
     - Prerequisites
   - **Prerequisites**: What participants need before starting:
     - Required knowledge
     - Required certifications
     - Required tool access
   - **Modules**: Numbered modules, each containing:
     - Module title
     - Duration
     - Learning objectives specific to this module
     - Topics covered (bulleted list)
     - Activities or exercises
     - Key resources or references
   - **Assessment Methods**: How learning will be evaluated:
     - Knowledge checks (quizzes, tests)
     - Practical exercises or labs
     - Capstone project or demonstration
     - Passing criteria
   - **Completion Criteria**: What constitutes successful completion:
     - Attendance requirements
     - Assessment score thresholds
     - Practical demonstration requirements
   - **Materials and Resources**: List of required materials, tools, and reference documents.
   - **Facilitator Notes**: Guidance for the instructor or facilitator (if instructor-led).

7. **Write the file** to `training/programs/[kebab-case-title].md`.

8. **Update the directory README** at `training/programs/README.md` by adding the new program to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-training-program", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<program-title>", "audience": "<audience>"}
   ```
