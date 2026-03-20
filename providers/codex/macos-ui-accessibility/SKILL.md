---
name: macos-ui-accessibility
description: Use for macOS UI automation, Accessibility API work, AXUIElement, window inspection, menu or button automation, and app-state observation. Trigger when the task requires controlling or reading app UI rather than just launching apps.
---

# macOS UI Accessibility

Use this skill when the job is to inspect or control application UI on macOS.

## Core Surfaces

- `AXUIElement`
- `NSWorkspace`

## Use Cases

- inspect windows
- click buttons or select menu items
- monitor app launch/focus state
- build tilers, helpers, or app copilots

## Working Rules

- Prefer high-level app scripting first if it is enough.
- Use Accessibility for UI structure and control.
- Treat Accessibility permission as a real dependency, not a footnote.

## Escalate To

- `macos-trust-policy` for permission blockers
- `macos-automation-launchd` for higher-level orchestration
- `macos-screen-capture` when the workflow becomes visual rather than structural

