---
name: "new-project-charter"
description: "Generates project charter documents with objectives, scope, milestones, and governance. Use when the user asks to create a project charter, project initiation, or engagement kickoff document."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Project Charter

Generate a project charter document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the project charter template** from `templates/project-charter-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Project name**: The name of the project or engagement.
   - **Project sponsor**: The executive sponsor or client stakeholder.
   - **Project type**: Internal initiative, client engagement, or hybrid.
   - **High-level objectives**: What the project aims to achieve.

5. **Check for duplicates** by scanning `project-management/charters/[year]/` for existing charters for the same project. Alert the user if one already exists.

6. **Generate the project charter** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Charter title
     - `project`: Project name
     - `sponsor`: Project sponsor
     - `project-manager`: [PLACEHOLDER]
     - `status`: draft
     - `date`: Current date
     - `version`: 1.0
     - `priority`: high | medium | low
   - **Project Name**: Official project name.
   - **Project Sponsor**: Name and title of the executive sponsor.
   - **Project Manager**: [PLACEHOLDER]
   - **Objectives**: Numbered list of 3-5 SMART objectives (Specific, Measurable, Achievable, Relevant, Time-bound).
   - **Scope**:
     - **In Scope**: Bulleted list of what is included in the project.
     - **Out of Scope**: Bulleted list of what is explicitly excluded.
   - **Key Milestones**: Table with:
     - Milestone name
     - Target date: [PLACEHOLDER]
     - Description
     - Dependencies
   - **Budget**:
     - Total budget: [PLACEHOLDER]
     - Budget breakdown by category (labor, tools, travel, etc.): [PLACEHOLDER]
     - Contingency reserve: [PLACEHOLDER]
   - **Team Structure**: Table with:
     - Role
     - Name: [PLACEHOLDER]
     - Responsibility
     - Allocation (%)
   - **Risks**: Table with top 5-10 project risks:
     - Risk description
     - Probability (Low / Medium / High)
     - Impact (Low / Medium / High)
     - Mitigation strategy
     - Owner: [PLACEHOLDER]
   - **Assumptions**: Numbered list of key assumptions that must hold true for the project to succeed.
   - **Constraints**: Known constraints (timeline, budget, resources, technology, regulatory).
   - **Dependencies**: External dependencies that the project relies on.
   - **Success Criteria**: Measurable criteria that define project success. Each criterion should be testable.
   - **Governance**:
     - Steering committee composition: [PLACEHOLDER]
     - Meeting cadence (e.g., weekly status, biweekly steering)
     - Decision-making authority matrix
     - Escalation process
     - Reporting requirements
   - **Approval**: Signature blocks for sponsor, project manager, and key stakeholders.

7. **Write the file** to `project-management/charters/[year]/[kebab-case-project]-charter.md` where `[year]` is the current year.

8. **Update the directory README** at `project-management/charters/[year]/README.md` by adding the new charter to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-project-charter", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "project": "<project-name>", "sponsor": "<sponsor>"}
   ```
