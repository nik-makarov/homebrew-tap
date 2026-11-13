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
