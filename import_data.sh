#!/usr/bin/env bash
set -euo pipefail

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT

git clone --quiet --depth 1 --branch main \
    https://github.com/Fuschi/milk-sewage-wgs.git "$tmp/workflow"

mkdir -p data

rsync -av --delete "$tmp/workflow/results/" data/

cp "$tmp/workflow/config/samples.tsv" data/samples.tsv
