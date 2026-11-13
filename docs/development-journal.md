# Development journal

- `2026-11-13T19:35:01Z` — Initialize the English-language MIT tap and its local
  main branch with the nik-makarov/homebrew-tap SSH origin. Document source-built
  cdd installation, shell initialization, upgrades, scoped credentials, and
  bootstrap push order. Keep Formula empty until cdd publishes its first source
  archive; the release workflow owns formula generation and delivery. Add macOS
  CI for per-formula trust, style, source builds, tests, and strict online audit,
  with a successful structure-only bootstrap when no formula exists. Workflow
  YAML parsing and shell syntax checks passed locally. No formula was installed,
  remote setting changed, branch pushed, or hosted workflow run. Paths:
  `README.md`, `LICENSE`, `.gitignore`, `Formula/.gitkeep`,
  `.github/workflows/ci.yml`, `docs/development-journal.md`.
- `2026-11-13T19:56:49Z` — Refresh Homebrew and formula metadata explicitly
  before tapping or checking packages. Keep automatic updates disabled for the
  remaining commands so the job refreshes once instead of relying on the
  runner image's stale Go definition. The reported hosted failure used Go
  1.27.3 for cdd sources requiring 1.27.4; the official Homebrew Go formula
  already provides 1.27.4. Workflow YAML parsing, bash syntax, and diff checks
  passed locally. GitHub DNS prevented pulling the bot's formula commit or
  inspecting/rerunning hosted checks. No release assets, formula checksums,
  source requirements, remote branches, or repository settings were changed.
  Paths: `.github/workflows/ci.yml`, `README.md`,
  `docs/development-journal.md`.
- `2026-11-13T20:04:58Z` — Remove the redundant explicit cdd version so
  Homebrew infers 0.1.0 from the immutable source URL. Keep the source checksum,
  build command, and formula tests unchanged. The owner-provided hosted log
  confirmed successful source installation and formula tests before strict
  audit reported this one remaining issue. Ruby syntax and diff checks passed
  locally; the hosted audit was not rerun during local verification. The cdd
  formula generator was corrected separately for future releases. Paths:
  `Formula/cdd.rb`, `docs/development-journal.md`.
