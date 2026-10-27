# Peter Permenter

**Rust systems and backend engineering · Linux and agent infrastructure · Game reconstruction**

I'm Peter. I build Linux upgrade tooling, infrastructure for running AI coding agents, self-hosted public-safety software, and native game reconstructions. I care about software you can inspect, recover, and keep running without a permanent vendor relationship.

My infrastructure, agent tooling and public-safety work lives at **[Fieldmouse Works](https://github.com/FieldmouseWorks)**. My personal repositories cover native game reconstruction, persistent worlds, and deterministic runtimes.

**Looking for systems/backend work, remote or based in Europe.** I live in the Pacific Northwest and would like to move to Europe. I work best in writing: clear contracts, design documents, reviewable changes, and evidence from real machines.

[Fieldmouse Works](https://github.com/FieldmouseWorks) · [Current work](#current-work) · [Other projects](#other-projects) · [Contact](#contact)

## Current work

### [Consolebook](https://github.com/FieldmouseWorks/consolebook)
**Training records for 911 centers · Rust / Axum / SQLite / SvelteKit**

I've been a 911 dispatcher for nearly 20 years, in two states. Every new dispatcher spends months in a training program, and every shift produces a daily observation report that decides whether they're released to work alone and can resurface years later in a grievance or a lawsuit. Consolebook keeps those records the way they need to be kept: versioned training programs, daily reports that trainers draft and review together, weekly summaries, task signoffs, and each trainee's complete file. A finalized record never changes; a correction is an amendment that seals a new version, and every export verifies from the file alone.

One executable, an embedded web interface, and one SQLite data directory per center, installed and upgraded with one command. `npm run demo` serves a throwaway installation full of invented records.

<img src="https://raw.githubusercontent.com/FieldmouseWorks/consolebook/main/docs/screenshots/daily-report.png" alt="A trainer writing a daily observation report in Consolebook" width="720">

**Stage:** pre-alpha, [v0.3.0](https://github.com/FieldmouseWorks/consolebook/releases/latest). Usable for development and evaluation; no production or personnel data. Remaining work is tracked in the [roadmap](https://github.com/FieldmouseWorks/consolebook/blob/main/docs/roadmap.md).

### [wend](https://github.com/FieldmouseWorks/wend)
**Proven upgrade routes for old Linux machines · Python / Rust**

Upgrades an old Linux server to a current release one hop at a time, carrying its services and data along (web server, PHP, database, DNS) and checking they still answer before the next hop. Each route uses small, reviewed fixes for the places where a plain release upgrade breaks, and it counts only after a replay from scratch on test machines keeps every health check green. The native package manager stays in charge. Agents help find the fixes; a static Rust client (in progress) walks a route with no model, snapshotting before each hop and rolling back if a health check fails.

Routes with passing replays: Debian 4.0 etch (2007) to Debian 13, Ubuntu 14.04 to 26.04, and CentOS 5, 7, and 8 to AlmaLinux 10.

**Stage:** early. CI proves each route's userland in a chroot. Kernels, bootloaders, and real reboots are tested separately in maintainer-run VMs, where every route has passed on real installs with a reboot after every hop. See the [README](https://github.com/FieldmouseWorks/wend#readme) and [spec](https://github.com/FieldmouseWorks/wend/blob/main/SPEC.md).

### [burrow](https://github.com/FieldmouseWorks/burrow)
**NixOS modules for a machine run by an AI agent · Nix / Shell / Python**

The server I develop on is run by talking to Claude Code, from a phone as often as a desk. burrow is the generic half of that setup. The agent gets the whole machine with no permission prompts, because nearly everything it can do undoes itself: ZFS snapshots before anything deletes files, a dead man's switch that reverts a system change unless it's confirmed within 10 minutes, and trial boots that fall back from a kernel that hangs. The few one-way doors (wiping disks, flashing firmware, deleting remote data, force-pushing main) still ask.

It also keeps the machine current unattended (flake inputs and Claude Code built, VM-tested, health-checked and reverted on failure; Renovate across every repository; new CVEs turned into agent jobs the same hour), hands project work to per-project agent sessions, and gives a risky task its own microVM with allowlisted egress and no GitHub token.

**Stage:** in daily use on one machine; options may still move. VM tests boot the sandboxes under nested KVM. MIT. See the [README](https://github.com/FieldmouseWorks/burrow#readme).

### [PSIV](https://github.com/TusanHomichi/PSIV)
**Native game reconstruction · Rust / Godot / Python**

A native reimplementation of *Phantasy Star IV*, built to be easy to mod. Python extracts a local data pack from a user-supplied US ROM, Rust reproduces the game rules frame by frame, and Godot handles presentation and input. No emulator runs while you play. Development compares native behavior against the original cartridge.

An automated playthrough now runs from New Game to the ending in 84 chapters, and the native game replays all 84 with every chapter save matching byte for byte. Every player technique and skill, and every enemy ability up to Dark Force 2, is implemented from the cartridge's code. There's a [modding guide](https://github.com/TusanHomichi/PSIV/blob/main/docs/MODDING.md).

**Stage:** active development; presentation fidelity (some animations, scene staging, audio timing) is not finished. Linux and Steam Deck today; Windows and macOS are part of 1.0. Requires a user-supplied ROM; no ROM or extracted game assets are distributed. See [where it stands](https://github.com/TusanHomichi/PSIV#where-we-are).

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

Most of my code is now written by AI agents working under my direction. So most of my engineering goes into what keeps that honest: specs and contracts the agent works against, evidence a change has to produce before it lands (route replays, cartridge comparisons, VM boots), and machines where a mistake is cheap to undo instead of expensive to prevent.

The repositories distinguish implemented behavior from design targets. Their READMEs and linked status documents are the source of truth as the work evolves.

## Contact

For systems/backend roles (remote or based in Europe) or collaboration:

[peter@fieldmouseworks.com](mailto:peter@fieldmouseworks.com) · [fieldmouseworks.com](https://fieldmouseworks.com)
