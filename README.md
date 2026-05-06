# lumen-model-drift-loom

`lumen-model-drift-loom` is a Haskell project in ml utilities. Its focus is to create a Haskell reference implementation for drift workflows, centered on event replay, fixture event logs, and golden state snapshots.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how feature drift and metric stability should influence a review result.

## Lumen Model Drift Loom Review Notes

For a quick review, compare `feature drift` with `metric stability` before reading the middle cases.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/lumen-model-drift-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `feature drift` and `metric stability`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Haskell code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The check exercises the source code and the review fixture. `baseline` is the high score at 189; `edge` is the low score at 131.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
