class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "0.2.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.7/provenant-macos-aarch64.tar.gz"
      sha256 "a6f2d80f38d3849caafc5f593766b8d6174d990c1c9fb11d4c8c00030884eedb"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.7/provenant-macos-x86_64.tar.gz"
      sha256 "47aab761a910c0e03e67c4816daa8c96568e3720a80c29a1339568b1da9def0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.7/provenant-linux-aarch64.tar.gz"
      sha256 "dc625800159d88ad91ca0a712ce4012f395d3031aaaa37ac5eb2b349b2a0e8ff"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.7/provenant-linux-x86_64.tar.gz"
      sha256 "1dc920abbe6ec7138ca3fea18876cb33393452894fc1e030f5603399d06a0c38"
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
