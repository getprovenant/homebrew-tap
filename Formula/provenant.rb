class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.7/provenant-macos-aarch64.tar.gz"
      sha256 "63e283a98b8447fbe8eb9e0703dc6407fa8a4fe86ddb33bcc47b3dfe97e92d77"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.7/provenant-macos-x86_64.tar.gz"
      sha256 "01673a7fe56fd03a5a93719b8780bf65096879ac0c0eb71bb13807f04ec4ca07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.7/provenant-linux-aarch64.tar.gz"
      sha256 "8c3a9594377b76df70fa7eeca802d0ad2856caa303fe167173ad89c611c4fccc"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.7/provenant-linux-x86_64.tar.gz"
      sha256 "16f2c6de7e75d570fc171766fba3e60763d0ec3be717028ea3e834b36271c7db"
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
