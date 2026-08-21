class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.8/provenant-macos-aarch64.tar.gz"
      sha256 "d0fd556e459c42702110586595aff35f640714731d52e5a5764f1763c553df3a"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.8/provenant-macos-x86_64.tar.gz"
      sha256 "b64981b21986865f57011fb685e12bfdb132ecfa4561a81bf643663822259823"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.8/provenant-linux-aarch64.tar.gz"
      sha256 "52867e68f1572e5e75bc2e5111fead18768f620f96a92920626e26977ff0afde"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.8/provenant-linux-x86_64.tar.gz"
      sha256 "afb248a2320cf9a29b74735208ae73ab2ddda3b44f001f4f5b3cb5d7a391a0ee"
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
