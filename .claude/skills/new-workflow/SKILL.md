---
name: "new-workflow"
description: "Generates process workflow documents with roles, decision points, and metrics. Use when the user asks to create a workflow, process, procedure, or SOP. Uses IF/THEN format for decision points."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Process Workflow

Generate a process workflow document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the workflow template** from `templates/workflow-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Process name**: The name of the workflow (e.g., "Client Onboarding", "Change Request Approval").
   - **Trigger**: What initiates this workflow (e.g., "New client contract signed", "Change request submitted").
   - **Category**: The workflow category (e.g., `client-delivery`, `internal-operations`, `hr`, `finance`, `sales`).

5. **Check for duplicates** by scanning `workflows/[category]/` for existing workflows with similar names or overlapping scope. Alert the user if a potential duplicate is found.

6. **Generate the workflow document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Workflow title
     - `category`: Workflow category
     - `status`: draft
     - `owner`: [PLACEHOLDER]
     - `date`: Current date
     - `last-reviewed`: Current date
     - `version`: 1.0
     - `trigger`: What initiates the workflow
     - `tags`: Relevant keywords
   - **Purpose**: Why this workflow exists and what outcome it produces.
   - **Trigger**: Detailed description of what initiates the workflow and any preconditions.
   - **Roles**: Table of roles involved in the workflow:
     - Role name
     - Responsibility in this workflow
     - RACI designation (Responsible, Accountable, Consulted, Informed)
   - **Inputs**: Bulleted list of information, documents, or artifacts needed to start the workflow.
   - **Steps**: Numbered process steps, each containing:
     - Step description
     - Responsible role
     - Expected output
     - Decision points in **IF/THEN** format:
       ```
       IF [condition], THEN [action/next step].
       IF [alternative condition], THEN [alternative action/next step].
       ```
   - **Outputs**: Bulleted list of deliverables, artifacts, or state changes produced by the workflow.
   - **Definition of Done**: Clear criteria that must be met for the workflow to be considered complete.
   - **Exceptions**: Known scenarios that deviate from the standard flow and how to handle them.
   - **Metrics**: Table of KPIs to measure workflow effectiveness:
     - Metric name
     - Target value
     - Measurement method
     - Frequency

7. **Write the file** to `workflows/[category]/[kebab-case-name].md`.

8. **Update the directory README** at `workflows/[category]/README.md` by adding the new workflow to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-workflow", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<workflow-title>", "category": "<category>"}
   ```
