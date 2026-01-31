---
name: "new-estimation"
description: "Generates project effort estimation documents with scope breakdown and resource allocation. Use when the user asks to create an estimation, effort estimate, or project sizing."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Project Estimation

Generate a project effort estimation document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the estimation template** from `templates/estimation-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Project scope**: High-level description of the work to be estimated.
   - **Client or engagement**: Client name or internal project identifier.
   - **Known constraints**: Timeline, budget, resource, or technology constraints.

5. **Check for duplicates** by scanning `financial/estimations/[year]/` for existing estimations for the same project. Alert the user if one already exists.

6. **Generate the estimation document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Estimation title
     - `project`: Project or engagement name
     - `client`: Client name
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `version`: 1.0
     - `confidence-level`: low | medium | high
   - **Executive Summary**: Brief overview of the project scope and total estimated effort.
   - **Scope Breakdown**: Hierarchical decomposition of the project into phases, workstreams, and tasks.
   - **Effort Estimation Table**: Markdown table with columns:
     - Phase
     - Task / Deliverable
     - Estimated Hours (Low)
     - Estimated Hours (Expected)
     - Estimated Hours (High)
     - Resources Required
     - Notes
   - **Resource Allocation**: Table mapping roles to phases:
     - Role
     - Phase 1 allocation (%)
     - Phase 2 allocation (%)
     - Phase N allocation (%)
     - Total hours
   - **Assumptions**: Numbered list of assumptions that underpin the estimates (e.g., client responsiveness, environment availability, scope stability).
   - **Risks to Estimate**: Table of risks that could affect the estimate:
     - Risk
     - Impact on estimate (hours or %)
     - Likelihood
     - Mitigation
   - **Total Summary**:
     - Total estimated hours (low / expected / high)
     - Total estimated duration
     - Total estimated cost: [PLACEHOLDER]
     - Recommended contingency buffer (typically 15-25%)

7. **Write the file** to `financial/estimations/[year]/[kebab-case-project]-estimation.md` where `[year]` is the current year.

8. **Update the directory README** at `financial/estimations/[year]/README.md` by adding the new estimation to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-estimation", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "project": "<project-name>", "confidence": "<confidence-level>"}
    ```
