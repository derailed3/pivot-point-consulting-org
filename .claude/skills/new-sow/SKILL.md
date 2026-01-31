---
name: "new-sow"
description: "Generates statements of work with scope, deliverables, timeline, and fees. Use when the user asks to create a SOW, statement of work, or work order. Searches for related proposals and uses contractual language."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Statement of Work

Generate a statement of work (SOW) for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the SOW template** from `templates/sow-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Search for related proposals** in `client-delivery/proposals/` to find any existing proposal that this SOW should align with. If found, read the proposal to extract scope, deliverables, and pricing details.

5. **Ask the user** for the following inputs (if not already provided):
   - **Client name**: The client this SOW is for.
   - **Engagement type**: One of `staff-augmentation`, `project-based`, or `advisory`.
   - **Scope summary**: What work is being performed.
   - **Related proposal**: Reference to an existing proposal document, if applicable.

6. **Check for duplicates** by scanning `client-delivery/sow/[year]/` for existing SOWs for the same client. Alert the user if a potential duplicate is found.

7. **Generate the SOW document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: SOW title
     - `client`: Client name
     - `sow-number`: [PLACEHOLDER]
     - `engagement-type`: The selected type
     - `status`: draft
     - `effective-date`: [PLACEHOLDER]
     - `end-date`: [PLACEHOLDER]
     - `author`: [PLACEHOLDER]
     - `version`: 1.0
   - **Overview**: Brief description of the engagement and reference to the governing MSA or proposal.
   - **Scope of Work**: Detailed description of the services to be provided.
     - For **staff-augmentation**: Role descriptions, reporting structure, work location, hours.
     - For **project-based**: Phases, tasks, and deliverables with acceptance criteria.
     - For **advisory**: Assessment areas, deliverables, and cadence.
   - **Deliverables**: Numbered list of all deliverables with descriptions and acceptance criteria.
   - **Timeline and Milestones**: Table with milestone name, target date, and dependencies.
   - **Resource Requirements**: Team composition, roles, and allocation percentages.
   - **Fees and Payment Terms**: Rate tables or fixed fees, invoicing schedule, expense policy. Mark all financial figures with [PLACEHOLDER].
   - **Assumptions**: Key assumptions that underpin the SOW.
   - **Out of Scope**: Explicitly excluded items.
   - **Change Management**: Process for handling scope changes.
   - **Governance**: Escalation paths, meeting cadence, reporting requirements.
   - **Acceptance and Signatures**: Signature blocks for both parties.

8. **Remind the user** that this document requires legal review before being sent to the client. Include a visible note: `> **LEGAL REVIEW REQUIRED**: This SOW must be reviewed by legal counsel before client distribution.`

9. **Write the file** to `client-delivery/sow/[year]/[kebab-case-client]-[kebab-case-topic].md` where `[year]` is the current year.

10. **Update the directory README** at `client-delivery/sow/[year]/README.md` by adding the new SOW to the index list. If the README does not exist, create it with a header and the first entry.

11. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-sow", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "client": "<client-name>", "engagement-type": "<type>"}
    ```
