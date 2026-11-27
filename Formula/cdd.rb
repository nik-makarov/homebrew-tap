class Cdd < Formula
  desc "Interactive directory picker with shell integration"
  homepage "https://github.com/nik-makarov/cdd"
  url "https://github.com/nik-makarov/cdd/releases/download/v0.1.17/cdd_v0.1.17_source.tar.gz"
  sha256 "2cb3d5d41b7a31d1a0c96c48dc1870b8366359aaf1e09946b299899a99c59882"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build", "VERSION=v#{version}"
    bin.install "bin/cdd"
    (pkgshare/"licenses").install "bin/LICENSE", "bin/THIRD_PARTY_LICENSES.txt"
  end

  def caveats
    <<~EOS
      Add to ~/.zshrc:
        eval "$(#{HOMEBREW_PREFIX}/bin/cdd --init zsh)"
      For bash, use --init bash in ~/.bashrc.
      After brew upgrade, rerun the init line in existing shells.
    EOS
  end

  test do
    assert_equal "cdd v#{version}\n", shell_output("#{bin}/cdd --version")
    assert_match "cdd() {", shell_output("#{bin}/cdd --init zsh")
    assert_match "cdd() {", shell_output("#{bin}/cdd --init bash")
    assert_match "Usage:", shell_output("#{bin}/cdd --help 2>&1")
  end
end
