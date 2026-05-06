# fathom-model-slice-loom

`fathom-model-slice-loom` explores ml utilities with a small Haskell codebase and local fixtures. The technical goal is to create a Haskell reference implementation for slice workflows, centered on event replay, fixture event logs, and golden state snapshots.

## Project Rationale

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Fathom Model Slice Loom Review Notes

The first comparison I would make is `feature drift` against `metric stability` because it shows where the rule is most opinionated.

## Feature Set

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/fathom-model-slice-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `feature drift` and `metric stability`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `feature drift`, `window width`, `metric stability`, and `explainability`.

The Haskell code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `baseline` at 213, which lands in `ship`. The most cautious case is `edge` at 162, which lands in `ship`.

## Next Improvements

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
