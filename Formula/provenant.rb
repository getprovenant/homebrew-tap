class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.4/provenant-macos-aarch64.tar.gz"
      sha256 "3ae262936c0b07a559d5507ba820b89f728cce1a40dc2cc4198eaac021c08bdb"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.4/provenant-macos-x86_64.tar.gz"
      sha256 "44cb5b79cc832ea8ad6ea21d45f0764f770b97349e6ad667c5b6336e4a188f64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.4/provenant-linux-aarch64.tar.gz"
      sha256 "84344c44c431964785b3b34dc219a9c36890f5aecffb314ad48466b14b04c4fc"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.4/provenant-linux-x86_64.tar.gz"
      sha256 "91f5a7ec98b6c97af1aff1c6027299f415dd57a499026e309160fb08362d7dff"
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
