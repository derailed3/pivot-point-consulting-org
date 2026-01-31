---
name: "summarize-feedback"
description: "Analyzes all feedback logs to identify patterns, update proven patterns, and queue improvements. Use when the user asks to analyze feedback, review quality trends, or update patterns."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep"]
---

# Summarize Feedback and Update Patterns

Follow these steps to analyze feedback logs and update the knowledge base's quality patterns.

## Step 1: Load Feedback Data

Read the following feedback log files:

1. `.claude/feedback/skills-log.jsonl` — Log of all skill invocations
2. `.claude/feedback/quality-scores.jsonl` — Document quality scores from validation and BTV runs
3. `.claude/feedback/corrections.jsonl` — Human corrections to generated documents

If any file does not exist or is empty, note its absence and proceed with available data.

## Step 2: Analyze Skill Performance

From `skills-log.jsonl`, calculate:

- **Invocation counts** — How often each skill is used
- **Most-used skills** — Top 5 by invocation count
- **Least-used skills** — Bottom 5 by invocation count
- **Usage trends** — Increasing or decreasing usage over time

## Step 3: Analyze Quality Scores

From `quality-scores.jsonl`, calculate:

- **Average score by skill** — Which skills produce the highest and lowest quality documents
- **Average score over time** — Is quality improving or declining?
- **Most common validation failures** — Group by check type (frontmatter, links, style, PHI/PII, etc.)
- **Score distribution** — How many documents fall into each quality tier (Excellent 90+, Good 75-89, Needs Improvement 60-74, Requires Attention <60)

## Step 4: Analyze Human Corrections

From `corrections.jsonl`, identify:

- **Most commonly corrected issues** — What do humans consistently fix?
- **Corrections by skill** — Which skills need the most human intervention?
- **Pattern categories** — Group corrections into categories (tone, accuracy, structure, formatting, terminology)
- **Repeat corrections** — Issues that keep recurring despite being corrected before

## Step 5: Identify Patterns

Synthesize the analysis into:

### Proven Patterns (things that work well)
- What do high-scoring documents have in common?
- Which templates produce the best results?
- What language or structure do humans rarely correct?

### Anti-Patterns (things to avoid)
- What do low-scoring documents have in common?
- What do humans most frequently correct?
- What validation checks fail most often?

## Step 6: Update Patterns File

Read `.claude/feedback/patterns.md`. Update it with:

- New proven patterns discovered in this analysis
- New anti-patterns identified
- Updated statistics and evidence for existing patterns
- Date of last analysis

Preserve existing patterns that are still valid. Mark any patterns that may be outdated based on new data.

## Step 7: Update Improvements Queue

Read `.claude/feedback/improvements.md`. Update it with:

- Actionable improvement items derived from the analysis
- Priority level for each item (high, medium, low)
- Which skill or template each improvement applies to
- Estimated impact (based on frequency and severity of the issue)

Remove items that have been addressed. Add new items from this analysis.

## Step 8: Regenerate Health Dashboard

Read and update `docs/reference/kb-health-dashboard.md` with current metrics:

- Total documents in knowledge base
- Average quality score
- Documents by status (draft, review, approved, archived)
- Overdue reviews count
- Top 5 issues requiring attention
- Skill usage summary
- Quality trend (improving / stable / declining)
- Date of last analysis

## Step 9: Output Summary

Present the analysis results:

1. **Analysis Period** — Date range of analyzed data
2. **Key Findings** — Top 3-5 insights
3. **Skill Performance** — Table of skills ranked by quality score
4. **Quality Trends** — Direction and magnitude of quality changes
5. **Top Issues** — Most impactful issues to address
6. **Patterns Updated** — Summary of changes to patterns.md
7. **Improvements Queued** — Summary of new items in improvements.md
8. **Recommendations** — Prioritized list of actions to improve quality
