---
name: "new-job-description"
description: "Generates job descriptions with responsibilities, qualifications, and PPC benefits. Use when the user asks to create a job description, JD, role posting, or job listing."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Job Description

Generate a job description for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the job description template** from `templates/job-description-template.md` to understand the required document structure.

3. **Read the boilerplate** from `templates/boilerplate.md` for standard company description and benefits language.

4. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

5. **Ask the user** for the following inputs (if not already provided):
   - **Role title**: The position title (e.g., "Senior Epic Analyst", "Project Manager").
   - **Department or practice area**: Where this role sits in the organization.
   - **Level**: Junior, Mid, Senior, Lead, Principal, or Director.
   - **Location**: Remote, hybrid, or specific office location.

6. **Check for duplicates** by scanning `recruiting/job-descriptions/` for existing job descriptions for the same or similar role. Alert the user if one exists and ask whether to update or create new.

7. **Generate the job description** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Role title
     - `department`: Department or practice area
     - `level`: Seniority level
     - `location`: Work location
     - `employment-type`: Full-time | Part-time | Contract
     - `status`: draft
     - `date`: Current date
     - `requisition-id`: [PLACEHOLDER]
   - **Role Title**: Official title.
   - **Department**: Practice area or department.
   - **Reporting Structure**: Reports to [PLACEHOLDER]. Direct reports: [PLACEHOLDER].
   - **Role Summary**: 3-4 sentences describing the role, its impact, and why it matters at PPC.
   - **Key Responsibilities**: Bulleted list of 8-12 primary responsibilities, ordered by importance. Start each with an action verb.
   - **Required Qualifications**:
     - Education requirements
     - Years of experience
     - Required certifications
     - Technical skills
     - Domain knowledge
   - **Desired Skills**: Bulleted list of nice-to-have skills and experiences that strengthen a candidacy.
   - **Compensation Range**: [PLACEHOLDER - to be filled by HR/Finance]
   - **Benefits**: Standard PPC benefits package (pulled from boilerplate).
   - **About Pivot Point Consulting**: Company description and culture statement (pulled from boilerplate).
   - **Equal Opportunity Statement**: Standard EEO language (pulled from boilerplate).

8. **Write the file** to `recruiting/job-descriptions/[kebab-case-title].md`.

9. **Update the directory README** at `recruiting/job-descriptions/README.md` by adding the new JD to the index list. If the README does not exist, create it with a header and the first entry.

10. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
    ```json
    {"skill": "new-job-description", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<role-title>", "department": "<department>"}
    ```
