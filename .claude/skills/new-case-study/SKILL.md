---
name: "new-case-study"
description: "Generates marketing case studies with challenge-approach-solution-results structure. Use when the user asks to create a case study, success story, or client story. Includes quantified results placeholders."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Case Study

Generate a marketing case study for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the case study template** from `templates/case-study-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Client or engagement context**: Organization type, size, and healthcare IT focus area.
   - **Challenge**: The problem the client was facing.
   - **Solution**: What PPC delivered.
   - **Results**: Quantified outcomes (or estimates to be confirmed).
   - **Client approval status**: Whether the client has approved being named.

5. **Check for duplicates** by scanning `marketing/content/case-studies/` for existing case studies covering the same client or engagement. Alert the user if a potential duplicate is found.

6. **Generate the case study document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Case study title (compelling, outcome-focused)
     - `client`: Client name or "[ANONYMOUS - PENDING APPROVAL]"
     - `industry`: Healthcare vertical
     - `service-area`: PPC practice area
     - `status`: draft
     - `date`: Current date
     - `author`: [PLACEHOLDER]
     - `tags`: Relevant keywords
   - **At a Glance** table:
     - Client: Name or type
     - Industry: Vertical
     - Challenge: One-sentence summary
     - Solution: One-sentence summary
     - Results: Top 2-3 quantified outcomes
     - Timeline: Engagement duration
   - **Challenge**: 2-3 paragraphs describing the client's situation, pain points, and what was at stake. Focus on business impact.
   - **Approach**: How PPC assessed the situation and designed the engagement. Include methodology and team composition highlights.
   - **Solution**: What PPC delivered, including specific technologies, processes, or frameworks implemented.
   - **Results**: Quantified outcomes with metrics. Use `[PLACEHOLDER]` for any unconfirmed numbers. Include:
     - Primary metric (e.g., cost savings, time reduction, adoption rate)
     - Secondary metrics
     - Qualitative outcomes
   - **Testimonial**: A quote from the client stakeholder. Use `[PLACEHOLDER - PENDING CLIENT APPROVAL]` if not yet obtained.
   - **About Pivot Point Consulting**: Standard boilerplate.

7. **Remind the user** about client approval: `> **CLIENT APPROVAL REQUIRED**: This case study must receive written approval from the client before publication.`

8. **Write the file** to `marketing/content/case-studies/[year]/[kebab-case-title].md` where `[year]` is the current year.

9. **Update the directory README** at `marketing/content/case-studies/[year]/README.md` by adding the new case study to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-case-study", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<case-study-title>"}
    ```
