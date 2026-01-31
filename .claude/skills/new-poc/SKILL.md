---
name: "new-poc"
description: "Generates proof-of-concept documentation with hypothesis, success criteria, and go/no-go recommendation. Use when the user asks to create a POC, proof of concept, or technology evaluation."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Proof of Concept

Generate a proof-of-concept (POC) document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the POC template** from `templates/poc-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Technology or approach**: What is being evaluated (e.g., "FHIR R4 integration with Epic", "AI-powered clinical documentation").
   - **Hypothesis**: What the POC aims to prove or disprove.
   - **Context**: Why this evaluation is being conducted and what decision it will inform.

5. **Check for duplicates** by scanning `innovation/poc/[year]/` and `innovation/tech-evaluations/[year]/` for existing POCs on the same technology. Alert the user if one already exists.

6. **Generate the POC document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: POC title
     - `technology`: Technology or approach being evaluated
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `sponsor`: [PLACEHOLDER]
     - `decision`: pending | go | no-go | further-evaluation
     - `tags`: Relevant keywords
   - **Hypothesis**: Clear statement of what the POC will prove or disprove. Use the format: "We believe that [technology/approach] will [expected outcome] because [rationale]."
   - **Success Criteria**: Numbered list of measurable criteria that will determine whether the POC is successful:
     - Each criterion must be objectively measurable.
     - Include threshold values where applicable.
     - Distinguish between "must-have" and "nice-to-have" criteria.
   - **Approach**: Step-by-step plan for conducting the POC:
     - Phases of evaluation
     - Testing methodology
     - Data or scenarios to be used
     - Duration per phase
   - **Technology Stack**: Details of the technology being evaluated:
     - Product name and version
     - Vendor (if applicable)
     - Dependencies and prerequisites
     - Integration points
   - **Timeline**: Table with phases, activities, duration, and milestones.
   - **Resources Required**:
     - Team members and their roles
     - Infrastructure or environments needed
     - Licenses or access required
     - Estimated cost: [PLACEHOLDER]
   - **Results**: To be completed after the POC:
     - Test results against each success criterion: [PLACEHOLDER]
     - Performance metrics: [PLACEHOLDER]
     - Issues encountered: [PLACEHOLDER]
   - **Findings**: Analysis of results:
     - Key observations: [PLACEHOLDER]
     - Unexpected findings: [PLACEHOLDER]
     - Limitations discovered: [PLACEHOLDER]
   - **Go / No-Go Recommendation**: [PLACEHOLDER]
     - Recommendation with clear rationale
     - Conditions or caveats
     - Next steps if "go"
     - Alternative approaches if "no-go"

7. **Write the file** to the appropriate path:
   - POCs: `innovation/poc/[year]/[kebab-case-title].md`
   - Technology evaluations: `innovation/tech-evaluations/[year]/[kebab-case-title].md`
   Choose based on whether the user describes a proof of concept or a broader technology evaluation.

8. **Update the directory README** at the target directory's `README.md` by adding the new POC to the index. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-poc", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<poc-title>", "technology": "<technology>", "decision": "pending"}
   ```
