---
name: "new-proposal"
description: "Generates client engagement proposals for staff augmentation, project-based, or advisory engagements. Use when the user asks to create a proposal, pitch, or client offering. Supports all three PPC delivery models."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Client Engagement Proposal

Generate a client engagement proposal for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the proposal template** from `templates/proposal-template.md` to understand the required document structure.

3. **Read the messaging framework** from `marketing/brand/messaging-framework.md` for positioning language and value propositions.

4. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

5. **Ask the user** for the following inputs (if not already provided):
   - **Client context**: Client name, industry vertical, current state, and pain points.
   - **Engagement type**: One of `staff-augmentation`, `project-based`, or `advisory`.
   - **Scope**: High-level description of the work to be performed.

6. **Check for duplicates** by scanning `client-delivery/proposals/` for existing proposals for the same client or similar scope. Alert the user if a potential duplicate is found.

7. **Generate the proposal document** with the following structure:
   - **Frontmatter** (YAML):
     - `title`: Proposal title
     - `client`: Client name
     - `engagement-type`: The selected delivery model
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `version`: 1.0
   - **Cover Page**: Client name, proposal title, date, PPC branding.
   - **Executive Summary**: High-level overview of the engagement, client needs, and proposed approach.
   - **Understanding of Needs**: Detailed description of the client's challenges and objectives.
   - **Proposed Approach**: Methodology and delivery model details.
     - For **staff-augmentation**: Include role descriptions, team composition, onboarding plan, and management structure.
     - For **project-based**: Include phases, deliverables, milestones, and acceptance criteria.
     - For **advisory**: Include assessment framework, recommendation approach, and deliverable cadence.
   - **Team and Qualifications**: Proposed team members, qualifications, and relevant experience.
   - **Timeline**: High-level project timeline or engagement duration.
   - **Investment**: Pricing structure appropriate to the engagement type. Mark all figures with [PLACEHOLDER].
   - **Terms and Conditions**: Standard terms summary.
   - **Why Pivot Point Consulting**: Key differentiators and relevant case studies.
   - **Next Steps**: Clear call to action.

8. **Mark all client-specific details** with `[PLACEHOLDER]` where actual data is needed from the client or internal stakeholders.

9. **Write the file** to `client-delivery/proposals/[year]/[kebab-case-client]-[kebab-case-topic].md` where `[year]` is the current year.

10. **Update the directory README** at `client-delivery/proposals/[year]/README.md` by adding the new proposal to the index list. If the README does not exist, create it with a header and the first entry.

11. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-proposal", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "client": "<client-name>", "engagement-type": "<type>"}
    ```
