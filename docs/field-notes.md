# Field Notes

This note keeps the ml utilities assumptions visible beside the checks.

The domain cases cover `feature drift`, `window width`, `metric stability`, and `explainability`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `feature drift` and `metric stability`, so those are the first two cases I would preserve during a refactor.

The language-specific addition keeps the review model pure and imported by the existing harness.
