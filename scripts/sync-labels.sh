#!/usr/bin/env bash
# Create or update the dimensioned label set on a repo.
# Usage: scripts/sync-labels.sh <owner/repo> [--prune]
#   --prune also deletes GitHub's platform default labels.
set -euo pipefail
repo="${1:?usage: sync-labels.sh <owner/repo> [--prune]}"
prune="${2:-}"
here="$(cd "$(dirname "$0")/.." && pwd)"
grep -v '^#' "$here/labels.tsv" | while IFS=$'\t' read -r name color desc; do
  [ -n "$name" ] || continue
  gh label create "$name" --repo "$repo" --color "$color" --description "$desc" --force
done
if [ "$prune" = "--prune" ]; then
  for name in bug documentation duplicate enhancement "good first issue" \
    "help wanted" invalid question wontfix; do
    gh label delete "$name" --repo "$repo" --yes 2>/dev/null || true
  done
fi
