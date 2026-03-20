# macOS Automation And Launchd

## Description

Use this skill for macOS automation, launchd, Shortcuts, AppleScript/JXA, launchctl, app orchestration, login jobs, boot jobs, and recurring workflows.

## Trigger Conditions

Activate this skill when the user wants the Mac to do something automatically or run in the background.

## Instructions

Core surfaces:

- `launchd` / `launchctl`
- `shortcuts`
- `osascript`
- `open`

First moves:

1. Decide whether the task belongs in `gui/<uid>`, `user/<uid>`, or `system`.
2. Prototype manually first with `shortcuts`, `osascript`, or `open`.
3. Promote to `launchd` only when it needs persistence.

Escalate to:

- `macos-ui-accessibility` if the task requires UI tree control
- `macos-trust-policy` if Automation or permission prompts block execution
- `macos-observability` if launch behavior is unclear

