class Cdd < Formula
  desc "Interactive directory picker with shell integration"
  homepage "https://github.com/nik-makarov/cdd"
  url "https://github.com/nik-makarov/cdd/releases/download/v0.1.10/cdd_v0.1.10_source.tar.gz"
  sha256 "7936c1cfba97afcf27a1aae7026a0359bf4b88054cc8dfcfa206051d9e4d00fd"
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
