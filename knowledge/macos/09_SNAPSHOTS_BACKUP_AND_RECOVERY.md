---
title: Snapshots Backup And Recovery
skill_id: macos.snapshots_recovery
status: draft
candidate_codex_skill_name: macos-snapshots-recovery
when_to_load:
  - rollback
  - restore
  - time machine
  - local snapshots
  - experiment safety
---

# Snapshots Backup And Recovery

## Mission

Use this domain when the question is not just “how do I change the Mac?” but “how do I change it safely and get back?”

## Core Surfaces

- `tmutil`
- APFS snapshot concepts through `diskutil` and Time Machine local snapshots

## Best Use Cases

- create safety points before risky changes
- compare current state against backup state
- restore specific files or directories
- inspect configured destinations and local snapshot state

## First Commands

```bash
tmutil destinationinfo
tmutil latestbackup
tmutil compare
tmutil listlocalsnapshots /
```

## Design Rules

- snapshot before large system or package changes
- prefer targeted restore over broad rollback when possible
- keep backup provenance clear before deleting or inheriting anything

## Permission Gates

- many `tmutil` operations require root and Full Disk Access

## Sideways Routes

- package or update changes that need a safety plan: [08 Packages Profiles And Updates](08_PACKAGES_PROFILES_AND_UPDATES.md)
- filesystem or change investigation: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- permissions blocking restore/inspection: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)

## Future Skill Assets

- a pre-change safety checklist
- restore examples by path type
- APFS snapshot notes separated from Time Machine workflows

