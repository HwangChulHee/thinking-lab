# Chapter 1 — Building Abstractions with Procedures

**Source:** SICP 2nd edition, Chapter 1. The section references point to the book; this module is an original companion, not a replacement for reading it.

## What should change in your thinking?

A procedure is a *description of a computational process*, not merely a reusable block of code. Two procedures can return the same value yet generate processes with very different time and space behavior. Later, higher-order procedures allow us to express patterns of computation as values.

## Learning sequence

| Module | Source | Investigate | Practice |
|---|---|---|---|
| 01. Evaluation and substitution | §1.1.5–1.1.7 | How does evaluation proceed? | Trace by hand; compare evaluation strategies |
| 02. Recursive vs iterative processes | §1.2.1–1.2.2 | Does recursive syntax imply linear stack growth? | [Lab 01](labs/01-process-shapes.md) |
| 03. Orders of growth | §1.2.3–1.2.6 | Which costs survive larger inputs? | Record counts, fit rough growth, explain |
| 04. Higher-order procedures | §1.3.1–1.3.2 | Can the *pattern* of computation become an argument? | Sum/product/general accumulation |
| 05. Finding fixed points | §1.3.3–1.3.4 | Can computation be expressed as repeated improvement? | Fixed points, Newton's method |

## Practice policy

1. Read the relevant SICP section.
2. Predict outcomes **before** running code.
3. Solve the associated original textbook exercises using the book; don't look up solutions first.
4. Complete the independent transfer challenge and explain the mechanism.
5. After 3–7 days, redo one variant without notes. Revisit again after roughly 2–4 weeks.

Do not treat the number of solved exercises as a score: explain the *reason* an algorithm behaves the way it does.

## Environment

For the first module, install [Racket](https://racket-lang.org/) and run:

```bash
racket sicp/01-procedures/examples/processes.rkt
racket sicp/01-procedures/exercises/ex01-factorial.rkt
```

These scripts use `#lang racket`, not `#lang sicp`. Tail calls work in Racket, but do not generalize that guarantee to every language (notably Python).

## First lab

Start with **[Lab 01: A recursive definition need not produce a recursive process](labs/01-process-shapes.md)**. It deliberately requires an explanation, a working implementation, and transfer to a different problem.

## Mastery check

You are ready to proceed when you can, without prompts:
- Distinguish recursive *syntax* from recursive *process*.
- Describe deferred operations and fixed-size state.
- Draw how the process evolves for an unfamiliar small input.
- Apply the distinction to a fresh problem and explain space behavior.
- Identify where language/runtime implementation details matter.
