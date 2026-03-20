# macOS Observability

## Description

Use this skill for macOS unified logging, log stream/show, fs_usage, eslogger, tracing background services, and explaining why the system or an app behaved a certain way.

## Trigger Conditions

Activate this skill when debugging mysterious macOS behavior or collecting evidence.

## Instructions

Core surfaces:

- `log`
- `fs_usage`
- `eslogger`

Working rules:

- start with the narrowest predicate, process, or time window
- expand only if the first pass is silent
- separate live tracing from historical inspection

Escalate to:

- `macos-automation-launchd` for service lifecycle questions
- `macos-trust-policy` for permission or policy failures
- `macos-screen-capture` when the debugging artifact must be visual

