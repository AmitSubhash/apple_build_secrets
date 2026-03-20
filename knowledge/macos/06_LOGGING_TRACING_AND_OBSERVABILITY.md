---
title: Logging Tracing And Observability
skill_id: macos.observability
status: draft
candidate_codex_skill_name: macos-observability
when_to_load:
  - debugging weird system behavior
  - tracing background services
  - historical system investigation
  - file or process tracing
---

# Logging Tracing And Observability

## Mission

Use this domain when the Mac is behaving in a way that needs explanation, evidence, or traceability.

## Core Surfaces

- `log`
- `fs_usage`
- `eslogger`

## Best Use Cases

- understand why an app or service failed
- inspect recent system behavior by process or subsystem
- trace file access live
- collect an archive for later analysis
- debug “something is touching this” or “something launched this”

## First Commands

```bash
log stream --style compact --level info
log show --last 10m --style compact
sudo fs_usage -w
sudo eslogger exec fork exit
```

## Design Rules

- start narrow: process, subsystem, time window
- widen only if the first pass is silent
- preserve timestamps and predicates when collecting evidence

## Permission Gates

- some tracing or collection paths require `sudo`
- Endpoint Security surfaces are not stable general-purpose APIs

## Sideways Routes

- service lifecycle and launch reasons: [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)
- blocked access or permission confusion: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- installation/update side effects: [08 Packages Profiles And Updates](08_PACKAGES_PROFILES_AND_UPDATES.md)

## Future Skill Assets

- log predicate cookbook
- a quick “why did this launch?” diagnostic sequence
- file tracing presets

