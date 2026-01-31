---
name: "new-gtm-strategy"
description: "Generates go-to-market strategy documents for new services or markets. Use when the user asks to create a GTM strategy, market entry plan, or launch strategy."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# Generate Go-to-Market Strategy

Follow these steps to generate a new go-to-market strategy document.

## Step 1: Load Context

1. Read `.claude/feedback/patterns.md` for proven patterns and anti-patterns.
2. Read `templates/gtm-strategy-template.md` for the canonical structure.
3. Read `marketing/brand/style-guide.md` for voice and tone guidance.

## Step 2: Check for Duplicates

Use Glob to scan `business-development/go-to-market/` for existing GTM strategies. Alert the user if a strategy already exists for the same service or market segment.

## Step 3: Gather Required Context

Ask the user for the following information (use `[PLACEHOLDER]` for anything not provided):

- **Service or Offering** — What is being taken to market
- **Market Opportunity** — Size, growth rate, trends driving demand
- **Target Segments** — Ideal customer profiles, verticals, organization sizes
- **Value Proposition** — Why buyers should choose PPC for this offering
- **Competitive Positioning** — Key competitors, differentiation, PPC advantages
- **Channel Strategy** — Direct sales, partnerships, referrals, marketing channels
- **Pricing Approach** — Fixed fee, T&M, subscription, value-based; rate ranges
- **Launch Timeline** — Key milestones and target launch date
- **Success Metrics** — KPIs to measure GTM effectiveness

## Step 4: Generate the GTM Strategy

Using the template structure, generate the strategy with these sections:

1. **Executive Summary** — One-paragraph overview of the opportunity and approach.
2. **Market Opportunity** — Market size (TAM/SAM/SOM), growth drivers, timing rationale.
3. **Target Segments** — Detailed ideal customer profiles:
   - Organization type and size
   - Industry vertical
   - Pain points and buying triggers
   - Decision-maker personas
4. **Value Proposition** — Clear articulation of unique value. Use the format: "For [target], PPC provides [offering] that [benefit] unlike [alternatives] because [differentiator]."
5. **Competitive Landscape** — Competitor analysis table: Competitor, Strengths, Weaknesses, PPC Differentiation.
6. **Channel Strategy** — How to reach target buyers:
   - Direct sales approach
   - Partner/alliance leverage
   - Marketing channels (content, events, digital)
   - Referral programs
7. **Pricing Approach** — Pricing model, rate structure, packaging, discounting guidelines.
8. **Launch Plan** — Phased timeline with milestones:
   - Phase 1: Internal readiness (training, collateral, tools)
   - Phase 2: Soft launch (pilot clients, early adopters)
   - Phase 3: Full launch (broad market)
9. **Resource Requirements** — People, budget, tools, and training needed.
10. **Success Metrics** — KPI table: Metric, Target, Measurement Frequency, Owner.
11. **Risks and Mitigations** — Key risks with mitigation strategies.

Include full YAML frontmatter:

```yaml
---
title: "GTM Strategy — [Service/Offering]"
type: gtm-strategy
status: draft
author: "[PLACEHOLDER]"
created: "YYYY-MM-DD"
offering: "[PLACEHOLDER]"
target-market: "[PLACEHOLDER]"
target-launch: "YYYY-MM-DD"
next-review: "YYYY-MM-DD"
tags:
  - gtm
  - strategy
  - business-development
---
```

## Step 5: Write the File

Write the file to:

```
business-development/go-to-market/[offering-slug]-gtm.md
```

Use lowercase-hyphens for the filename. Create intermediate directories if needed.

## Step 6: Log the Action

Append a JSON line to `.claude/feedback/skills-log.jsonl`:

```json
{"skill": "new-gtm-strategy", "file": "<output-path>", "timestamp": "<ISO-8601>", "status": "created"}
```
