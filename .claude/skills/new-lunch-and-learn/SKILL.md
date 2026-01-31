---
name: "new-lunch-and-learn"
description: "Generates lunch-and-learn session outlines for knowledge sharing. Use when the user asks to create a lunch and learn, knowledge sharing session, or tech talk outline."
user-invocable: true
allowed-tools: ["Read", "Write", "Edit", "Glob", "Grep", "Bash", "Task"]
---

# New Lunch and Learn

Generate a lunch-and-learn session outline for Pivot Point Consulting.

## Steps

1. **Read proven patterns** from `.claude/feedback/patterns.md` for established conventions and lessons learned.

2. **Read the lunch-and-learn template** from `templates/lunch-and-learn-template.md` to understand the required document structure.

3. **Read the style guide** from `marketing/brand/style-guide.md` for voice, tone, and formatting standards.

4. **Ask the user** for the following inputs (if not already provided):
   - **Topic**: The subject of the session (e.g., "Introduction to FHIR APIs", "Lessons from Epic Go-Live").
   - **Presenter**: Who will lead the session.
   - **Target audience**: Who should attend (e.g., all staff, technical consultants, project managers).
   - **Duration**: Session length (typically 30-60 minutes).

5. **Check for duplicates** by scanning `training/lunch-and-learn/[year]/` for existing sessions on the same topic. Alert the user if a similar session already exists.

6. **Generate the lunch-and-learn document** with the following sections:
   - **Frontmatter** (YAML):
     - `title`: Session title
     - `presenter`: Presenter name
     - `date`: [PLACEHOLDER - scheduled date]
     - `duration`: Session duration
     - `audience`: Target audience
     - `status`: draft
     - `format`: in-person | virtual | hybrid
     - `tags`: Relevant keywords
   - **Session Details**:
     - Title
     - Presenter and their background (1-2 sentences)
     - Date and time: [PLACEHOLDER]
     - Location / meeting link: [PLACEHOLDER]
     - Duration
     - Recording: [PLACEHOLDER - link to recording after session]
   - **Objectives**: 2-4 clear learning objectives for attendees.
   - **Agenda**: Timed breakdown of the session:
     - Introduction (5 min)
     - Main content sections (timed)
     - Demo or interactive portion (if applicable)
     - Q&A (5-10 min)
     - Wrap-up and next steps (5 min)
   - **Materials**:
     - Presentation slides: [PLACEHOLDER]
     - Handouts or reference materials: [PLACEHOLDER]
     - Pre-reading (if any)
   - **Key Takeaways**: 3-5 bullet points summarizing what attendees should remember.
   - **Follow-Up Actions**:
     - Resources to explore after the session
     - Related training or certifications
     - Feedback survey link: [PLACEHOLDER]
   - **Discussion Questions**: 3-5 questions to spark conversation during or after the session.

7. **Write the file** to `training/lunch-and-learn/[year]/[kebab-case-topic].md` where `[year]` is the current year.

8. **Update the directory README** at `training/lunch-and-learn/[year]/README.md` by adding the new session to the index list. If the README does not exist, create it with a header and the first entry.

9. **Log the action** by appending a JSON line to `.claude/feedback/skills-log.jsonl` with:
   ```json
   {"skill": "new-lunch-and-learn", "action": "created", "path": "<file-path>", "timestamp": "<ISO-8601>", "title": "<session-title>", "presenter": "<presenter>"}
   ```
