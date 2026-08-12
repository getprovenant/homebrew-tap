class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.5/provenant-macos-aarch64.tar.gz"
      sha256 "5222c97696c72742d40f6c2043f86865c09d5cd54829d94cfe1c712b1501afe1"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.5/provenant-macos-x86_64.tar.gz"
      sha256 "271ae79a4716498c5f709518ceb0478c90801014fda331253ddf1d4ec77a05ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.5/provenant-linux-aarch64.tar.gz"
      sha256 "e1aa5681ea7347e6dfdc4da290fac553c72e623fbed41733b32682f8a73e02a6"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.5/provenant-linux-x86_64.tar.gz"
      sha256 "abe4f82d9144c11709a8de250507a4682a8831cc83e386a2b9bbfd31851b0e58"
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
