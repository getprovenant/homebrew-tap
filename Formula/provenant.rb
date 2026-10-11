class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.13/provenant-macos-aarch64.tar.gz"
      sha256 "ca64d6b646a68706ff8447decad67b603ccdc763242dd5d818c2e8ba0326a733"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.13/provenant-macos-x86_64.tar.gz"
      sha256 "3d25d79afca823aabe71a95d17b6510e6a2ac76ce1dc309c37aba4b677b1af7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.13/provenant-linux-aarch64.tar.gz"
      sha256 "dc2c487dc427d19891d4f9a53e199caddf16b89a48eea2fbdf679a6f13ba07a4"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.13/provenant-linux-x86_64.tar.gz"
      sha256 "5e569c06c495088d2c911f83440436ad5c8cc4d9b0d8832f6c7dd2b5f5fa8234"
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
