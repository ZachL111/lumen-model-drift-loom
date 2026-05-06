# Review Journal

The repository goal stays the same: create a Haskell reference implementation for drift workflows, centered on event replay, fixture event logs, and golden state snapshots. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 189, lane `ship`
- `stress`: `window width`, score 152, lane `ship`
- `edge`: `metric stability`, score 131, lane `watch`
- `recovery`: `explainability`, score 132, lane `watch`
- `stale`: `feature drift`, score 174, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
