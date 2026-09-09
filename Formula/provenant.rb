class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.10/provenant-macos-aarch64.tar.gz"
      sha256 "8aa1eb7bc7ae97c3e512c76830b97b75ce46627d1ed953cf887dc0203f478931"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.10/provenant-macos-x86_64.tar.gz"
      sha256 "eac98186e755e113b49940e421b3be5e7a41337956d9792d48dca502d642955d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.10/provenant-linux-aarch64.tar.gz"
      sha256 "049578c5d7e5ecbe4af7da23fa3dc20334203626e6cd444f364f65bd9e212961"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.10/provenant-linux-x86_64.tar.gz"
      sha256 "186d6b2e7eaf7e3d8d8d39b4fae8b45f1e1edf5f2dc1f65ea3a2a901dee755ad"
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
