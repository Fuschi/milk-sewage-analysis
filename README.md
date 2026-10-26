# Milk–sewage analyses

Exploratory and statistical analyses of milk and sewage metagenomes,
using outputs from `milk-sewage-wgs`.

## Structure

- `R/`: shared R functions.
- `analyses/`: analysis scripts and Quarto reports.
- `tables/`: imported tables and sample metadata.
- `results/`: figures and other results.

## Import data

Run from the repository root:

```bash
bash import_data.sh
```

Imports `tables/`, `results/`, and `config/samples.tsv` from the
`milk-sewage-wgs` repository.
Sample metadata are saved as `tables/samples.tsv`.

Existing files are updated. Files absent from the source are removed
from the destination folders.
