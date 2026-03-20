---
title: Packages Profiles And Updates
skill_id: macos.packages_profiles_updates
status: draft
candidate_codex_skill_name: macos-packages-profiles-updates
when_to_load:
  - package inspection
  - software installs
  - software updates
  - profiles and machine configuration
---

# Packages Profiles And Updates

## Mission

Use this domain when the task is software lifecycle management: install, inspect, audit, update, or explain system configuration state.

## Core Surfaces

- `softwareupdate`
- `installer`
- `pkgutil`
- `profiles`

## Best Use Cases

- list or fetch macOS installers
- script package installs
- inspect what package installed a file
- verify package signatures
- inspect configuration and enrollment profile state

## First Commands

```bash
softwareupdate --list-full-installers
pkgutil --pkgs
pkgutil --pkg-info <pkg-id>
pkgutil --files <pkg-id>
profiles status -type configuration
```

## Design Rules

- inspect receipts before uninstalling or cleaning up package-managed files
- keep package provenance visible
- treat profiles as machine-policy state, not random preferences

## Permission Gates

- package installation and some profile actions need elevated privileges
- Full Disk Access can matter for inspection depth

## Sideways Routes

- trust or signature problems: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- post-install weirdness or regression tracing: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- snapshot before risky package/system changes: [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md)

## Future Skill Assets

- receipt audit script
- full installer fetch workflow
- package provenance checklist

