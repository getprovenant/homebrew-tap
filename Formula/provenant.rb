class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.9/provenant-macos-aarch64.tar.gz"
      sha256 "10a05966bf3beef3fdd6c83f57f18facd05de8b599c64fea7c629a4501fe871f"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.9/provenant-macos-x86_64.tar.gz"
      sha256 "061ba38c2b769dd80842cd7fad467b55e57e72fb9996ab35ccbd76cba92f17a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.9/provenant-linux-aarch64.tar.gz"
      sha256 "eae5877fdd3047ad583dfbfa7dd9c41970c47477f53a20072e0b572886ab02d8"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.9/provenant-linux-x86_64.tar.gz"
      sha256 "1fb9f51ee17184586de14561758e79069497efb97d4c20376140f9622ac1d863"
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
