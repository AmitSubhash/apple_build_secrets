---
title: Automation And Launchd
skill_id: macos.automation_launchd
status: draft
candidate_codex_skill_name: macos-automation-launchd
when_to_load:
  - recurring automation
  - login or boot jobs
  - background agents
  - app orchestration
---

# Automation And Launchd

## Mission

Use this domain when the task is “make the Mac do something on its own” rather than “manually inspect a one-off state.”

## Core Surfaces

- `launchd` and `launchctl`
- `shortcuts`
- `osascript`
- `open`

## Best Use Cases

- launch a workflow at login
- run a helper continuously or on demand
- chain apps, files, and URLs together
- trigger personal automations from shell or scheduling
- replace ad hoc `cron`-style logic with native macOS behavior

## First Moves

1. Decide whether the task belongs in `gui/<uid>`, `user/<uid>`, or `system`.
2. Prototype the action manually with `shortcuts`, `osascript`, or `open`.
3. If it must persist, promote it to `launchd`.
4. If it touches app UI, route into [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md).

## First Commands

```bash
launchctl print gui/$(id -u)
shortcuts list --show-identifiers
shortcuts run "My Shortcut"
osascript -l JavaScript -e 'Application("Finder").windows().length'
open -b com.apple.TextEdit
```

## Design Rules

- Prefer `launchd` over `cron` for Mac-native automation.
- Use `shortcuts` when the workflow is app-heavy and personal.
- Use `osascript` when the app already exposes Apple events cleanly.
- Use `open` when the problem is really LaunchServices routing, not scripting.

## Permission Gates

- Automation permission for app-to-app scripting
- Accessibility if the automation crosses into UI control

## Sideways Routes

- UI manipulation: [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)
- blocked by permissions or policy: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- need deeper debugging: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)

## Future Skill Assets

- LaunchAgent and LaunchDaemon plist templates
- a validator for `launchctl` domain placement
- a shell wrapper for shortcut discovery and invocation

