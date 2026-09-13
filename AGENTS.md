# Alpheus Profile

This is a profile repository for Alpheus.

## Sorting

`./README.md` lists organizations in this order:

1. Alpheus organizations, high-level to low-level
2. other organizations, high-level to low-level

When two organizations are at the same level, the frontend one comes first.

## Tooling and Workflow

The repository uses:

- Node.js
- pnpm
- just

`just` is the preferred task runner over the lower-level tools.

Before running an task, inspect the available commands:

```sh
just
```

## What NOT to Do

- invent APIs, files, modules, or behavior
- assume unsupported features exist
- violate dependency boundaries
- introduce circular dependencies
- add unnecessary dependencies
- refactor unrelated code during a focuesd change
- modify generated artifacts directly when a generation workflow exists
- migrate tooling without an explicit requirement
- intoruce a second package manager
- introduce unnecessary mutation
- commit or push Git changes unless explicitly requested
