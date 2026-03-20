---
title: Spotlight Metadata And Files
skill_id: macos.spotlight_metadata
status: draft
candidate_codex_skill_name: macos-spotlight-metadata
when_to_load:
  - metadata search
  - file discovery
  - content type inspection
  - spotlight index work
---

# Spotlight Metadata And Files

## Mission

Use this domain when the task is “find, classify, or inspect files efficiently” and recursive shell scans are the wrong tool.

## Core Surfaces

- `mdfind`
- `mdls`
- `mdutil`

## Best Use Cases

- search files by metadata or content type
- inspect origin URLs and metadata fields
- check whether Spotlight indexing is helping or hurting
- build metadata-aware file workflows

## First Commands

```bash
mdfind 'kMDItemFSName == "*.pdf"c'
mdls -name kMDItemContentType -name kMDItemWhereFroms ~/Downloads/example.dmg
mdutil -s /
```

## Design Rules

- Treat Spotlight as a system index, not just a search bar.
- Reach for `mdfind` before slow tree walks when metadata is enough.
- Use `mdls` to learn which fields are worth querying.

## Permission Gates

- usually light, but Full Disk Access can matter depending on scope and target paths

## Sideways Routes

- file-change monitoring or event history: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- blocked path access or privacy issues: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- restore or rollback after risky file work: [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md)

## Future Skill Assets

- common metadata query snippets
- a query-builder reference
- a “find by content type / source / date” cheat sheet

