class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "0.2.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.6/provenant-macos-aarch64.tar.gz"
      sha256 "11f5cd5c7c73a00226128eda5ef5acf4ed99c9d0952e2cf5d9fbb88aaecef19e"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.6/provenant-macos-x86_64.tar.gz"
      sha256 "d37eea26dfd3e17006e497377a2871b865aa869495e5b900ef6c9e77a929cda2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.6/provenant-linux-aarch64.tar.gz"
      sha256 "5521d418517cbed63e898883b1ad24e7e944d3b4b4d0c374196255433db31d1b"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v0.2.6/provenant-linux-x86_64.tar.gz"
      sha256 "52f17ad4e540af05b57bdeb9d2d74e282ca14c9a6bb79f9b98420812f48d2c15"
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
