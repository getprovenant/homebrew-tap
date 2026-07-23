class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.0/provenant-macos-aarch64.tar.gz"
      sha256 "2a5cf95c482b205bad62e4c834a907d30782d5c32057b2eb6745c7c7017e3db9"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.0/provenant-macos-x86_64.tar.gz"
      sha256 "13cee56cfd05e4219a7fe0d9ddfef6518f23e107ea1f8937bf486e1959cbf215"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.0/provenant-linux-aarch64.tar.gz"
      sha256 "73c1c4e547f7745e10947be85ba75ba3e802d01e98159ad61db9a8d5a623f5f7"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.0/provenant-linux-x86_64.tar.gz"
      sha256 "7a321193e4ec2bb584151ebdfe905f24be81b725d6a956e382fde660d72d52db"
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
