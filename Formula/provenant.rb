class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "0.2.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.8/provenant-macos-aarch64.tar.gz"
      sha256 "41d5c707ff3910ab196058b03e72a5cf868282c52ef7ef3fb8909824bd463683"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.8/provenant-macos-x86_64.tar.gz"
      sha256 "1a633330aaad549c7560a44c1e03a08c5da50221c31341cd59d47c8e86e839fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.8/provenant-linux-aarch64.tar.gz"
      sha256 "f167a9be7920261bc1b3a62ae22bfff3eacb5f5f5e279aef152dfd89eab76e91"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.8/provenant-linux-x86_64.tar.gz"
      sha256 "996965e114e0cf87928cd7b4202c5f402a1c6bac3f711a115b9e35bf3143c956"
    end
  end

  def install
    bin.install "provenant"
    prefix.install "LICENSE", "NOTICE", "THIRD-PARTY-NOTICES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/provenant --version")
  end
end
