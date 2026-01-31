---
name: "new-qbr"
description: "Generates quarterly business review documents for executive leadership. Use when the user asks to create a QBR, quarterly review, or business review. Includes practice area performance and pipeline."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Quarterly Business Review

Generate a quarterly business review (QBR) document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the QBR template** from `templates/qbr-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Quarter**: Which quarter this covers (e.g., "Q1 2026").
   - **Focus areas**: Any specific areas to emphasize (e.g., a particular practice area, strategic initiative).
   - **Context**: Any notable events, wins, or challenges to highlight.

5. **Check for duplicates** by scanning `financial/budgets/[year]/` for existing QBR documents for the same quarter. Alert the user if one already exists.

6. **Generate the QBR document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: QBR title (e.g., "Q1 2026 Quarterly Business Review")
     - `quarter`: Quarter identifier
     - `fiscal-year`: Fiscal year
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `audience`: Executive leadership
     - `confidential`: true
   - **Executive Summary**: 3-5 bullet points highlighting the most critical items from the quarter -- key wins, risks, financial performance, and strategic progress.
   - **Practice Area Performance**: For each practice area, include:
     - Revenue vs. target: [PLACEHOLDER]
     - Utilization rate: [PLACEHOLDER]
     - Headcount: [PLACEHOLDER]
     - Key wins: [PLACEHOLDER]
     - Key challenges: [PLACEHOLDER]
     - Outlook: [PLACEHOLDER]
   - **Revenue Summary**: Table with:
     - Practice area
     - Target: [PLACEHOLDER]
     - Actual: [PLACEHOLDER]
     - Variance: [PLACEHOLDER]
     - Variance %: [PLACEHOLDER]
   - **Client Portfolio Health**: Summary of client health across the portfolio:
     - Total active clients: [PLACEHOLDER]
     - Green / Yellow / Red distribution: [PLACEHOLDER]
     - At-risk clients and mitigation plans: [PLACEHOLDER]
     - New clients added: [PLACEHOLDER]
     - Clients lost: [PLACEHOLDER]
   - **Key Wins**: Bulleted list of notable wins during the quarter with brief context.
   - **Key Losses and Risks**: Bulleted list of losses or emerging risks with impact assessment and mitigation plans.
   - **Pipeline Overview**: Table with:
     - Opportunity name: [PLACEHOLDER]
     - Client: [PLACEHOLDER]
     - Value: [PLACEHOLDER]
     - Probability: [PLACEHOLDER]
     - Expected close date: [PLACEHOLDER]
     - Stage: [PLACEHOLDER]
   - **Strategic Initiatives**: Status update on each strategic initiative:
     - Initiative name
     - Status (On Track / At Risk / Behind / Completed)
     - Key milestones achieved
     - Next steps
   - **Next Quarter Goals**: 5-7 specific, measurable goals for the upcoming quarter.

7. **Use `[PLACEHOLDER]` for all financial data** -- actual figures must be provided by finance and leadership.

8. **Write the file** to `financial/budgets/[year]/qbr-[quarter-lower].md` (e.g., `financial/budgets/2026/qbr-q1.md`).

9. **Update the directory README** at `financial/budgets/[year]/README.md` by adding the new QBR to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-qbr", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "quarter": "<quarter>", "fiscal-year": "<year>"}
    ```
