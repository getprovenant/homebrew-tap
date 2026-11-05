class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.17/provenant-macos-aarch64.tar.gz"
      sha256 "d16047951f8ed5e5c0d535581db202f419274fdc1e6d2567a0c99686a990eed7"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.17/provenant-macos-x86_64.tar.gz"
      sha256 "c9d51191124b16120f96309cd7b027dc25e415fce9f5cde54f3e698f3c21b043"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.17/provenant-linux-aarch64.tar.gz"
      sha256 "3044f6880f3c985db4306a2946fd4fe07875eb9a28810989664da7ccc2c2049b"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.17/provenant-linux-x86_64.tar.gz"
      sha256 "6e03735b3fc206aeaa1cb8d29602491d1d9b46a75ee000af7dd40fd8f5faf114"
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
