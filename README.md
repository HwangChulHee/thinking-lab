# thinking-lab

> A lifelong laboratory for learning to think through computation.

This is **not** a job-preparation curriculum or a collection of finished demos. The goal is to build durable mental models through **discovery → practice → experimentation → transfer → delayed recall**.

## Principles

1. **Depth over checklists.** Finish a topic when you can apply it to an unfamiliar problem, not merely when its examples run.
2. **Practice before solutions.** Exercises contain problems, constraints, and tests; hints and solutions stay separate.
3. **Question assumptions.** Record what you predicted, what actually happened, and what changed in your understanding.
4. **Independent learning.** Each lab should be runnable and understandable without a video lecture.
5. **Return later.** Revisit earlier ideas without notes after several days or weeks.
6. **Follow curiosity.** Future branches may include compilers, operating systems, mathematics, logic, and physics.

## First track: SICP (2nd edition)

- [01 — Procedures and processes](sicp/01-procedures/README.md) — substitution models, recursion versus iteration, order of growth, higher-order abstractions.
- 02 — Data abstraction (planned)
- 03 — State, environments, and streams (planned)
- 04 — Metalinguistic abstraction (planned)
- 05 — Register machines and compilation (planned)

We use **Scheme** to stay close to *Structure and Interpretation of Computer Programs* (2nd ed.). Working through its examples yourself matters more than finishing quickly.

## Running the first lab

Install [Racket](https://racket-lang.org/) (which includes the `racket` command). Then:

```bash
racket sicp/01-procedures/examples/processes.rkt
racket sicp/01-procedures/exercises/ex01-factorial.rkt
```

The runnable scaffolding uses `#lang racket` for easy setup. Where language semantics differ from SICP's Scheme examples, the lab explicitly calls this out. Later we can introduce `#lang sicp` or a dedicated Scheme interpreter if needed.

## Learning loop

For every lab:

1. **Predict** the result before executing code.
2. **Implement** without a provided final solution.
3. **Experiment** by changing an assumption or constraint.
4. **Transfer** the idea to a new problem.
5. **Reflect** in your own words and revisit after a delay.

Use [the reflection template](templates/reflection.md) to record discoveries. Your notes, not the number of completed files, are the real output.

## References

- Abelson, Sussman & Sussman, *Structure and Interpretation of Computer Programs*, 2nd edition.
- [SICP full text](https://sarabander.github.io/sicp/)
- [MIT Press SICP website](https://mitpress.mit.edu/9780262510875/structure-and-interpretation-of-computer-programs/)

This repository provides original guides and exercise prompts; consult the book for the complete text of its exercises.
