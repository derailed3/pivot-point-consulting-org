---
name: "new-retrospective"
description: "Generates retrospective documents for sprints or project milestones. Use when the user asks to create a retrospective, retro, or lessons learned. Placeholder-heavy for team input."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Retrospective

Generate a retrospective document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the retrospective template** from `templates/retrospective-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Project or sprint context**: Project name, sprint number, or milestone being reviewed.
   - **Time period**: The dates covered by this retrospective.
   - **Team**: Who participated in this sprint or milestone.
   - **Any initial input**: Known items for what went well or what to improve (optional).

5. **Check for duplicates** by scanning `project-management/lessons-learned/[year]/` for existing retrospectives for the same project or sprint. Alert the user if one already exists.

6. **Generate the retrospective document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Retrospective title (e.g., "Project Alpha - Sprint 4 Retrospective")
     - `project`: Project name
     - `sprint`: Sprint number or milestone name
     - `date`: Current date
     - `facilitator`: [PLACEHOLDER]
     - `participants`: [PLACEHOLDER - list of team members]
     - `status`: draft
   - **Context**: Brief summary of the sprint/milestone, including goals, scope, and key events.
   - **What Went Well**:
     - Bulleted list with placeholder items for team input:
       ```
       - [TEAM INPUT: Add items that went well]
       - [TEAM INPUT: Add items that went well]
       - [TEAM INPUT: Add items that went well]
       ```
     - If the user provided initial input, include those items.
   - **What Could Improve**:
     - Bulleted list with placeholder items for team input:
       ```
       - [TEAM INPUT: Add items that could improve]
       - [TEAM INPUT: Add items that could improve]
       - [TEAM INPUT: Add items that could improve]
       ```
     - If the user provided initial input, include those items.
   - **Action Items**: Table with columns:
     - Action Item
     - Owner: [PLACEHOLDER]
     - Priority (High/Medium/Low)
     - Target Date: [PLACEHOLDER]
     - Status (Open/In Progress/Done)
   - **Metrics**:
     - Velocity: [PLACEHOLDER]
     - Planned vs. Completed: [PLACEHOLDER]
     - Defects Found: [PLACEHOLDER]
     - Team Satisfaction: [PLACEHOLDER - 1-5 scale]
   - **Lessons Learned**: Summary of key takeaways that should be carried forward to future sprints or projects.
   - **Follow-Up from Previous Retrospective**: Status of action items from the last retrospective (if applicable).

7. **Write the file** to `project-management/lessons-learned/[year]/[kebab-case-project]-[sprint-or-milestone].md` where `[year]` is the current year.

8. **Update the directory README** at `project-management/lessons-learned/[year]/README.md` by adding the new retrospective to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-retrospective", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "project": "<project-name>", "sprint": "<sprint-or-milestone>"}
   ```
