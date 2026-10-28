<!-- Generated — managed centrally; do not edit here. -->
# Contributing

Each repo has its own `CONTRIBUTING.md` with project-specific guidance.
This file covers what applies org-wide.

## Conventional Commits

All commits and PR titles follow [Conventional Commits v1.0.0](https://www.conventionalcommits.org/en/v1.0.0/):

```
<type>(<scope>): <subject>
```

Types: `feat`, `fix`, `perf`, `refactor`, `chore`, `docs`, `test`, `ci`, `build`, `style`.

`feat`, `fix`, `perf` are user-facing (bump versions, appear in changelog).
The rest are hidden. CI/workflow changes use `ci:` — never `fix(ci):`.
Breaking changes: `!` after type/scope or a `BREAKING CHANGE:` footer.

## Branches and PRs

- Branch from `next` (the default branch) as `<type>/<kebab-topic>`.
- PR title = Conventional Commit; no `(#N)` suffix, no tracker references.
- One approving review from a maintainer. No sign-off footer.
- Squash-merge by default; rebase-merge is not used.

## Conduct and security

- [Code of Conduct](CODE_OF_CONDUCT.md) — reports to <conduct@mxhook.dev>.
- [Security policy](SECURITY.md) — vulnerabilities to <security@mxhook.dev>, never public issues.
