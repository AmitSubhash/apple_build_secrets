---
name: macos-automation-launchd
description: Use for macOS automation, launchd, launchctl, Shortcuts, AppleScript/JXA, app orchestration, login jobs, boot jobs, and recurring workflows. Trigger when the user wants the Mac to do something automatically or run in the background.
---

# macOS Automation And Launchd

Use this skill when the task is “make the Mac do this automatically.”

## Core Surfaces

- `launchd` / `launchctl`
- `shortcuts`
- `osascript`
- `open`

## First Moves

1. Decide whether the task belongs in `gui/<uid>`, `user/<uid>`, or `system`.
2. Prototype manually first with `shortcuts`, `osascript`, or `open`.
3. Promote to `launchd` only when it needs persistence.

## Use Cases

- launch-on-login workflows
- background helpers
- app orchestration
- scheduled Mac tasks

## Escalate To

- `macos-ui-accessibility` if the task requires UI tree control
- `macos-trust-policy` if Automation or permission prompts block execution
- `macos-observability` if launch behavior is unclear

