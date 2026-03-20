---
name: macos-screen-capture
description: Use for ScreenCaptureKit, macOS screenshots, screen recording, window capture, screencapture CLI workflows, and visual-assistant tooling. Trigger when the user needs image or video capture from the screen or a specific window.
---

# macOS Screen Capture

Use this skill when the output is visual: screenshot, recording, or captured window content.

## Core Surfaces

- `ScreenCaptureKit`
- `screencapture`

## Use Cases

- screenshots
- window capture
- recordings
- visual debugging artifacts
- screen-aware tooling

## Working Rules

- Use `screencapture` for quick operator workflows.
- Use `ScreenCaptureKit` for app or tool implementation.
- Treat Screen Recording permission as a primary gate.

## Escalate To

- `macos-trust-policy` for TCC issues
- `macos-observability` for related debugging
- `macos-ui-accessibility` if the task also requires structural UI control

