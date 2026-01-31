---
name: "new-runbook"
description: "Generates IT operational runbooks with procedures, troubleshooting, and escalation paths. Use when the user asks to create a runbook, operational procedure, or system administration guide."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate IT Operational Runbook

Follow these steps to generate a new IT operational runbook.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/runbook-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `it-infrastructure/runbooks/` for existing runbooks. Alert the user if a runbook already exists for the same system or procedure.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **System or Service Name** — What system this runbook covers
- **System Overview** — Brief description of the system, its purpose, and architecture
- **Access Requirements** — Credentials, VPN, permissions needed
- **Prerequisites** — Tools, software, or knowledge required
- **Common Procedures** — Routine operational tasks (start, stop, restart, deploy, backup)
- **Troubleshooting Scenarios** — Known issues and resolution steps
- **Escalation Path** — Who to contact at each level
- **Recovery Procedures** — Disaster recovery and rollback steps
- **Contact Information** — System owners, on-call, vendor support

## Step 4: Generate the Runbook

Using the template structure, generate the runbook with these sections:

1. **System Overview** — System name, purpose, architecture diagram reference, dependencies, SLA.
2. **Access Requirements** — Table with: Access Type, Tool/URL, Credentials Location, Permissions Required.
3. **Prerequisites** — Bulleted list of required tools, software versions, and knowledge.
4. **Common Procedures** — For each procedure:
   - Procedure name and description
   - When to perform
   - Step-by-step instructions with exact commands
   - Expected output at each step
   - Verification steps
5. **Troubleshooting** — For each known issue:
   - Symptom description
   - Probable causes
   - Diagnostic steps
   - Resolution steps
   - Verification that the issue is resolved
6. **Escalation Path** — Table with: Level, Condition, Contact, Method, Response SLA.
7. **Recovery Procedures** — Disaster recovery steps:
   - RTO and RPO targets
   - Backup locations and restore procedures
   - Rollback procedures
   - Data validation steps post-recovery
8. **Monitoring and Alerts** — What to monitor, alert thresholds, and response actions.
9. **Contact Information** — Table with: Role, Name, Email, Phone, Availability.
10. **Revision History** — Table with: Date, Author, Change Description.

Include full YAML frontmatter:

```yaml
---
title: "Runbook — [System/Service Name]"
type: runbook
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
system: "[PLACEHOLDER]"
criticality: "[high|medium|low]"
next-review: "YYYY-MM-DD"
tags:
  - runbook
  - it-infrastructure
  - operations
---
```

## Step 5: Write the File

Write the file to:

```
it-infrastructure/runbooks/[system-name-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-runbook", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
