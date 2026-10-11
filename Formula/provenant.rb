class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.14/provenant-macos-aarch64.tar.gz"
      sha256 "7a8c7b1e7e0284485eedfe83da27494bf9afb5d42637c1d0f0e63b11b213912b"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.14/provenant-macos-x86_64.tar.gz"
      sha256 "637cf800a046a1d67890ad1c5b8e6fa32cae4afaac7fe0eb4ead3642ee5ef61d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.14/provenant-linux-aarch64.tar.gz"
      sha256 "49eace8183dbfdd9c115ecc1c4fb4ad149e2e4776ac4befdb6c36ef61ec1719b"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.14/provenant-linux-x86_64.tar.gz"
      sha256 "2cae3ed1f867f65eff60df802f4bfd2557fdc4841d6416abd9dd904d38ddecc0"
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
