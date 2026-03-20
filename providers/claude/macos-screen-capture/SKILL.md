# macOS Screen Capture

## Description

Use this skill for ScreenCaptureKit, macOS screenshots, screen recording, window capture, screencapture CLI workflows, and visual-assistant tooling.

## Trigger Conditions

Activate this skill when the user needs image or video capture from the screen or a specific window.

## Instructions

Core surfaces:

- `ScreenCaptureKit`
- `screencapture`

Working rules:

- use `screencapture` for quick operator workflows
- use `ScreenCaptureKit` for app or tool implementation
- treat Screen Recording permission as a primary gate

Escalate to:

- `macos-trust-policy` for TCC issues
- `macos-observability` for related debugging
- `macos-ui-accessibility` if the task also requires structural UI control

