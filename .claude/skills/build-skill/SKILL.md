---
name: "build-skill"
description: "Scaffolds a new Claude Code skill with enforced quality gates for description, naming, and context budget. Use when the user asks to create a new skill, add a skill, or extend automation."
user-invocable: true
allowed-tools: ["Read", "Write", "Glob", "Grep"]
---

# Build a New Claude Code Skill

Follow these steps to scaffold a new Claude Code skill with enforced quality gates.

## Step 1: Gather Requirements

Ask the user for:

- **Skill Name** — What to call the skill (will be validated)
- **Purpose** — What the skill does and when it should be invoked
- **Target Output Directory** — Where generated files should be written
- **Required Tools** — Which tools the skill needs access to
- **Template** — Whether there is an existing template to follow

## Step 2: Validate Skill Name

Enforce naming conventions:

1. **Format** — Lowercase letters and hyphens only (e.g., `new-proposal`, `format-resume`)
2. **Length** — 1 to 64 characters
3. **No reserved words** — Must not conflict with built-in commands (help, clear, exit, quit, init, config)
4. **Uniqueness** — Use Glob to check `.claude/skills/*/SKILL.md` — the name must not already exist

If validation fails, explain the issue and ask for a corrected name.

## Step 3: Validate Description

Enforce description quality:

1. **Minimum length** — At least 50 characters
2. **"Use when..." clause** — Must contain a "Use when" clause explaining trigger conditions
3. **Third person** — Must be written in third person (no "you" or "I")
4. **Keyword variants** — Should include synonyms and alternative phrasings for discoverability
5. **No special characters** — Avoid characters that could break YAML parsing

If validation fails, suggest improvements and ask for confirmation.

## Step 4: Check Context Budget

Read all existing skill descriptions to calculate total character count:

1. Use Glob to find all `.claude/skills/*/SKILL.md` files
2. Read each file and extract the `description` field from frontmatter
3. Sum total characters across all descriptions
4. **Warn if approaching 15,000 characters** — Claude Code has a context budget for skill descriptions; exceeding it may cause skills to not be discovered

Report: "Current total description characters: X / 15,000 (Y% used). This new skill will add Z characters."

## Step 5: Generate SKILL.md

Create the SKILL.md file at `.claude/skills/[name]/SKILL.md` with:

### Frontmatter

```yaml
---
name: "[skill-name]"
description: "[validated description]"
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---
```

Adjust `allowed-tools` based on the skill's requirements.

### Body

Generate the skill body following the standard pattern:

1. **Step 1: Load Context** — Read patterns.md, relevant template, and style guide.
2. **Step 2: Check for Duplicates** — Scan target directory for existing files.
3. **Step 3: Gather Required Context** — Ask user for required information.
4. **Step 4: Generate Content** — Produce the output following template structure.
5. **Step 5: Write the File** — Save to the target directory with YAML frontmatter.
6. **Step 6: Log the Action** — Append to skills-log.jsonl.

Adapt steps based on the skill's specific purpose (not all skills are content generation).

## Step 6: Generate CLAUDE.md Reinforcement Snippet

Generate a snippet for addition to the project's CLAUDE.md file:

```
- When the user asks to [action description], use /[skill-name]
```

For example:
```
- When the user asks to create a new proposal, use /new-proposal
```

**Output the snippet** and instruct the user to manually add it to CLAUDE.md under the appropriate section.

## Step 7: Output Summary

Present:

1. **Skill created** — Path to the new SKILL.md file
2. **Name validation** — Passed
3. **Description validation** — Passed (character count)
4. **Context budget** — Current usage and remaining capacity
5. **CLAUDE.md snippet** — The snippet to add manually
6. **Next steps** — Test the skill by invoking it with `/[skill-name]`
