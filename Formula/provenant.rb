class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.18/provenant-macos-aarch64.tar.gz"
      sha256 "46478667af9ed8c51e6ea4dd15ff1eb9256360fd94cd2af902eb20575696bd67"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.18/provenant-macos-x86_64.tar.gz"
      sha256 "40cae99efd52aa6f12acdfc4dc26ac043823876f3c715a02959ccd29af353c1b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.18/provenant-linux-aarch64.tar.gz"
      sha256 "bee9ebf47a77638e87e54ab4a60a4c4455b3573d7c8d6e1da2d1cb17fddc8066"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.18/provenant-linux-x86_64.tar.gz"
      sha256 "c89e47d1cd069721b298de1fee3c83f8d5d78d0041d48666339f6482d9b42cc4"
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
