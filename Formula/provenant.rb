class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.16/provenant-macos-aarch64.tar.gz"
      sha256 "8ecd9783e69f8cb5c688bedaed99bb47e16d9286a79491360ff0197020f58d7e"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.16/provenant-macos-x86_64.tar.gz"
      sha256 "c3bc25fa6b801bb1d1ce14d7fd054b2590212679c8e6859b65562750ba7b55a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.16/provenant-linux-aarch64.tar.gz"
      sha256 "c419ef1ca38b00d3982274764b9df2864cb8d8aac103d42d56b3310fb5fe9fd7"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.16/provenant-linux-x86_64.tar.gz"
      sha256 "72a07da7d557c65b0e1a428d9fdac46def2cf5e1516837a6b05d31ee63169512"
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
