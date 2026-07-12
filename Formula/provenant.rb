class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.5/provenant-macos-aarch64.tar.gz"
      sha256 "8f6c8981dca55dd04e5a26b7b269752535cb506311e703848348b3d8db5da57d"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.5/provenant-macos-x86_64.tar.gz"
      sha256 "923fa53c5bcb9700d09f316926cadebb2d00d358cc66082f07c5143ab35f74f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.5/provenant-linux-aarch64.tar.gz"
      sha256 "cc15731e875492fa5fc8205808961aba8643f825ef3c43a9b4f1e482524f2f13"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.5/provenant-linux-x86_64.tar.gz"
      sha256 "05f8a27c6cea0ef01197c4a2f5e3a6fdee1aada8d1a99ca0db092dc46cca5e1e"
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
