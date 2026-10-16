# Peter Permenter

**Rust systems and backend engineering · Linux infrastructure · Game reconstruction**

I'm Peter. I build Linux upgrade tooling, self-hosted public-safety software, and native game reconstructions. I care about software you can inspect, recover, and keep running without a permanent vendor relationship.

My infrastructure and public-safety work lives at **[Fieldmouse Works](https://github.com/FieldmouseWorks)**. My personal repositories cover native game reconstruction, persistent worlds, and deterministic runtimes.

**Open to remote systems/backend work and direct employment in Europe.** I work best in writing: clear contracts, design documents, reviewable changes, and evidence from real machines.

[Fieldmouse Works](https://github.com/FieldmouseWorks) · [Current work](#current-work) · [Other projects](#other-projects) · [Contact](#contact)

## Current work

### [wend](https://github.com/FieldmouseWorks/wend)
**Proven upgrade routes for old Linux machines · Python / Rust**

Upgrades an old Linux server to a current release one hop at a time. Each route uses small, reviewed fixes for the places where a plain release upgrade breaks, and it counts only after a replay from scratch on test machines keeps every health check green. The native package manager stays in charge. A static Rust client (in progress) will walk a route on a real machine, snapshotting before each hop and rolling back if a health check fails. The client uses no model.

Routes with passing replays: Debian 4.0 etch (2007) to Debian 13, Ubuntu 14.04 to 26.04, and CentOS 5, 7, and 8 to AlmaLinux 10.

**Stage:** early. Routes cover userland only. Kernels, bootloaders, and reboots are not covered yet. See the [README](https://github.com/FieldmouseWorks/wend#readme) and [spec](https://github.com/FieldmouseWorks/wend/blob/main/SPEC.md).

### [Consolebook](https://github.com/FieldmouseWorks/consolebook)
**Emergency-communications training records · Rust / Axum / SQLite / SvelteKit**

Self-hosted software for versioned training programs, Daily Observation Reports, weekly summaries, task signoffs, and trainee histories. Implemented workflows include immutable finalized records, acknowledgments, amendments, retention policies and holds, verifiable record exports, trainee packets, and a complete installation export.

One executable, an embedded web interface, and one data directory per installation. A one-command Linux installer handles upgrades, taking a validated backup before any migration.

**Stage:** pre-alpha, [v0.3.0](https://github.com/FieldmouseWorks/consolebook/releases/latest). Usable for development and evaluation; no production or personnel data. Remaining work is tracked in the [roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md).

### [PSIV](https://github.com/TusanHomichi/PSIV)
**Native game reconstruction · Rust / Godot / Python**

A native reimplementation of *Phantasy Star IV*. Python extracts a local data pack from a user-supplied US ROM, Rust runs the game rules, and Godot handles desktop presentation and input. Development compares native behavior against the original cartridge.

A deterministic campaign route now plays from New Game through Dark Force 2's defeat. Every player technique and skill, and every enemy ability up to that point, is checked against cartridge captures.

**Stage:** active development; the campaign and presentation fidelity are not finished. Requires a user-supplied ROM; no ROM or extracted game assets are distributed. See [where it stands](https://github.com/TusanHomichi/PSIV#where-we-are).

## Other projects

### [The Mortal Estate](https://github.com/TusanHomichi/the-mortal-estate)
**Persistent online tactical RPG · Rust**

An original game about life, death, inheritance, and memory. The player is a lineage across successive lives; former characters remain part of the world rather than disappearing into deleted save records.

**Stage:** pre-release; the public source is not a released game. The [genesis ledger](https://github.com/TusanHomichi/the-mortal-estate/blob/main/docs/plans/genesis-ledger.md#current-checkpoint) tracks progress. Code and original game content have [separate licensing terms](https://github.com/TusanHomichi/the-mortal-estate#licensing).

### [Nomos](https://github.com/TusanHomichi/nomos)
**Semantic game-runtime research · Rust / WebAssembly**

A runtime for AI-authored worlds with explicit facts, capabilities, state transitions, replay, and explanations. The accepted baseline includes native/WASM execution and an [offline viewer](https://tusanhomichi.github.io/nomos/).

**Stage:** experimental. Runtime expansion is paused until a reference scene is accepted; not adopted into a game. The [current handoff](https://github.com/TusanHomichi/nomos/blob/main/docs/HANDOFF.md) records the baseline and next authorized work.

## How I work

I prefer explicit state and typed contracts over hidden assumptions. Recovery, portability, and failure behavior belong in the design from the start. Documentation and reproducible tests should make it possible for someone else to understand the system and verify the difficult parts.

The repositories distinguish implemented behavior from design targets. Their READMEs and linked status documents are the source of truth as the work evolves.

## Contact

For remote systems/backend work, collaboration, or direct employment in Europe:

[peter@conary.io](mailto:peter@conary.io) · [Fieldmouse Works](https://fieldmouseworks.github.io)
