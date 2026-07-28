## Peter Permenter

Systems and backend engineer working in Rust. Linux package management,
content-addressed storage, atomic transaction models, and multi-tenant services.

**Available for remote work — contract (1099) or employed.** Gig Harbor, WA,
Pacific time, with hours that overlap European mornings. **Open to relocating to
Europe.** I work async and in writing: specs, design docs, and reviewed pull
requests rather than standups.

---

### Conary — cross-distro Linux package manager

[ConaryLabs/Conary](https://github.com/ConaryLabs/Conary) · Rust · MIT

Installs RPM, DEB, and Arch packages on Fedora, Ubuntu, or Arch while preserving
each format's exact lifecycle ABI, without invoking dnf, apt, or pacman. A `.deb`
keeps Debian dependency and scriptlet semantics on Fedora; an `.rpm` keeps RPM
semantics on Ubuntu.

Where the engineering actually went:

- Typed grammars and state machines for the RPM, Debian, and ALPM lifecycle
  contracts, derived from pinned upstream sources rather than inferred from
  command text
- One atomic transaction model over content-addressed storage, with changesets,
  history, and rollback
- SAT-based dependency resolution across conflicts, virtual provides, and typed
  dependencies
- Immutable EROFS system generations with composefs and fs-verity integration;
  Ed25519-signed packages with Merkle-verified payloads

Scale and proof: 447k lines of first-party Rust across 1,225 files in an 8-crate
workspace; 5,499 unit tests plus 324 integration tests in 29 suites that run
against real Fedora 44, Ubuntu 26.04, and Arch VMs; seven CI workflows including
release-artifact proof and an automated check that fails the build when
documentation claims drift from what the code does.

### Timeshift — shift scheduling for 911 dispatch centers

[ConaryLabs/Timeshift](https://github.com/ConaryLabs/Timeshift) · Rust/Axum +
React/TypeScript + PostgreSQL · AGPL-3.0

I have worked 911 dispatch for more than twenty years. Timeshift started from the
real union contracts I schedule under, then got generalized so any center can
self-host it free instead of paying for a tool that does not understand the
rules.

Scheduling looks simple until the contract says overtime is offered by seniority
within classification, skipping anyone already past their weekly cap, with
refusals tracked on a rolling window that resets differently around holidays.
Generic tools do not model that. Knowing which rules actually matter is the part
that is hard to buy.

Covers scheduling, seniority shift bidding, multi-round vacation bidding, 26
leave codes, overtime callout queues, and CSV reporting on multi-tenant
PostgreSQL. Not currently under active development.

### Remi — package conversion and metadata service

[remi.conary.io](https://remi.conary.io) · Rust/Axum · Tantivy · SQLite

The production service behind Conary. Converts upstream Fedora, Ubuntu, and Arch
packages on demand, serves package search and sparse metadata, and validates the
source-format lifecycle contract each converted artifact carries. Deployed and
running, not a demo.

### Mira — code intelligence for AI agents

[ConaryLabs/Mira](https://github.com/ConaryLabs/Mira) · Rust · archived

An MCP server giving coding agents persistent memory and semantic code search
over Tree-sitter and SQLite. Archived once upstream platforms shipped the same
capabilities natively — the problem got solved, so the project stopped.

---

### Stack

Rust · Axum · Tokio · SQLite · PostgreSQL · React · TypeScript · SvelteKit ·
Linux internals · EROFS · composefs · Ed25519 · Tree-sitter · systemd · nginx

### Contact

Open to remote contract engagements, ideally ongoing rather than one-off, and to
direct employment with a European company. Reach me at
[peter@conary.io](mailto:peter@conary.io) or via
[conary.io/contact](https://conary.io/contact/).
