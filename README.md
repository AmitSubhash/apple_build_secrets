# Apple Build Secrets

`apple_build_secrets` is an installable macOS skill pack for coding agents and model-driven developer workflows.

It turns a deep macOS research pass into:

- a human-readable knowledge library
- installable live skills for Codex
- installable live skills for Claude-style skill folders
- generic prompt bundles for other models and agent frameworks

The point is not “secret hacks for the sake of hacks.” The point is to help Apple app developers and Mac power users understand what the platform can actually do, where the boundaries are, and how to route the right task to the right macOS surface.

## Quick Start

Clone the repo, then install the provider layout you want:

```bash
git clone <repo-url> apple_build_secrets
cd apple_build_secrets
./install.sh codex
```

Other install targets:

```bash
./install.sh claude
./install.sh generic ./dist/apple-build-secrets-generic
./install.sh all ./dist/apple-build-secrets-all
```

## What The Research Did

This repo is based on a multi-pass macOS capability audit that covered both:

- hardware-adjacent and private surfaces
  - lid angle, hidden HID paths, SPU sensor devices, ambient light, raw trackpad data, Apple Silicon thermal services
- software-side operating system capabilities
  - automation, UI control, input events, screen capture, Spotlight metadata, unified logging, trust and TCC, package plumbing, snapshots, virtualization, system extensions, network extension, and endpoint security

The research combined:

- Apple developer documentation
- Apple-shipped man pages and built-in tools
- reverse-engineered public projects where Apple does not publish stable APIs
- local validation on a real Mac where that validation was possible

## What It Intends To Do For Apple App Developers

Apple app developers usually know the public SDK surface they touch day to day. They often do not have one coherent map of:

- what is public and stable
- what is Apple-shipped but admin/debug oriented
- what is private or reverse-engineered
- what is blocked by TCC, Gatekeeper, signatures, quarantine, or extension approval
- which tool or framework to reach for first

This repo tries to be that map.

It is intended to help you:

- choose the right surface for automation, capture, or inspection work
- debug why a permission, policy, or launch path is failing
- reason about when to stay public and when you are crossing into private territory
- build better internal tools for macOS app development, testing, debugging, and support
- use coding agents more effectively on Mac-specific work without forcing the model to rediscover platform behavior from scratch every time

## Repo Layout

```text
apple_build_secrets/
  README.md
  manifest.yaml
  install.sh
  knowledge/
    macos/
      00_INDEX.md
      01_AUTOMATION_AND_LAUNCHD.md
      ...
      99_AUDIT.md
  providers/
    codex/
      apple-build-secrets-router/
      macos-automation-launchd/
      macos-ui-accessibility/
      macos-screen-capture/
      macos-observability/
      macos-trust-policy/
    claude/
      apple-build-secrets-router/
      macos-automation-launchd/
      macos-ui-accessibility/
      macos-screen-capture/
      macos-observability/
      macos-trust-policy/
    generic/
      README.md
      prompts/
        ROUTER_PROMPT.md
        APPLE_APP_DEVELOPER_PROMPT.md
```

## Install

### Codex

```bash
./install.sh codex
```

Default target:

```text
${CODEX_HOME:-$HOME/.codex}/skills
```

### Claude

```bash
./install.sh claude
```

Default target:

```text
${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}
```

### Generic / Other Models

```bash
./install.sh generic ./dist/apple-build-secrets-generic
```

This exports the knowledge library and generic prompt files for systems that do not use Codex or Claude skill conventions directly.

## What Gets Installed

### Codex and Claude

The installer copies:

- the full knowledge library as `apple-build-secrets-knowledge/`
- the promoted live skill folders:
  - `apple-build-secrets-router`
  - `macos-automation-launchd`
  - `macos-ui-accessibility`
  - `macos-screen-capture`
  - `macos-observability`
  - `macos-trust-policy`

### Generic

The installer copies:

- the knowledge library
- a router prompt
- a developer-oriented integration prompt

## How To Use It

### In Codex

After install, ask things like:

- “Set up a launchd workflow for this Mac task.”
- “Why is this macOS automation failing to get permission?”
- “Help me build a window-aware screen capture tool on macOS.”
- “Trace why this background service keeps launching.”

### In Claude

After install, use the same style of requests. The Claude skill folders are written as plain skill docs instead of Codex frontmatter skills, but they target the same domains.

### In Other Models

Load:

1. `knowledge/macos/00_INDEX.md`
2. one matching domain doc
3. optionally `providers/generic/prompts/APPLE_APP_DEVELOPER_PROMPT.md`

Do not load the whole library unless you are doing an audit or broad platform planning.

## Current Scope

The knowledge library covers the full macOS capability map explored so far, but the first live skill release intentionally promotes only the most useful day-to-day domains:

- automation and launchd
- UI control and accessibility
- screen capture and visual workflows
- logging, tracing, and observability
- trust, permissions, quarantine, signatures, and system policy

The rest remain in the knowledge layer and can be promoted later.

## Caveats

- Some research areas describe Apple-private or reverse-engineered behavior.
- Not everything here is App Store safe.
- Some workflows are gated by TCC, entitlements, Full Disk Access, or system extension approval.
- Some hardware-adjacent findings are model-specific.

Use this repo as a capability map and engineering guide, not as a promise that every surface is stable.

## Best Next Improvements

- promote the remaining domains into live skills
- add helper scripts and templates
- add a machine-readable manifest for event-to-domain routing
- add installation tests for each provider layout
- add concrete example prompts per domain
