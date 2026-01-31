---
name: "new-client-review"
description: "Generates client health check and relationship review documents. Use when the user asks to create a client review, health check, account review, or relationship assessment."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Client Review

Generate a client health check and relationship review document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the client review template** from `templates/client-review-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Client name**: The client being reviewed.
   - **Review period**: The time period covered (e.g., Q4 2025, H2 2025).
   - **Key contacts**: Primary client stakeholders and PPC account team.

5. **Check for duplicates** by scanning `clients/health-checks/[year]/` for existing reviews for the same client and period. Alert the user if one already exists.

6. **Generate the client review document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Review title
     - `client`: Client name
     - `review-period`: Period covered
     - `account-manager`: [PLACEHOLDER]
     - `date`: Current date
     - `status`: draft
     - `health`: green | yellow | red
   - **Client Information**:
     - Client name
     - Industry / vertical
     - Relationship start date: [PLACEHOLDER]
     - Current engagement(s): [PLACEHOLDER]
     - Annual revenue from client: [PLACEHOLDER]
     - Primary contacts: [PLACEHOLDER]
   - **Satisfaction Score**:
     - Overall satisfaction: [PLACEHOLDER - 1-10 scale]
     - NPS score: [PLACEHOLDER]
     - Last survey date: [PLACEHOLDER]
     - Key feedback themes: [PLACEHOLDER]
   - **Engagement History**: Table of current and recent engagements:
     - Engagement name
     - Type (staff-aug / project / advisory)
     - Start date
     - End date
     - Status (active / completed / on-hold)
     - Revenue: [PLACEHOLDER]
   - **Escalation Log**: Table of escalations during the review period:
     - Date
     - Issue
     - Severity (Low / Medium / High / Critical)
     - Resolution
     - Status (Open / Resolved)
   - **Risk Assessment**: Identified risks to the client relationship:
     - Risk description
     - Probability (Low / Medium / High)
     - Impact (Low / Medium / High)
     - Mitigation plan
   - **Relationship Health (RAG)**:
     - Overall: [RED / AMBER / GREEN] with justification
     - Delivery quality: [RAG]
     - Communication: [RAG]
     - Responsiveness: [RAG]
     - Value perception: [RAG]
     - Expansion potential: [RAG]
   - **Action Plan**: Table of actions to maintain or improve the relationship:
     - Action
     - Owner: [PLACEHOLDER]
     - Target date: [PLACEHOLDER]
     - Priority (High / Medium / Low)
   - **Expansion Opportunities**: Potential upsell or cross-sell opportunities identified.

7. **Write the file** to `clients/health-checks/[year]/[kebab-case-client]-review-[period].md` where `[year]` is the current year and `[period]` is the review period (e.g., "q4", "h2").

8. **Update the directory README** at `clients/health-checks/[year]/README.md` by adding the new review to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-client-review", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "client": "<client-name>", "health": "<rag-status>"}
   ```
