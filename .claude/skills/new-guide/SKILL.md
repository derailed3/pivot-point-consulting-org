---
name: "new-guide"
description: "Generates step-by-step how-to guides with prerequisites and troubleshooting. Use when the user asks to create a how-to guide, tutorial, instructions, or procedure. Uses imperative voice with numbered steps."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New How-To Guide

Generate a step-by-step how-to guide for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the how-to guide template** from `templates/how-to-guide-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Topic**: What the guide covers (e.g., "Setting Up VPN Access", "Submitting a Change Request").
   - **Target audience**: Who will follow this guide (e.g., new hires, consultants, project managers).
   - **Complexity level**: Basic, intermediate, or advanced.

5. **Check for duplicates** by scanning `docs/how-to/` for existing guides on the same topic. Alert the user if a similar guide already exists.

6. **Generate the how-to guide** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Clear, action-oriented title (e.g., "How to Submit a Time Entry")
     - `audience`: Target audience
     - `complexity`: basic | intermediate | advanced
     - `status`: draft
     - `author`: [PLACEHOLDER]
     - `date`: Current date
     - `last-reviewed`: Current date
     - `estimated-time`: Estimated time to complete the procedure
     - `tags`: Relevant keywords
   - **Overview**: 2-3 sentences explaining what this guide accomplishes and why someone would need it.
   - **Prerequisites**: Bulleted list of what the reader needs before starting:
     - Required access or permissions
     - Required tools or software
     - Required knowledge or completed prior steps
   - **Steps**: Numbered, sequential steps written in imperative voice:
     - Each step begins with a verb (e.g., "Navigate to...", "Click...", "Enter...").
     - Include expected results after key steps (e.g., "You should see a confirmation message.").
     - Add notes or warnings in blockquotes where needed.
     - Group related steps under descriptive subheadings if the guide has more than 10 steps.
   - **Expected Outcome**: Description of the end state after completing all steps successfully.
   - **Troubleshooting**: Table or list of common issues and their resolutions:
     - Problem description
     - Likely cause
     - Solution or workaround
   - **Related Resources**: Links to related guides, documentation, or support contacts.

7. **Write the file** to `docs/how-to/[kebab-case-title].md`.

8. **Update the directory README** at `docs/how-to/README.md` by adding the new guide to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-guide", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<guide-title>", "audience": "<audience>"}
   ```
