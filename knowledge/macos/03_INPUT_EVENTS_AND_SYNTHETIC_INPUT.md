---
title: Input Events And Synthetic Input
skill_id: macos.input_events
status: draft
candidate_codex_skill_name: macos-input-events
when_to_load:
  - global hotkeys
  - event taps
  - synthetic keyboard or mouse events
  - input monitoring
---

# Input Events And Synthetic Input

## Mission

Use this domain when the task lives at the event layer: observe keys or mouse actions globally, intercept them, or synthesize new ones.

## Core Surfaces

- `CGEventTapCreate`
- `CGEventCreateKeyboardEvent`
- related Core Graphics event creation and posting APIs

## Best Use Cases

- global shortcut tools
- key remapping or interception
- keyboard/mouse telemetry
- synthetic typing and clicking
- automation tools that must operate below the app-script level

## First Moves

1. Decide whether you only need app scripting or Accessibility first.
2. If not, move to event taps or synthetic events.
3. Separate passive observation from active filtering.
4. Separate synthetic input generation from UI-tree targeting.

## Design Rules

- Keep event-tap logic minimal and explicit.
- Avoid broad interception when a narrower app or Accessibility solution exists.
- Treat synthetic input as a last-mile tool, not the primary control plane.

## Permission Gates

- Input Monitoring
- Accessibility
- some tap placements are more privileged than others

## Sideways Routes

- UI-tree work: [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)
- permission and trust issues: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- workflow scheduling or orchestration: [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)

## Future Skill Assets

- a passive event-tap example
- a safe synthetic-key wrapper
- a permission readiness probe

