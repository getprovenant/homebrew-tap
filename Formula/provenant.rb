class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.15/provenant-macos-aarch64.tar.gz"
      sha256 "63ab38d44928d1180f1e3c667b013a2ae7c6b8290d7d8a91ae3b09924254c2ce"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.15/provenant-macos-x86_64.tar.gz"
      sha256 "55ecf16fa88346456d8db1d14fbc054543572bebb1bce32e7070aea3110abc3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.15/provenant-linux-aarch64.tar.gz"
      sha256 "a6c551ceb1c7e19fb5a1bc3ff3c6f6b19db2f9fb32d8f9418607c3de12418c2a"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.15/provenant-linux-x86_64.tar.gz"
      sha256 "914119da2621cbfbb4debd6c5938f9c966d6fe4a5dc7795e64a3d40007e0565b"
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
