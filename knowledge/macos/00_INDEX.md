---
title: macOS Skill Library Index
library_id: macos-skill-library
status: draft
intended_next_step: promote selected domain docs into live Codex skills
---

# macOS Skill Library Index

This directory is a Markdown-first skill library for macOS capabilities. It is not yet a live Codex skill pack. The goal of this draft is to break the Mac into reusable capability domains, route events to the right domain doc, and keep each domain small enough to become a real `SKILL.md` later.

## Loader Contract

Start here, then:

1. Identify the event, intent, or blocker.
2. Load one primary domain doc.
3. Load at most one secondary doc if the first doc says to escalate sideways.
4. Do not load the whole directory unless you are auditing the library itself.

## Directory Map

- [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)
- [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)
- [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md)
- [04 Screen Capture And Visual Workflows](04_SCREEN_CAPTURE_AND_VISUAL_WORKFLOWS.md)
- [05 Spotlight Metadata And Files](05_SPOTLIGHT_METADATA_AND_FILES.md)
- [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- [08 Packages Profiles And Updates](08_PACKAGES_PROFILES_AND_UPDATES.md)
- [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md)
- [10 Virtualization And Isolation](10_VIRTUALIZATION_AND_ISOLATION.md)
- [11 System Extensions Network And Security](11_SYSTEM_EXTENSIONS_NETWORK_AND_SECURITY.md)
- [99 Audit](99_AUDIT.md)

## Event Router

- Need recurring automation, background jobs, app launch orchestration, or “run this later/on login/on boot”:
  use [01 Automation And Launchd](01_AUTOMATION_AND_LAUNCHD.md)
- Need to inspect windows, click UI, read UI trees, or automate another app’s interface:
  use [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md)
- Need global hotkeys, input monitoring, synthetic keypresses, or mouse event generation:
  use [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md)
- Need screenshots, screen recording, window capture, or a visual assistant workflow:
  use [04 Screen Capture And Visual Workflows](04_SCREEN_CAPTURE_AND_VISUAL_WORKFLOWS.md)
- Need file discovery by metadata, content type, or a faster file search/control plane:
  use [05 Spotlight Metadata And Files](05_SPOTLIGHT_METADATA_AND_FILES.md)
- Need to understand what macOS or an app is doing, why it failed, or what background services did:
  use [06 Logging Tracing And Observability](06_LOGGING_TRACING_AND_OBSERVABILITY.md)
- Need to debug permissions, Gatekeeper, quarantine, signatures, blocked apps, or TCC prompts:
  use [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- Need to inspect receipts, install packages, manage profiles, or handle macOS updates:
  use [08 Packages Profiles And Updates](08_PACKAGES_PROFILES_AND_UPDATES.md)
- Need rollback, restore, snapshots, Time Machine comparison, or experiment safety rails:
  use [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md)
- Need a disposable environment, macOS/Linux VM, or isolated repro box:
  use [10 Virtualization And Isolation](10_VIRTUALIZATION_AND_ISOLATION.md)
- Need network filtering, VPN-style integration, endpoint monitoring, or deeper system hooks:
  use [11 System Extensions Network And Security](11_SYSTEM_EXTENSIONS_NETWORK_AND_SECURITY.md)

## Permission Router

- Accessibility or Automation prompt:
  start with [02 UI Control And Accessibility](02_UI_CONTROL_AND_ACCESSIBILITY.md), then cross-load [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- Input Monitoring issue:
  start with [03 Input Events And Synthetic Input](03_INPUT_EVENTS_AND_SYNTHETIC_INPUT.md), then cross-load [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- Screen Recording issue:
  start with [04 Screen Capture And Visual Workflows](04_SCREEN_CAPTURE_AND_VISUAL_WORKFLOWS.md), then cross-load [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md)
- Full Disk Access issue:
  start with [07 Trust Permissions And System Policy](07_TRUST_PERMISSIONS_AND_SYSTEM_POLICY.md), then cross-load [09 Snapshots Backup And Recovery](09_SNAPSHOTS_BACKUP_AND_RECOVERY.md) or [08 Packages Profiles And Updates](08_PACKAGES_PROFILES_AND_UPDATES.md)

## Suggested Promotion Order

If this library is converted into live Codex skills, promote these first:

1. Automation and launchd
2. UI control and accessibility
3. Trust, permissions, and system policy
4. Logging, tracing, and observability
5. Screen capture and visual workflows

These have the highest practical leverage and the clearest trigger conditions.

