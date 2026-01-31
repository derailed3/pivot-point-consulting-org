---
name: "new-executive-report"
description: "Generates executive summary reports for leadership on practice areas, pipeline, utilization, staffing, and strategy. Use when the user asks to create an executive report, leadership summary, or practice review."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Executive Report

Generate an executive summary report for Pivot Point Consulting leadership.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the executive report template** from `templates/executive-report-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Report focus**: What this report covers (e.g., monthly operations, practice area review, strategic update).
   - **Reporting period**: The time period covered (e.g., "January 2026", "Q1 2026").
   - **Audience**: Who will receive this report (e.g., CEO, executive team, board).

5. **Check for duplicates** by scanning `client-delivery/reports/[year]/` for existing reports for the same period and focus. Alert the user if one already exists.

6. **Generate the executive report** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Report title
     - `report-type`: The type of executive report
     - `period`: Reporting period
     - `audience`: Target audience
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `confidential`: true
   - **Executive Summary**: 5-7 bullet points summarizing the most important items. Lead with headline metrics and key decisions needed.
   - **Practice Area Summaries**: For each practice area:
     - Revenue performance: [PLACEHOLDER]
     - Active engagements: [PLACEHOLDER]
     - Key highlights
     - Key concerns
     - Outlook
   - **Pipeline Report**: Summary of the sales pipeline:
     - Total pipeline value: [PLACEHOLDER]
     - Weighted pipeline: [PLACEHOLDER]
     - Win rate: [PLACEHOLDER]
     - Average deal size: [PLACEHOLDER]
     - Notable opportunities: [PLACEHOLDER]
   - **Utilization Metrics**: Table with:
     - Practice area
     - Target utilization: [PLACEHOLDER]
     - Actual utilization: [PLACEHOLDER]
     - Billable hours: [PLACEHOLDER]
     - Non-billable hours: [PLACEHOLDER]
     - Trend (up / down / flat)
   - **Staffing Status**:
     - Current headcount: [PLACEHOLDER]
     - Open positions: [PLACEHOLDER]
     - Attrition this period: [PLACEHOLDER]
     - Hires this period: [PLACEHOLDER]
     - Contractor count: [PLACEHOLDER]
     - Bench strength: [PLACEHOLDER]
   - **Competitive Landscape**: Notable competitive dynamics, wins, losses, and market trends.
   - **Strategic Recommendations**: 3-5 actionable recommendations for leadership consideration, each with:
     - Recommendation
     - Rationale
     - Expected impact
     - Required investment or effort
     - Timeline

7. **Use `[PLACEHOLDER]` for all financial and operational data** -- actual figures must be provided by the relevant teams.

8. **Write the file** to `client-delivery/reports/[year]/[kebab-case-title]-[period].md` where `[year]` is the current year.

9. **Update the directory README** at `client-delivery/reports/[year]/README.md` by adding the new report to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-executive-report", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<report-title>", "period": "<period>"}
    ```
