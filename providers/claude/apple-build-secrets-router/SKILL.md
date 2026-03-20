# Apple Build Secrets Router

## Description

Use this skill when a macOS request needs routing to the right capability domain before implementation.

## Trigger Conditions

Activate this skill when the user has a broad macOS question and the main task is choosing the right platform surface.

## Instructions

- recurring automation or background workflows:
  use `macos-automation-launchd`
- app UI inspection or control:
  use `macos-ui-accessibility`
- screenshots, window capture, or screen recording:
  use `macos-screen-capture`
- tracing weird behavior or background services:
  use `macos-observability`
- Gatekeeper, TCC, quarantine, signatures, or permissions:
  use `macos-trust-policy`

Working rules:

- prefer Apple-public surfaces and Apple-shipped tools first
- treat permissions and system policy as first-class constraints
- load one primary domain skill unless it clearly requires a second

