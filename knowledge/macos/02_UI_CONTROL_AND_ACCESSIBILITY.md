---
title: UI Control And Accessibility
skill_id: macos.ui_accessibility
status: draft
candidate_codex_skill_name: macos-ui-accessibility
when_to_load:
  - ui automation
  - window control
  - app state inspection
  - accessibility tree work
---

# UI Control And Accessibility

## Mission

Use this domain when the job requires understanding or controlling what an app is showing, not just launching the app or sending it a high-level Apple event.

## Core Surfaces

- Accessibility API through `AXUIElement`
- `NSWorkspace` notifications for app and workspace state

## Best Use Cases

- inspect windows and UI hierarchy
- click buttons, set fields, select menu items
- observe app launch and focus changes
- build tilers, desktop helpers, UI copilots, or app watchdogs

## First Moves

1. Confirm whether the app can be controlled at the Apple-event level first.
2. If not, move to Accessibility inspection.
3. Determine whether the task is read-only UI inspection or active UI mutation.
4. If the workflow needs keystrokes or event synthesis, cross-load [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md).

## Design Rules

- Prefer the highest-level stable surface that works.
- Use Accessibility for structure and UI semantics.
- Do not mix UI-tree inspection and blind synthetic clicking unless necessary.
- Expect brittle selectors in complex or rapidly changing apps.

## Permission Gates

- Accessibility
- sometimes Automation
- sometimes Input Monitoring if you drift into low-level event work

## Sideways Routes

- synthetic keys, hotkeys, or event taps: [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md)
- permission failures: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- app launch/session orchestration: [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)

## Future Skill Assets

- a reusable AX inspection script
- a permission preflight checklist
- common app-targeting heuristics and selector patterns

