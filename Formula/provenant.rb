class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.3/provenant-macos-aarch64.tar.gz"
      sha256 "2b13208af09cca2ea82842681897583c768f8825cd702be39c8b2a6c0434deb2"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.3/provenant-macos-x86_64.tar.gz"
      sha256 "59c8b211b94494496ec39cad87d892f18355b7599796b517e457a3b61b5c69ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.3/provenant-linux-aarch64.tar.gz"
      sha256 "c615cb31350e2aed61f61576348fe54c37570fbbb4f91e195f6384bbfb084772"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.3/provenant-linux-x86_64.tar.gz"
      sha256 "081c016708ea0a661df24921bb9ae62316f2d9bfbc5146eb81e66d7660ac4362"
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
