class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.2/provenant-macos-aarch64.tar.gz"
      sha256 "493750cb6300062201276dce58ddc9deed821f8a283d5f81c12ce577481d983d"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.2/provenant-macos-x86_64.tar.gz"
      sha256 "e70919dfb9e433157ae600d1eb60e07925a2aead90ca521e4f2c1a43d911a420"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.2/provenant-linux-aarch64.tar.gz"
      sha256 "98506d5d7dd6272ecc67930ea0b477d15d837790f120b85101a672ecd1166954"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.2/provenant-linux-x86_64.tar.gz"
      sha256 "072fb6b57035a906b8d8c6a3eea3f3fc7eba39ac20338ddc23ae5ae614d3a2d6"
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
