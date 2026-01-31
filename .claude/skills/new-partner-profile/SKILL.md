---
name: "new-partner-profile"
description: "Generates technology and consulting alliance partner profiles. Use when the user asks to create a partner profile, alliance profile, or partnership overview."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Partner Profile

Follow these steps to generate a new technology or consulting alliance partner profile.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/partner-profile-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `business-development/alliances/` and `vendors/partners/` for existing partner profiles. Alert the user if a profile already exists for the same partner and suggest updating it.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Company Name** — Partner organization name
- **Company Overview** — Brief description of the partner, their market position, and size
- **Partnership Type** — Technology, consulting, referral, reseller, implementation, etc.
- **Capabilities** — What the partner brings to the table (products, services, expertise)
- **Joint Offerings** — Combined solutions or services offered together
- **Relationship Owner** — PPC person responsible for the partnership
- **GTM Alignment** — How go-to-market strategies align (shared target markets, complementary offerings)
- **Contract Status** — Active, pending, expired, under negotiation
- **Certifications** — Partner tier, certifications, or designations held

## Step 4: Generate the Partner Profile

Using the template structure, generate the profile with these sections:

1. **Partner Overview** — Company name, website, headquarters, size, industry focus.
2. **Partnership Details** — Partnership type, tier, effective date, renewal date, contract status.
3. **Capabilities** — Bulleted list of partner capabilities, products, and services.
4. **Joint Offerings** — Description of combined solutions, target market, and value proposition.
5. **GTM Alignment** — How market strategies align, shared target segments, cross-sell opportunities.
6. **Relationship Management** — PPC relationship owner, partner contact, cadence of engagement, escalation path.
7. **Financial Summary** — Revenue generated, referral fees, co-investment, revenue targets.
8. **Certifications and Designations** — Partner program tier, technical certifications, specializations.
9. **Key Wins** — Notable joint engagements or wins.
10. **Action Items** — Open items or next steps for the partnership.

Include full YAML frontmatter:

```yaml
---
title: "Partner Profile — [Company Name]"
type: partner-profile
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
partner-name: "[PLACEHOLDER]"
partnership-type: "[PLACEHOLDER]"
contract-status: "[active|pending|expired|negotiating]"
relationship-owner: "[PLACEHOLDER]"
next-review: "YYYY-MM-DD"
tags:
  - partner
  - alliance
  - business-development
---
```

## Step 5: Write the File

Write the file to:

```
business-development/alliances/[partner-name-slug].md
```

Or, if the user specifies it is a vendor relationship:

```
vendors/partners/[partner-name-slug].md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-partner-profile", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
