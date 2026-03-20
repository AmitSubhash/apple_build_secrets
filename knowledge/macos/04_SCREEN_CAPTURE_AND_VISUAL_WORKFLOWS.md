---
title: Screen Capture And Visual Workflows
skill_id: macos.screen_capture
status: draft
candidate_codex_skill_name: macos-screen-capture
when_to_load:
  - screenshots
  - screen recording
  - window capture
  - visual assistants
---

# Screen Capture And Visual Workflows

## Mission

Use this domain when the output is visual: a screenshot, a screen recording, a captured window, or a screen-aware tool.

## Core Surfaces

- `ScreenCaptureKit`
- `screencapture`

## Best Use Cases

- selective window capture
- screen recording with app-specific targeting
- visual debugging and repro capture
- screenshot pipelines
- screen-aware assistant tooling

## First Commands

```bash
screencapture -i ~/Desktop/selection.png
screencapture -l<windowid> ~/Desktop/window.png
screencapture -v -g -k ~/Desktop/capture.mov
```

## Design Rules

- Use `screencapture` for quick operator workflows.
- Use `ScreenCaptureKit` for programmatic, window-aware, or streaming capture.
- Separate capture concerns from OCR or later analysis.

## Permission Gates

- Screen Recording
- possibly microphone or audio capture permissions depending on workflow

## Sideways Routes

- blocked capture or permission prompt loops: [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- visual debugging of system behavior: [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- UI-aware automation layered on top of capture: [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)

## Future Skill Assets

- a window-enumerator helper
- screen recording presets
- capture-to-artifact workflow templates

