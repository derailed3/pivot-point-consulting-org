---
name: "new-competitor-analysis"
description: "Generates competitor profiles and market positioning analysis. Use when the user asks to analyze a competitor, create a competitive profile, or write a win/loss report."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Competitor Analysis

Generate a competitor analysis or win/loss report for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the competitor analysis template** from `templates/competitor-analysis-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Competitor name**: The company being analyzed.
   - **Analysis type**: `competitor-profile` or `win-loss-report`.
   - **Engagement context** (for win/loss): The specific deal or engagement being analyzed.

5. **Check for duplicates** by scanning `competitive-intelligence/competitors/` and `competitive-intelligence/win-loss/[year]/` for existing analyses of the same competitor. Alert the user if one already exists and ask whether to update the existing document or create a new one.

6. **Generate the competitor analysis document** with the following sections:

   **For Competitor Profiles:**
   - **Frontmatter** (YAML):
     - `title`: Competitor profile title
     - `competitor`: Competitor name
     - `type`: competitor-profile
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `last-updated`: Current date
   - **Company Overview**: Headquarters, founding year, size, revenue (if public), key leadership, recent news.
   - **Services and Offerings**: What they offer, organized by practice area or service line. Compare to PPC's offerings.
   - **Target Market**: Industries, client sizes, and geographies they focus on.
   - **Strengths**: What they do well, competitive advantages, notable wins.
   - **Weaknesses**: Known gaps, client complaints, market perception issues.
   - **Differentiation vs. PPC**: Direct comparison table showing how PPC differentiates:
     - Capability area
     - Competitor position
     - PPC position
     - PPC advantage
   - **Pricing Intelligence**: Known pricing models, rate ranges, and positioning (premium / mid-market / value). Mark unverified data with [UNVERIFIED].
   - **Strategic Implications**: What PPC should do in response -- messaging adjustments, capability investments, partnership opportunities.

   **For Win/Loss Reports:**
   - **Frontmatter** (YAML):
     - `title`: Win/Loss report title
     - `competitor`: Competitor name
     - `type`: win-loss-report
     - `outcome`: win | loss
     - `client`: [PLACEHOLDER or anonymized]
     - `date`: Current date
     - `status`: draft
   - **Engagement Summary**: What the opportunity was and who competed.
   - **Outcome**: Win or loss, and the margin of the decision.
   - **Key Decision Factors**: What drove the client's decision (ranked).
   - **Competitor Approach**: How the competitor positioned themselves.
   - **PPC Approach**: How PPC positioned, what was proposed.
   - **Lessons Learned**: What to replicate (wins) or change (losses).
   - **Action Items**: Specific follow-up actions.

7. **Write the file** to the appropriate path:
   - Competitor profiles: `competitive-intelligence/competitors/[kebab-case-competitor].md`
   - Win/loss reports: `competitive-intelligence/win-loss/[year]/[kebab-case-competitor]-[win-or-loss]-[brief-context].md`

8. **Update the directory README** at the target directory's `README.md` by adding the new analysis to the index. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-competitor-analysis", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "competitor": "<competitor-name>", "type": "<analysis-type>"}
   ```
