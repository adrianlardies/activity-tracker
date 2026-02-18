#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="$HOME/projects/github/adrianlardies/activity-tracker"
cd "$REPO_DIR"

# Genera timestamp
echo "Última actualización: $(date '+%Y-%m-%d %H:%M:%S')" > commit.txt

# Añade y commitea solo si hay cambios
git add commit.txt

if ! git diff --cached --quiet; then
  git commit -m "Actualización automática: $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
fi
