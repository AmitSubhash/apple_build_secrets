#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROVIDER="${1:-}"
TARGET="${2:-}"

usage() {
  cat <<'EOF'
Usage:
  ./install.sh codex [target_dir]
  ./install.sh claude [target_dir]
  ./install.sh generic [target_dir]
  ./install.sh all [target_root]

Defaults:
  codex   -> ${CODEX_HOME:-$HOME/.codex}/skills
  claude  -> ${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}
  generic -> ./dist/apple-build-secrets-generic
  all     -> ./dist/apple-build-secrets-all
EOF
}

copy_dir() {
  local src="$1"
  local dst="$2"
  mkdir -p "$dst"
  rm -rf "$dst"
  mkdir -p "$(dirname "$dst")"
  cp -R "$src" "$dst"
}

install_codex() {
  local target="${1:-${CODEX_HOME:-$HOME/.codex}/skills}"
  mkdir -p "$target"
  copy_dir "$SCRIPT_DIR/knowledge/macos" "$target/apple-build-secrets-knowledge"
  for skill in \
    apple-build-secrets-router \
    macos-automation-launchd \
    macos-ui-accessibility \
    macos-screen-capture \
    macos-observability \
    macos-trust-policy
  do
    copy_dir "$SCRIPT_DIR/providers/codex/$skill" "$target/$skill"
  done
  echo "Installed Codex skills into: $target"
}

install_claude() {
  local target="${1:-${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}}"
  mkdir -p "$target"
  copy_dir "$SCRIPT_DIR/knowledge/macos" "$target/apple-build-secrets-knowledge"
  for skill in \
    apple-build-secrets-router \
    macos-automation-launchd \
    macos-ui-accessibility \
    macos-screen-capture \
    macos-observability \
    macos-trust-policy
  do
    copy_dir "$SCRIPT_DIR/providers/claude/$skill" "$target/$skill"
  done
  echo "Installed Claude skills into: $target"
}

install_generic() {
  local target="${1:-$SCRIPT_DIR/dist/apple-build-secrets-generic}"
  mkdir -p "$target"
  copy_dir "$SCRIPT_DIR/knowledge/macos" "$target/knowledge/macos"
  copy_dir "$SCRIPT_DIR/providers/generic/prompts" "$target/prompts"
  cp "$SCRIPT_DIR/providers/generic/README.md" "$target/README.md"
  cp "$SCRIPT_DIR/manifest.yaml" "$target/manifest.yaml"
  echo "Installed generic bundle into: $target"
}

install_all() {
  local target="${1:-$SCRIPT_DIR/dist/apple-build-secrets-all}"
  mkdir -p "$target"
  install_codex "$target/codex"
  install_claude "$target/claude"
  install_generic "$target/generic"
}

case "$PROVIDER" in
  codex)
    install_codex "$TARGET"
    ;;
  claude)
    install_claude "$TARGET"
    ;;
  generic)
    install_generic "$TARGET"
    ;;
  all)
    install_all "$TARGET"
    ;;
  ""|-h|--help|help)
    usage
    ;;
  *)
    echo "Unknown provider: $PROVIDER" >&2
    usage
    exit 1
    ;;
esac
