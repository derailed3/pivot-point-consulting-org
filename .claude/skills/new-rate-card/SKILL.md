---
name: "new-rate-card"
description: "Generates role-based rate cards for staff augmentation engagements. Use when the user asks to create a rate card, pricing sheet, or hourly rates. Includes role descriptions and rate tables."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Rate Card

Generate a role-based rate card for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the rate card template** from `templates/rate-card-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Roles**: The roles to include in the rate card (e.g., "EHR Analyst", "Project Manager", "Integration Engineer").
   - **Engagement context**: Client name or engagement type this rate card is for.
   - **Effective period**: Start and end dates for rate validity.

5. **Check for duplicates** by scanning `financial/rate-cards/` for existing rate cards for the same client or similar role set. Alert the user if a potential duplicate is found.

6. **Generate the rate card document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Rate card title (e.g., "Staff Augmentation Rate Card - [Client/Context]")
     - `client`: Client name or "Standard"
     - `effective-date`: [PLACEHOLDER]
     - `expiration-date`: [PLACEHOLDER]
     - `status`: draft
     - `version`: 1.0
     - `confidential`: true
   - **Overview**: Brief description of the rate card purpose and applicable engagement model.
   - **Rate Table**: Markdown table with columns:
     - Role
     - Level (Junior / Mid / Senior / Lead / Principal)
     - Hourly Rate: [PLACEHOLDER]
     - Daily Rate (8 hrs): [PLACEHOLDER]
     - Weekly Rate (40 hrs): [PLACEHOLDER]
   - **Role Descriptions**: For each role in the rate table, include:
     - Role title
     - Summary of responsibilities
     - Required qualifications and certifications
     - Typical experience level
   - **Terms and Conditions**:
     - Minimum engagement duration
     - Notice period for cancellation
     - Overtime and holiday rates
     - Travel and expense policy
     - Rate escalation terms
   - **Volume Discounts** (if applicable): Discount tiers based on number of resources or engagement duration.
   - **Notes**: Any additional context or assumptions.

7. **Mark all rate figures** with `[PLACEHOLDER]` -- actual rates must be provided by finance or leadership.

8. **Write the file** to `financial/rate-cards/[kebab-case-name].md`.

9. **Update the directory README** at `financial/rate-cards/README.md` by adding the new rate card to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-rate-card", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<rate-card-title>"}
    ```
