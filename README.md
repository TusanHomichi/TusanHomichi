# Peter Permenter

**Rust systems and backend engineering · Open-source infrastructure · Game runtimes**

I'm Peter. I build Linux package infrastructure, self-hosted public-safety tools, and game systems. I care about software you can inspect, recover, and keep running without a permanent vendor relationship.

My infrastructure and public-safety work lives at **[Fieldmouse Works](https://github.com/FieldmouseWorks)**. My personal repositories explore persistent worlds, deterministic runtimes, and native game reconstruction.

**Open to remote systems/backend work and direct employment in Europe.** I work best in writing: clear contracts, design documents, reviewable changes, and evidence from real machines.

[Fieldmouse Works](https://github.com/FieldmouseWorks) · [Selected work](#selected-work) · [Contact](#contact)

## Selected work

### [Conary](https://github.com/FieldmouseWorks/Conary)
**Linux package infrastructure · Rust**

A cross-distro package manager for RPM, DEB, Arch, and native CCS packages. The work centers on preserving source-format lifecycle semantics, resolving dependencies, and applying changes through content-addressed storage, transaction history, and immutable system generations for rollback.

The workspace also contains **Remi**, its package-conversion and catalog service.

**Stage:** pre-alpha preview; VM or disposable host only. See the [project status](https://github.com/FieldmouseWorks/Conary#status) for supported paths and public testing availability.

### [Consolebook](https://github.com/FieldmouseWorks/consolebook)
**Emergency-communications training records · Rust / Axum / SQLite / SvelteKit**

Self-hosted software for versioned training programs, Daily Observation Reports, weekly summaries, task signoffs, and trainee histories. Implemented workflows include immutable finalized records, acknowledgments, amendments, verifiable structured exports, and complete trainee packets.

One executable, an embedded web interface, and one data directory per installation.

**Stage:** pre-alpha, usable for development and evaluation. No production or personnel data. Remaining work is tracked in the [roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md).

### [The Mortal Estate](https://github.com/TusanHomichi/the-mortal-estate)
**Persistent online tactical RPG**

An original game about life, death, inheritance, and memory. The player is a lineage across successive lives; former characters remain part of the world rather than disappearing into deleted save records.

**Stage:** pre-release and under active construction; the public source is not a released game. The [genesis ledger](https://github.com/TusanHomichi/the-mortal-estate/blob/main/docs/plans/genesis-ledger.md#current-checkpoint) tracks progress. Code and original game content have [separate licensing terms](https://github.com/TusanHomichi/the-mortal-estate#licensing).

### [PSIV](https://github.com/TusanHomichi/PSIV)
**Native game reconstruction · Rust / Godot / Python**

A native reimplementation of *Phantasy Star IV*. Python extracts a local data pack from a user-supplied US ROM, Rust runs the game rules, and Godot handles desktop presentation and input. Development compares native behavior against the original game.

**Stage:** active development; the campaign is not yet complete. Requires a user-supplied ROM; no ROM or extracted game assets are distributed. See the [current checkpoint](https://github.com/TusanHomichi/PSIV#where-we-are).

### [Nomos](https://github.com/TusanHomichi/nomos)
**Semantic game-runtime research · Rust / WebAssembly**

A runtime for AI-authored worlds with explicit facts, capabilities, state transitions, replay, and explanations. The accepted runtime baseline includes native/WASM execution and an offline viewer; presentation research remains separate from game adoption.

**Stage:** experimental. Not adopted into a game. The [current handoff](https://github.com/TusanHomichi/nomos/blob/main/docs/HANDOFF.md) records the accepted baseline, stopped experiments, and next authorized work.

## How I work

I prefer explicit state and typed contracts over hidden assumptions. Recovery, portability, and failure behavior belong in the design from the start. Documentation and reproducible tests should make it possible for someone else to understand the system and verify the difficult parts.

The repositories distinguish implemented behavior from design targets. Their READMEs and linked status documents are the source of truth as the work evolves.

## Contact

For remote systems/backend work, collaboration, or direct employment in Europe:

[peter@conary.io](mailto:peter@conary.io) · [conary.io](https://conary.io) · [Contact page](https://conary.io/contact/)
