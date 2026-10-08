class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.11/provenant-macos-aarch64.tar.gz"
      sha256 "c092a5e15057282152c028d2b8132b9a5b075da1d673d18f2d87e5c274334bd0"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.11/provenant-macos-x86_64.tar.gz"
      sha256 "db92835cdbcaf99b896f2cbc2b90d5d75787a8cd430e451bfc9c73ec9a91411d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.11/provenant-linux-aarch64.tar.gz"
      sha256 "75f8eb90789e2c23fe25fbf1a67d92c7a31f381fb0ca9f8cc6d4e43655f9a4f9"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.11/provenant-linux-x86_64.tar.gz"
      sha256 "0001d43690868a534dd659b17b5e214753784d991a3f93f262d7167027dc6bfc"
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
