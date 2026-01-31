---
name: "run-btv"
description: "Runs the full Build-Test-Validate pipeline on one or more documents. Use when the user asks to run BTV, validate documents, or check document quality at scale."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash"]
---

# Run Build-Test-Validate (BTV) Pipeline

Follow these steps to run the full BTV pipeline on one or more documents.

## Step 1: Get Target Files

Accept a file path or glob pattern from the user. Use Glob to resolve the pattern into a list of files. Confirm the file list with the user before proceeding if more than 10 files are matched.

## Step 2: Load Standards

1. Read `marketing/brand/style-guide.md` for voice and tone standards.
2. Read `marketing/brand/messaging-framework.md` for messaging standards.
3. Read `.claude/feedback/patterns.md` for proven patterns.

## Step 3: Process Each File

For each file in the target list, run all three pipeline stages:

---

### BUILD Stage

Check that the document can be properly parsed and rendered:

1. **Frontmatter Check** — YAML frontmatter exists, is valid YAML, and contains all required fields:
   - `title`, `type`, `status`, `author`, `created`, `next-review`, `tags`
   - All date fields are valid ISO 8601
   - `status` is one of: draft, review, approved, archived, deprecated
2. **Link Verification** — Extract all Markdown links. For internal links (relative paths), verify target files exist using Glob. Record broken links.
3. **Render Check** — Verify Markdown is well-formed:
   - No unclosed code blocks
   - No malformed tables
   - Heading hierarchy is logical (no skipping levels)
   - No orphaned list items

**BUILD Result:** PASS if all checks pass, FAIL if any critical check fails, WARN if only non-critical issues found.

---

### TEST Stage

Check content quality and correctness:

1. **Spelling Check** — If `.cspell.json` exists, read the custom word list. Check the document for likely misspellings using Grep patterns for common errors. Flag words not in the custom dictionary.
2. **Style Guide Compliance** — Check against `marketing/brand/style-guide.md`:
   - Company name used correctly
   - No banned terms
   - Active voice preferred
   - Consistent formatting
3. **Cross-Reference Verification** — For any references to other documents (links, "see also", related articles), verify the referenced documents exist.

**TEST Result:** PASS / FAIL / WARN

---

### VALIDATE Stage

Check policy and brand compliance:

1. **Brand Compliance** — Check voice, tone, and messaging alignment per the style guide and messaging framework.
2. **Template Structure Match** — Determine the document `type` from frontmatter. Find the matching template in `templates/`. Verify the document contains all required sections from the template.
3. **Policy Adherence** — Check for:
   - No PHI/PII patterns (SSN, personal emails, patient identifiers)
   - Appropriate classification and handling
   - Required approvals present for the document's status level
   - Retention and review dates set

**VALIDATE Result:** PASS / FAIL / WARN

---

## Step 4: Score Each File

Calculate a quality score (0-100) for each file:

| Component | Max Points |
|-----------|-----------|
| BUILD: Frontmatter | 15 |
| BUILD: Links | 10 |
| BUILD: Render | 10 |
| TEST: Spelling | 10 |
| TEST: Style | 15 |
| TEST: Cross-refs | 5 |
| VALIDATE: Brand | 15 |
| VALIDATE: Template | 10 |
| VALIDATE: Policy | 10 |
| **Total** | **100** |

## Step 5: Auto-Promote Passing Documents

If a file scores 80+ and all three stages pass (no FAIL results), and its current `status` is "draft":

- Update the frontmatter `status` field from "draft" to "review"
- Add a comment noting the auto-promotion

Do NOT auto-promote if any stage has a FAIL result, regardless of score.

## Step 6: Log All Scores

For each file processed, append a JSON line to `.claude/feedback/quality-scores.jsonl`:

```json
{"file": "<file-path>", "score": <0-100>, "timestamp": "<ISO-8601>", "pipeline": "btv", "build": "<PASS|FAIL|WARN>", "test": "<PASS|FAIL|WARN>", "validate": "<PASS|FAIL|WARN>", "auto-promoted": <true|false>}
```

## Step 7: Output Summary Table

Present results as a summary table:

| File | Build | Test | Validate | Score | Status | Action |
|------|-------|------|----------|-------|--------|--------|
| path/to/file.md | PASS | WARN | PASS | 85 | Promoted to review | — |
| path/to/other.md | FAIL | — | — | 42 | Needs fixes | Fix frontmatter |

Include:
- Total files processed
- Pass / Warn / Fail counts for each stage
- Average score
- Files auto-promoted
- Top issues across all files
