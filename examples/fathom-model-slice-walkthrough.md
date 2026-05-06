# Fathom Model Slice Loom Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 213 | ship |
| stress | window width | 181 | ship |
| edge | metric stability | 162 | ship |
| recovery | explainability | 191 | ship |
| stale | feature drift | 206 | ship |

Start with `baseline` and `edge`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `feature drift` against `metric stability`, not the raw score alone.
