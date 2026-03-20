---
title: Virtualization And Isolation
skill_id: macos.virtualization
status: draft
candidate_codex_skill_name: macos-virtualization
when_to_load:
  - disposable environments
  - virtual machines
  - repro boxes
  - isolation for testing
---

# Virtualization And Isolation

## Mission

Use this domain when the right move is “don’t do it on the host.”

## Core Surfaces

- `Virtualization.framework`
- Apple-documented macOS and Linux VM flows on supported Apple silicon Macs

## Best Use Cases

- isolate risky tooling
- create a clean repro environment
- keep development clutter off the main system
- test system behavior without contaminating the host

## Design Rules

- prefer a VM when the experiment is invasive, hard to reverse, or trust-sensitive
- treat virtualization as a safety and reproducibility tool, not just a novelty
- keep host and guest responsibilities separate

## Sideways Routes

- if rollback on host is enough, consider [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md)
- if you actually need deep system hooks, also read [11 System Extensions Network And Security](11_SYSTEM_EXTENSIONS_NETWORK_AND_SECURITY.md)

## Future Skill Assets

- a VM creation checklist
- guest image inventory
- a “host vs guest” decision rubric

