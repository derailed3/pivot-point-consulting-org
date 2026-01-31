---
name: "new-risk-register"
description: "Generates risk registers with probability, impact, mitigation, and ownership. Use when the user asks to create a risk register, risk assessment, or risk log."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Risk Register

Generate a risk register for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the risk register template** from `templates/risk-register-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Project or engagement context**: The project, engagement, or initiative this risk register is for.
   - **Known risks**: Any risks already identified that should be included.
   - **Risk categories**: Areas to focus on (e.g., technical, organizational, schedule, budget, compliance, resource).

5. **Check for duplicates** by scanning `project-management/risk-registers/[year]/` for existing risk registers for the same project. Alert the user if one already exists and ask whether to update or create new.

6. **Generate the risk register document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Risk register title
     - `project`: Project or engagement name
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `last-reviewed`: Current date
     - `version`: 1.0
     - `total-risks`: Number of risks identified
     - `critical-risks`: Number of critical risks (score >= 15)
   - **Overview**: Brief description of the project and the purpose of this risk register. Include the risk management approach and review cadence.
   - **Risk Matrix Visualization**:
     ```
     Impact →     1-Minimal  2-Minor  3-Moderate  4-Major  5-Critical
     Probability
     5-Almost Certain   5        10       15         20       25
     4-Likely            4         8       12         16       20
     3-Possible          3         6        9         12       15
     2-Unlikely          2         4        6          8       10
     1-Rare              1         2        3          4        5

     Score Ranges: Low (1-4) | Medium (5-9) | High (10-15) | Critical (16-25)
     ```
   - **Risk Register Table**: Markdown table with columns:
     - ID (e.g., R-001, R-002)
     - Risk Description
     - Category (Technical / Organizational / Schedule / Budget / Compliance / Resource)
     - Probability (1-5)
     - Impact (1-5)
     - Score (Probability x Impact)
     - Priority (Low / Medium / High / Critical)
     - Owner: [PLACEHOLDER]
     - Mitigation Strategy
     - Contingency Plan
     - Status (Open / Mitigating / Closed / Accepted)
     - Date Identified
     - Target Resolution Date: [PLACEHOLDER]
   - **Risk Summary**:
     - Total risks: Count
     - By priority: Critical / High / Medium / Low counts
     - By category: Breakdown
     - Open vs. closed
   - **Top Risks**: Detailed analysis of the top 3-5 highest-scoring risks, each with:
     - Full description of the risk
     - Root cause analysis
     - Detailed mitigation plan
     - Contingency plan
     - Trigger indicators (how to know the risk is materializing)
   - **Risk Review Log**: Table to track risk review meetings:
     - Date: [PLACEHOLDER]
     - Attendees: [PLACEHOLDER]
     - Risks added
     - Risks closed
     - Risks escalated
     - Key decisions

7. **Pre-populate the risk register** with 5-8 common risks relevant to the project type if the user has not provided specific risks. Use healthcare IT consulting context for risk identification.

8. **Write the file** to `project-management/risk-registers/[year]/[kebab-case-project]-risk-register.md` where `[year]` is the current year.

9. **Update the directory README** at `project-management/risk-registers/[year]/README.md` by adding the new risk register to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-risk-register", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "project": "<project-name>", "total-risks": <count>, "critical-risks": <count>}
    ```
