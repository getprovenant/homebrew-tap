class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.1/provenant-macos-aarch64.tar.gz"
      sha256 "12a2997ac8e2a547ab94888d6a86b49684b9a4ca84e754b23d2c7c3072734d08"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.1/provenant-macos-x86_64.tar.gz"
      sha256 "19f1ab3a7f56bc14bd56ae22d175729caa1b9d8286dfa83c5b58580176309655"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.1/provenant-linux-aarch64.tar.gz"
      sha256 "98301f062ba476c003cfd43b5059be79d2931d743899101e6bc13aed9e839531"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.1/provenant-linux-x86_64.tar.gz"
      sha256 "a674324b4a2ed587dceef98d1570a30bddc104428832f7c5679e571f00d7e6de"
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
