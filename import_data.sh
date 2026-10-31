#!/usr/bin/env bash
set -euo pipefail

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

git clone --quiet --depth 1 --branch main \
    https://github.com/Fuschi/milk-sewage-wgs.git "$tmp/workflow"

mkdir -p results

rsync -av --delete "$tmp/workflow/results/" results/

cp "$tmp/workflow/config/samples.tsv" results/samples.tsv
