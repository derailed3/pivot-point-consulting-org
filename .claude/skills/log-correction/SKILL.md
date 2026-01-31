---
name: "log-correction"
description: "Records human corrections to skill-generated documents for learning. Use when the user wants to log a correction, record an edit, or note what was changed in a generated document."
user-invocable: true
allowed-tools: ["Read", "Write", "Glob"]
---

# Log Human Correction

Follow these steps to record a human correction to a skill-generated document for continuous learning.

## Step 1: Gather Correction Details

Ask the user for the following information:

- **File Path** — Path to the document that was corrected
- **Description** — What was changed (e.g., "Rewrote the executive summary to be more concise")
- **Reason** — Why the change was made (e.g., "Original was too verbose and used passive voice")
- **Skill Source** — Which skill originally generated the document (if known)

## Step 2: Read the Current File State

Read the file at the provided path to capture its current state (after the correction). This serves as the "ground truth" that future skill invocations should aim to match.

## Step 3: Determine Skill Source

If the user did not specify which skill generated the document:

1. Use Glob to search `.claude/feedback/skills-log.jsonl` for entries matching the file path
2. Extract the `skill` field from the most recent matching entry
3. If no match is found, record the skill source as "unknown"

## Step 4: Append Correction Log Entry

Append a JSON line to `.claude/feedback/corrections.jsonl` with the following structure:

```json
{
  "file": "<file-path>",
  "timestamp": "<ISO-8601 timestamp>",
  "description": "<what was changed>",
  "reason": "<why it was changed>",
  "skill_source": "<which skill generated the original>"
}
```

If the corrections.jsonl file does not exist, create it with the first entry.

## Step 5: Confirm and Advise

Confirm to the user that the correction has been logged. Advise:

> "Correction logged. Run `/summarize-feedback` periodically to analyze corrections and update proven patterns. This helps all skills learn from human edits over time."

## Notes

- Each correction is a single JSON line (JSONL format) for easy parsing
- Corrections accumulate over time and are analyzed by the `summarize-feedback` skill
- High-frequency corrections on the same issue indicate a pattern that should be codified
- The corrections log should never be manually edited — only appended to
