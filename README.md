# Homebrew tap

Source-built command-line tools maintained by [Nikita Makarov](https://github.com/nik-makarov).

## Install cdd

After the first [cdd release](https://github.com/nik-makarov/cdd/releases) has
published its formula:

```sh
brew install nik-makarov/tap/cdd
eval "$("$(brew --prefix)/bin/cdd" --init zsh)"
cdd
```

Add the `eval` line to `~/.zshrc` for future shells. For bash, use `--init bash`
in `~/.bashrc`. After an upgrade, rerun the initialization line in existing shells.

Homebrew builds cdd from a versioned source archive and verifies its SHA-256.
Go is a build dependency; no Apple Developer account or binary notarization is
required. The formula installs the executable and redistribution licenses.

```sh
brew update
brew upgrade cdd
```

## Maintenance

The [cdd repository](https://github.com/nik-makarov/cdd) owns the formula generator
and release automation. Each successful push to its `main` branch publishes a
version, then commits `Formula/cdd.rb` directly to this tap. Do not edit generated
formula fields here: change the generator in cdd instead. Unrelated formulae
and documentation in this tap are preserved.

This initial tap intentionally contains no formula. Push its `main` branch before
pushing cdd's release automation. The first successful cdd release creates the
formula after publishing its source archive. See cdd's
[release setup](https://github.com/nik-makarov/cdd/blob/main/docs/releases.md#initial-setup)
for the required token and push order.

GitHub Actions refreshes Homebrew and formula metadata before checking style,
building from source, and running formula tests on macOS. This avoids using an
outdated Go package from the runner image. Automatic refreshes remain disabled
for subsequent commands so the explicit update runs once per job.
An empty bootstrap tap only checks its directory structure. Hosted
checks and publication must be verified after pushing; local preparation does
not establish that they have run.

## License

MIT. See [LICENSE](LICENSE). Packaged software retains its upstream licenses.
