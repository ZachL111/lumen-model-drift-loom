# Lumen Model Drift Loom Walkthrough

This note is the quickest way to read the extra review model in `lumen-model-drift-loom`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 189 | ship |
| stress | window width | 152 | ship |
| edge | metric stability | 131 | watch |
| recovery | explainability | 132 | watch |
| stale | feature drift | 174 | ship |

Start with `baseline` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around window width and explainability.
