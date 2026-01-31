---
title: "Data Recovery Runbook"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "disaster-recovery", "runbook", "git", "data-recovery"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: IT Administrator]"
---

# Data Recovery Runbook

## Purpose

This runbook provides step-by-step procedures for recovering data in the PPC knowledge base repository.
It covers the most common data loss scenarios and how to resolve each one using Git's built-in capabilities and backup systems.

## Prerequisites

- Git installed and configured on the recovery machine
- Access to the GitHub repository (or local mirror/backup)
- Familiarity with Git command-line operations
- Administrative access to the GitHub organization (for repository-level recovery)

---

## Procedure 1: Restore from Git Mirror

**When to use:** The GitHub repository is unavailable, deleted, or corrupted beyond repair.

### Steps

1. **Locate the mirror backup:**
   ```bash
   # Mirror location
   cd [PLACEHOLDER: backup directory path, e.g., \\server\backups\kb-repo\mirror]
   ```

2. **Verify mirror integrity:**
   ```bash
   git fsck --full
   ```
   If `fsck` reports errors, try the next most recent bundle backup instead (see Procedure 2).

3. **Create a new working copy from the mirror:**
   ```bash
   git clone [PLACEHOLDER: mirror path] pivot-point-consulting-org-recovered
   cd pivot-point-consulting-org-recovered
   ```

4. **Verify content:**
   ```bash
   # Check branches
   git branch -a

   # Check recent history
   git log --oneline -20

   # Verify key files exist
   ls CLAUDE.md CONTRIBUTING.md mkdocs.yml
   ```

5. **Restore to GitHub:**
   ```bash
   # If the GitHub repo was deleted, create a new one first via gh CLI or web UI
   # Then push the mirror content
   git remote set-url origin https://github.com/derailed3/pivot-point-consulting-org.git
   git push --mirror origin
   ```

6. **Verify the restore:**
   - Navigate to the GitHub repository in a browser.
   - Confirm all branches, tags, and history are present.
   - Confirm GitHub Pages (MkDocs site) rebuilds correctly.

7. **Notify the team:**
   - Announce the restoration in [PLACEHOLDER: communication tool].
   - Ask all team members to verify their local remotes and pull the latest.

---

## Procedure 2: Restore from GitHub Export (Bundle)

**When to use:** Both the GitHub repository and the local mirror are unavailable.

### Steps

1. **Locate the most recent bundle:**
   ```bash
   ls [PLACEHOLDER: backup directory]\archives\kb-backup-*.bundle
   ```
   Select the most recent file by date.

2. **Verify the bundle:**
   ```bash
   git bundle verify kb-backup-YYYY-MM-DD.bundle
   ```
   Expected output should include "The bundle records a complete history" and list the branches contained.

3. **Clone from the bundle:**
   ```bash
   git clone kb-backup-YYYY-MM-DD.bundle pivot-point-consulting-org-recovered
   cd pivot-point-consulting-org-recovered
   ```

4. **Update the remote to point to GitHub:**
   ```bash
   git remote set-url origin https://github.com/derailed3/pivot-point-consulting-org.git
   ```

5. **Push to restore:**
   ```bash
   git push --mirror origin
   ```

6. **Verify and notify** (same as Procedure 1, Steps 6-7).

> **Note:** The bundle may be up to 1 week old (based on weekly backup schedule).
> Any changes made after the bundle creation date will need to be recovered from team members' local clones.

---

## Procedure 3: Recover Deleted Files from Git History

**When to use:** Files were accidentally deleted and the deletion was committed.

### Steps

1. **Find the deleted file(s) in Git history:**
   ```bash
   # List all files that were ever deleted
   git log --diff-filter=D --summary --name-only | findstr "\.md$"
   ```

2. **Find the specific commit that deleted the file:**
   ```bash
   git log --all --full-history -- path/to/deleted-file.md
   ```
   Note the commit hash of the last commit where the file existed (the commit before the deletion).

3. **Recover the file from the commit before deletion:**
   ```bash
   # Using the commit hash from step 2
   git checkout <commit-hash> -- path/to/deleted-file.md
   ```
   Or recover from the parent of the deleting commit:
   ```bash
   git checkout <deleting-commit-hash>~1 -- path/to/deleted-file.md
   ```

4. **Verify the recovered file:**
   ```bash
   # Check the file exists and has expected content
   git status
   git diff --cached -- path/to/deleted-file.md
   ```

5. **Commit the recovery:**
   ```bash
   git add path/to/deleted-file.md
   git commit -m "fix: recover accidentally deleted file path/to/deleted-file.md"
   git push origin main
   ```

### Recovering Multiple Deleted Files

To recover all files deleted in a specific commit:

```bash
# List files deleted in a specific commit
git diff-tree --no-commit-id --name-only -r --diff-filter=D <commit-hash>

# Recover all of them
git diff-tree --no-commit-id --name-only -r --diff-filter=D <commit-hash> | while read file; do
    git checkout <commit-hash>~1 -- "$file"
done
```

---

## Procedure 4: Recover from Force-Push

**When to use:** A branch (especially `main`) was force-pushed, overwriting history.

### Steps

1. **Check the reflog for the previous state:**
   ```bash
   # View reflog for the affected branch
   git reflog show main
   ```
   Output will show entries like:
   ```
   abc1234 main@{0}: push (force): updated refs
   def5678 main@{1}: commit: docs: add new policy      <-- this is the state before force-push
   ```

2. **Identify the correct pre-force-push state:**
   ```bash
   # View the content at the previous state
   git log --oneline main@{1} -10
   ```
   Verify this matches the expected history.

3. **Reset the branch to the pre-force-push state:**
   ```bash
   git checkout main
   git reset --hard main@{1}
   ```

4. **Force-push the corrected state to GitHub:**
   ```bash
   git push --force origin main
   ```

5. **Notify the team:**
   - Announce in [PLACEHOLDER: communication tool] that `main` was reset.
   - Ask all team members to run:
     ```bash
     git fetch origin
     git reset --hard origin/main
     ```

> **Important:** Reflog entries expire after 90 days by default.
> Act quickly when recovering from force-push.
> If the local reflog does not have the needed state, check other team members' reflogs or the mirror backup.

### Preventing Future Force-Push Issues

After recovery, enable branch protection rules:
1. Go to GitHub repository Settings > Branches > Branch protection rules.
2. Add a rule for `main`:
   - Require pull request reviews before merging
   - Do not allow force pushes
   - Do not allow deletions
   - [PLACEHOLDER: additional protection settings per organizational policy]

---

## Procedure 5: GitHub Pages (MkDocs Site) Recovery

**When to use:** The published MkDocs documentation site is down or displaying incorrect content.

### Steps

1. **Diagnose the issue:**

   | Symptom | Likely Cause | Check |
   |---------|-------------|-------|
   | Site shows 404 | GitHub Pages disabled or misconfigured | Repository Settings > Pages |
   | Site shows old content | Build failed or not triggered | Actions tab > latest workflow run |
   | Site shows broken formatting | MkDocs configuration error | Review `mkdocs.yml` for errors |
   | Site completely unavailable | GitHub outage | Check https://www.githubstatus.com |

2. **If GitHub Pages is disabled:**
   - Go to Repository Settings > Pages.
   - Set source to the correct branch and directory.
   - [PLACEHOLDER: configure based on actual deployment method -- GitHub Actions, gh-pages branch, etc.]

3. **If the build failed:**
   - Check the GitHub Actions tab for the latest workflow run.
   - Review the error log for build failures.
   - Common issues:
     - Invalid `mkdocs.yml` configuration
     - Missing Python dependencies
     - Broken internal links preventing build
   - Fix the issue and push a new commit to trigger a rebuild.

4. **If GitHub is down:**
   - Deploy the site from a local build:
     ```bash
     cd [repo root]
     pip install -r requirements.txt
     mkdocs build
     ```
   - Deploy the `site/` directory to [PLACEHOLDER: alternate hosting location].

5. **Manual rebuild trigger:**
   ```bash
   # Empty commit to trigger GitHub Pages rebuild
   git commit --allow-empty -m "chore: trigger pages rebuild"
   git push origin main
   ```

---

## Recovery Decision Tree

```
Data loss detected
    |
    +--> Can you access the GitHub repository?
    |       |
    |       +--> YES --> Are the files in Git history?
    |       |              |
    |       |              +--> YES --> Use Procedure 3 (recover from history)
    |       |              |
    |       |              +--> NO --> Was it a force-push?
    |       |                           |
    |       |                           +--> YES --> Use Procedure 4 (reflog recovery)
    |       |                           |
    |       |                           +--> NO --> Use Procedure 1 (restore from mirror)
    |       |
    |       +--> NO --> Is the local mirror available?
    |                     |
    |                     +--> YES --> Use Procedure 1 (restore from mirror)
    |                     |
    |                     +--> NO --> Use Procedure 2 (restore from bundle)
    |
    +--> Is the MkDocs site the issue? --> Use Procedure 5 (Pages recovery)
```

## Post-Recovery Checklist

After any data recovery, complete the following:

- [ ] Verify all expected files and content are present
- [ ] Verify Git history is intact (`git log --oneline -50`)
- [ ] Verify all branches exist (`git branch -a`)
- [ ] Verify MkDocs site builds and deploys correctly
- [ ] Notify all team members of the recovery and any actions they need to take
- [ ] Document the incident (what happened, when, how it was resolved)
- [ ] Review and update backup procedures if needed
- [ ] Store the incident report in `policies/compliance/evidence/` (if HIPAA-relevant)

## Related Documents

- [Repository Backup Strategy](repo-backup-strategy.md)
- [Business Continuity Plan](business-continuity-plan.md)
- [Getting Started with the Knowledge Base](../../docs/tutorials/getting-started.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial data recovery runbook | [Approver] |
