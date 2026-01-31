---
name: "new-vendor-evaluation"
description: "Generates vendor evaluation scorecards with weighted criteria. Use when the user asks to evaluate a vendor, compare vendors, or assess a tool. Categories: security, compliance, cost, capability."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Vendor Evaluation

Generate a vendor evaluation scorecard for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the vendor evaluation template** from `templates/vendor-evaluation-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Vendor name**: The vendor or tool being evaluated.
   - **Evaluation context**: Why this evaluation is being conducted (e.g., new tool selection, renewal decision, compliance audit).
   - **Evaluation categories**: Which categories to prioritize (security, compliance, cost, capability, support, integration).

5. **Check for duplicates** by scanning `vendors/evaluations/[year]/` for existing evaluations of the same vendor. Alert the user if one already exists.

6. **Generate the vendor evaluation document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Evaluation title
     - `vendor`: Vendor name
     - `product`: Product or service being evaluated
     - `evaluator`: [PLACEHOLDER]
     - `date`: Current date
     - `status`: draft
     - `decision`: pending | approved | rejected | deferred
   - **Vendor Overview**: Brief description of the vendor, their product/service, and market position.
   - **Evaluation Purpose**: Why this evaluation is being conducted and what decision it will inform.
   - **Weighted Criteria Table**: Markdown table with columns:
     - Category
     - Criterion
     - Weight (%)
     - Score (1-5): [PLACEHOLDER]
     - Weighted Score: [PLACEHOLDER]
     - Notes
   - **Scoring Rubric**:
     - 5 = Exceeds requirements
     - 4 = Meets all requirements
     - 3 = Meets most requirements
     - 2 = Partially meets requirements
     - 1 = Does not meet requirements
   - **Category Assessments**: For each evaluation category, include:
     - **Security**: Data protection, encryption, access controls, incident response, SOC 2 compliance.
     - **Compliance**: HIPAA, HITRUST, regulatory adherence, audit history.
     - **Cost**: Licensing model, total cost of ownership, hidden costs, ROI projection.
     - **Capability**: Feature completeness, scalability, performance, roadmap alignment.
     - **Support**: SLAs, responsiveness, documentation quality, training resources.
     - **Integration**: API availability, interoperability, migration effort.
   - **Assessment Summary**: Overall score, strengths, weaknesses, and risks.
   - **Recommendation**: Clear recommendation with rationale (Approve / Reject / Defer / Further Evaluation Needed).
   - **Alternatives Considered**: Brief notes on other vendors or approaches evaluated.

7. **Write the file** to `vendors/evaluations/[year]/[kebab-case-vendor]-evaluation.md` where `[year]` is the current year.

8. **Update the directory README** at `vendors/evaluations/[year]/README.md` by adding the new evaluation to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-vendor-evaluation", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "vendor": "<vendor-name>", "decision": "pending"}
   ```
