---
title: "Repository Backup Strategy"
author: "Pivot Point Consulting"
created: "2026-01-30"
updated: "2026-01-30"
status: "draft"
category: "workflow"
tags: ["workflow", "disaster-recovery", "backup", "git", "github", "business-continuity"]
reviewers: ["@derailed3"]
next-review: "2027-01-30"
version: "1.0"
effective-date: "2026-01-30"
superseded-date: ""
supersedes: ""
template-version: "1.0"
process-owner: "[PLACEHOLDER: IT Administrator]"
---

# Repository Backup Strategy

## Purpose

This document defines the backup strategy for the Pivot Point Consulting knowledge base repository.
The knowledge base is the single source of truth for organizational policies, processes, templates, and institutional knowledge.
Protecting this data against loss, corruption, or unavailability is essential to business continuity and HIPAA compliance obligations.

## Backup Layers

The backup strategy uses a defense-in-depth approach with multiple redundancy layers.

| Layer | Method | Frequency | Recovery Time | Recovery Point |
|-------|--------|-----------|--------------|---------------|
| 1. GitHub Built-in Redundancy | GitHub's infrastructure replication | Continuous | Minutes | Near-zero |
| 2. Developer Local Clones | Every developer has a full repo clone | Continuous (on pull) | Minutes | Last pull |
| 3. Automated Local Mirror | `git clone --mirror` to network storage | Weekly | 1-2 hours | 1 week |
| 4. GitHub API Export | Full repository export via GitHub API | Quarterly | 2-4 hours | 3 months |
| 5. Git LFS Backup | Separate backup of any large file storage objects | Weekly | 1-2 hours | 1 week |

---

## Layer 1: GitHub Built-in Redundancy

### Description

GitHub provides infrastructure-level redundancy for all hosted repositories.

- Repositories are stored on redundant storage systems across multiple data centers.
- GitHub maintains its own backup and disaster recovery procedures.
- Service Level Agreement: [PLACEHOLDER: reference GitHub Enterprise SLA if applicable].

### Limitations

- PPC does not control GitHub's infrastructure decisions.
- GitHub outages (while rare) would prevent access to the repository.
- Account compromise could result in data deletion or exposure.
- This layer alone does not satisfy HIPAA's backup requirements for data under our control.

---

## Layer 2: Developer Local Clones

### Description

Every team member who clones the repository has a full copy of the Git history on their local machine.
This provides a distributed backup across the team.

### Best Practices

- Pull from `origin/main` at least daily to keep local clones current.
- Do not delete local clones when switching projects.
- Ensure at least 2-3 team members have recent clones at all times.

### Limitations

- Developer machines may be lost, stolen, or damaged.
- Local clones may not include all branches (only those fetched).
- Not a formal backup method -- provides informal resilience only.

---

## Layer 3: Automated Local Mirror (Primary Backup)

### Description

A weekly `git clone --mirror` creates an exact replica of the GitHub repository, including all branches, tags, and refs.
The mirror is stored on [PLACEHOLDER: network storage location or backup server].

### Setup

The automated mirror uses Windows Task Scheduler to execute a PowerShell script weekly.

**PowerShell Script (`backup-repo.ps1`):**

```powershell
# Repository backup script
# Scheduled via Windows Task Scheduler: Weekly, Sunday 02:00 AM

$repoUrl = "https://github.com/derailed3/pivot-point-consulting-org.git"
$backupRoot = "[PLACEHOLDER: backup directory path, e.g., \\server\backups\kb-repo]"
$timestamp = Get-Date -Format "yyyy-MM-dd"
$mirrorPath = "$backupRoot\mirror"
$archivePath = "$backupRoot\archives\kb-backup-$timestamp.bundle"

# Update or create the mirror
if (Test-Path "$mirrorPath\HEAD") {
    Set-Location $mirrorPath
    git remote update
    Write-Host "Mirror updated successfully."
} else {
    git clone --mirror $repoUrl $mirrorPath
    Write-Host "Mirror created successfully."
}

# Create a git bundle as an additional portable backup
Set-Location $mirrorPath
git bundle create $archivePath --all
Write-Host "Bundle created: $archivePath"

# Retain only the last 12 weekly bundles
Get-ChildItem "$backupRoot\archives\kb-backup-*.bundle" |
    Sort-Object LastWriteTime -Descending |
    Select-Object -Skip 12 |
    Remove-Item -Force

Write-Host "Backup completed at $(Get-Date)"
```

### Task Scheduler Configuration

| Setting | Value |
|---------|-------|
| **Task Name** | PPC-KB-Repository-Backup |
| **Schedule** | Weekly, Sunday at 02:00 AM |
| **Action** | Run `powershell.exe -ExecutionPolicy Bypass -File [PLACEHOLDER: script path]\backup-repo.ps1` |
| **Run As** | [PLACEHOLDER: service account with Git access] |
| **Log Output** | [PLACEHOLDER: log file path] |

### Verification

1. Check the Task Scheduler Last Run Result weekly.
2. Verify the mirror directory exists and has a recent modification timestamp.
3. Verify the latest `.bundle` file was created.
4. Monthly: test restore from the mirror (see Recovery Procedures below).

---

## Layer 4: GitHub API Export (Quarterly)

### Description

A quarterly export using the GitHub API captures repository metadata that is not included in a Git clone: issues, pull requests, comments, labels, milestones, and wiki content (if applicable).

### Export Script

```powershell
# Quarterly GitHub API export
# Requires: GitHub CLI (gh) authenticated

$exportDir = "[PLACEHOLDER: export directory]\github-export-$(Get-Date -Format 'yyyy-MM-dd')"
New-Item -ItemType Directory -Force -Path $exportDir

# Export issues
gh api repos/derailed3/pivot-point-consulting-org/issues --paginate > "$exportDir\issues.json"

# Export pull requests
gh api repos/derailed3/pivot-point-consulting-org/pulls --state all --paginate > "$exportDir\pulls.json"

# Export repository metadata
gh api repos/derailed3/pivot-point-consulting-org > "$exportDir\repo-metadata.json"

# Export labels
gh api repos/derailed3/pivot-point-consulting-org/labels --paginate > "$exportDir\labels.json"

Write-Host "GitHub API export completed: $exportDir"
```

### Schedule

- **Frequency:** Quarterly (January 1, April 1, July 1, October 1)
- **Owner:** [PLACEHOLDER: IT Administrator]
- **Storage:** [PLACEHOLDER: secure backup location]

---

## Layer 5: Git LFS Backup

### Description

If Git Large File Storage (LFS) is used for binary assets (images, PDFs, etc.), these files require separate backup consideration because `git clone --mirror` does not always fetch LFS objects.

### Current LFS Status

[PLACEHOLDER: Document whether LFS is currently in use and what file types are tracked.]

### LFS Backup Procedure

```powershell
# Backup LFS objects (run after mirror update)
Set-Location "[PLACEHOLDER: mirror path]"
git lfs fetch --all
Write-Host "LFS objects fetched and backed up."
```

---

## Recovery Procedures

### Restore from Git Mirror

If the GitHub repository is lost or corrupted, restore from the local mirror.

1. Verify the mirror is intact:
   ```bash
   cd [PLACEHOLDER: mirror path]
   git fsck
   ```
2. Create a new GitHub repository (or contact GitHub support for restoration).
3. Push the mirror to the new remote:
   ```bash
   cd [PLACEHOLDER: mirror path]
   git push --mirror https://github.com/derailed3/pivot-point-consulting-org.git
   ```
4. Verify all branches, tags, and history are present.
5. Update all team members' remotes to point to the restored repository.

### Restore from Git Bundle

If the mirror is also unavailable, restore from the most recent `.bundle` file.

1. Locate the latest bundle: `[PLACEHOLDER: backup path]\archives\kb-backup-YYYY-MM-DD.bundle`
2. Verify the bundle:
   ```bash
   git bundle verify kb-backup-YYYY-MM-DD.bundle
   ```
3. Clone from the bundle:
   ```bash
   git clone kb-backup-YYYY-MM-DD.bundle pivot-point-consulting-org
   ```
4. Set the remote to the GitHub repository:
   ```bash
   cd pivot-point-consulting-org
   git remote set-url origin https://github.com/derailed3/pivot-point-consulting-org.git
   ```
5. Push to restore: `git push --mirror origin`

### Restore GitHub Metadata

If issues, PRs, and labels need restoration, use the GitHub API export files and the `gh` CLI to recreate them.
This is a manual process and should be coordinated with IT.

---

## Backup Validation Schedule

| Validation Activity | Frequency | Owner | Procedure |
|--------------------|-----------|-------|-----------|
| Verify weekly mirror update ran | Weekly | [PLACEHOLDER: IT Admin] | Check Task Scheduler log and file timestamps |
| Verify bundle creation | Weekly | [PLACEHOLDER: IT Admin] | Confirm latest bundle exists and size is reasonable |
| Test restore from mirror | Monthly | [PLACEHOLDER: IT Admin] | Clone from mirror to temp directory; verify content |
| Test restore from bundle | Quarterly | [PLACEHOLDER: IT Admin] | Clone from bundle to temp directory; verify content |
| Verify GitHub API export | Quarterly | [PLACEHOLDER: IT Admin] | Confirm export files exist and contain data |

## Related Documents

- [Business Continuity Plan](business-continuity-plan.md)
- [Data Recovery Runbook](data-recovery-runbook.md)
- [Getting Started with the Knowledge Base](../../docs/tutorials/getting-started.md)

## Revision History

| Date | Version | Author | Changes | Approved By |
|------|---------|--------|---------|-------------|
| 2026-01-30 | 1.0 | Pivot Point Consulting | Initial repository backup strategy | [Approver] |
