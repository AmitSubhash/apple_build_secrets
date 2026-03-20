# macOS UI Accessibility

## Description

Use this skill for macOS UI automation, Accessibility API work, AXUIElement, window inspection, menu or button automation, and app-state observation.

## Trigger Conditions

Activate this skill when the task requires controlling or reading app UI rather than just launching apps.

## Instructions

Core surfaces:

- `AXUIElement`
- `NSWorkspace`

Use cases:

- inspect windows
- click buttons or select menu items
- monitor app launch and focus state
- build tilers, helpers, or app copilots

Escalate to:

- `macos-trust-policy` for permission blockers
- `macos-automation-launchd` for higher-level orchestration
- `macos-screen-capture` when the workflow becomes visual rather than structural

