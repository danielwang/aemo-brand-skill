#!/usr/bin/env bash
#
# install.sh — install this Agent Skill package into a recognized skills folder.
#
# This script copies the package into one or more standard "Agent Skill" locations
# (the same SKILL.md + frontmatter convention used by VS Code Copilot, Claude Code,
# and other skill-aware AI coding agents). It does not depend on any one vendor;
# it just copies files to the directory names those tools look for.
#
# Usage:
#   ./scripts/install.sh                     Install to all personal skill folders (default)
#   ./scripts/install.sh --personal          Same as above, explicit
#   ./scripts/install.sh --project <path>    Install into a specific project's .github/skills,
#                                             .agents/skills, and .claude/skills folders
#   ./scripts/install.sh --target <dir>      Install into exactly one target folder
#   ./scripts/install.sh --symlink           Symlink instead of copy (copy is the default,
#                                             so the install keeps working even if this
#                                             source folder is later moved or deleted)
#   ./scripts/install.sh --dry-run           Print what would happen without changing anything
#   ./scripts/install.sh --uninstall         Remove this skill from the selected location(s)
#
# Multiple flags can be combined, e.g.:
#   ./scripts/install.sh --personal --project ~/code/my-app
#
# Examples:
#   ./scripts/install.sh
#   ./scripts/install.sh --project /path/to/my-repo
#   ./scripts/install.sh --uninstall --personal

set -euo pipefail

SKILL_NAME="aemo-brand-skill"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

MODE="copy"       # copy | symlink
ACTION="install"  # install | uninstall
DRY_RUN=false
TARGETS=()
DID_SELECT_SCOPE=false

add_personal_targets() {
  TARGETS+=("$HOME/.copilot/skills/$SKILL_NAME")
  TARGETS+=("$HOME/.claude/skills/$SKILL_NAME")
  TARGETS+=("$HOME/.agents/skills/$SKILL_NAME")
}

add_project_targets() {
  local project_root
  project_root="$(cd "$1" && pwd)"
  TARGETS+=("$project_root/.github/skills/$SKILL_NAME")
  TARGETS+=("$project_root/.agents/skills/$SKILL_NAME")
  TARGETS+=("$project_root/.claude/skills/$SKILL_NAME")
}

while [[ $# -gt 0 ]]; do
  case "$1" in
    --personal)
      add_personal_targets
      DID_SELECT_SCOPE=true
      shift
      ;;
    --project)
      [[ -n "${2:-}" ]] || { echo "error: --project requires a path" >&2; exit 1; }
      add_project_targets "$2"
      DID_SELECT_SCOPE=true
      shift 2
      ;;
    --target)
      [[ -n "${2:-}" ]] || { echo "error: --target requires a path" >&2; exit 1; }
      TARGETS+=("$2")
      DID_SELECT_SCOPE=true
      shift 2
      ;;
    --symlink)
      MODE="symlink"
      shift
      ;;
    --copy)
      MODE="copy"
      shift
      ;;
    --dry-run)
      DRY_RUN=true
      shift
      ;;
    --uninstall)
      ACTION="uninstall"
      shift
      ;;
    -h|--help)
      sed -n '2,27p' "$0"
      exit 0
      ;;
    *)
      echo "error: unknown argument '$1'" >&2
      exit 1
      ;;
  esac
done

# Default: personal scope, if nothing else was selected.
if [[ "$DID_SELECT_SCOPE" == false ]]; then
  add_personal_targets
fi

echo "AEMO Brand Skill installer"
echo "  Source: $SOURCE_DIR"
echo "  Action: $ACTION"
echo "  Mode:   $MODE"
echo "  Dry run: $DRY_RUN"
echo ""

for target in "${TARGETS[@]}"; do
  if [[ "$ACTION" == "uninstall" ]]; then
    if [[ -e "$target" || -L "$target" ]]; then
      echo "Removing $target"
      [[ "$DRY_RUN" == true ]] || rm -rf "$target"
    else
      echo "Skipping $target (not installed)"
    fi
    continue
  fi

  parent_dir="$(dirname "$target")"
  echo "Installing to $target"
  if [[ "$DRY_RUN" == true ]]; then
    continue
  fi

  mkdir -p "$parent_dir"

  if [[ -e "$target" || -L "$target" ]]; then
    rm -rf "$target"
  fi

  if [[ "$MODE" == "symlink" ]]; then
    ln -s "$SOURCE_DIR" "$target"
  else
    mkdir -p "$target"
    # Copy everything except this scripts/ folder's own .git-style noise and the
    # script itself re-copying into itself; rsync keeps this simple and portable.
    if command -v rsync >/dev/null 2>&1; then
      rsync -a --exclude ".DS_Store" "$SOURCE_DIR/" "$target/"
    else
      cp -R "$SOURCE_DIR/." "$target/"
    fi
  fi
done

echo ""
if [[ "$DRY_RUN" == true ]]; then
  echo "Dry run complete. No files were changed."
else
  echo "Done."
fi
