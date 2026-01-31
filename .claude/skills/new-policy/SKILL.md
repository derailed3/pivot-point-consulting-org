---
name: "new-policy"
description: "Generates organizational policy documents for HR, security, compliance, data governance, or operations. Use when the user asks to create a policy, regulation, governance document, or compliance standard. Reads policy template and style guide, checks for duplicates, writes to policies/[category]/."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Policy Document

Generate an organizational policy document for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the policy template** from `templates/policy-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Policy topic**: The subject of the policy (e.g., "Remote Work", "Data Retention", "Incident Response").
   - **Category**: One of `hr`, `security`, `data-governance`, `compliance`, or `operations`.

5. **Check for duplicates** by scanning `policies/[category]/` for existing documents with similar names or overlapping topics. Alert the user if a potential duplicate is found and confirm whether to proceed.

6. **Generate the policy document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Policy title
     - `category`: The selected category
     - `status`: draft
     - `owner`: [PLACEHOLDER]
     - `effective-date`: [PLACEHOLDER]
     - `review-date`: [PLACEHOLDER]
     - `version`: 1.0
     - For **compliance** policies, also include:
       - `controls.hitrust`: [PLACEHOLDER - list applicable HITRUST CSF controls]
       - `controls.soc2`: [PLACEHOLDER - list applicable SOC 2 criteria]
       - `retention-until`: [PLACEHOLDER - retention end date or trigger]
   - **Purpose**: Why this policy exists and what it aims to achieve.
   - **Scope**: Who and what this policy applies to (roles, departments, systems).
   - **Definitions**: Key terms used in the document.
   - **Policy Statement**: The core rules and requirements, organized into numbered subsections.
   - **Roles and Responsibilities**: A table mapping roles to their responsibilities under this policy.
   - **Exceptions**: Process for requesting exceptions, who approves them, and how they are documented.
   - **Enforcement**: Consequences of non-compliance and escalation procedures.

7. **Write the file** to `policies/[category]/[kebab-case-name].md` where `[kebab-case-name]` is derived from the policy title.

8. **Update the directory README** at `policies/[category]/README.md` by adding the new policy to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-policy", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "category": "<category>", "title": "<policy-title>"}
   ```
