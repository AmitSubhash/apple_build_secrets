---
name: macos-observability
description: Use for macOS unified logging, log stream/show, fs_usage, eslogger, tracing background services, and explaining why the system or an app behaved a certain way. Trigger when debugging mysterious macOS behavior or collecting evidence.
---

# macOS Observability

Use this skill when the Mac is doing something that needs to be explained with evidence.

## Core Surfaces

- `log`
- `fs_usage`
- `eslogger`

## Use Cases

- trace background activity
- inspect recent failures
- understand service behavior
- collect evidence around system events

## Working Rules

- start with the narrowest predicate, process, or time window
- expand only if the first pass is silent
- separate live tracing from historical inspection

## Escalate To

- `macos-automation-launchd` for service lifecycle questions
- `macos-trust-policy` for permission or policy failures
- `macos-screen-capture` when the debugging artifact must be visual

