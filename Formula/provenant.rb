class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  version "1.0.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.6/provenant-macos-aarch64.tar.gz"
      sha256 "47ca215cbb0e5bcf21cd889319298a42a9b690e7a6c0269884b4a34185bb6d51"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.6/provenant-macos-x86_64.tar.gz"
      sha256 "60772ce6ce93076024de4396880e861ec295b4fcb4e13382819817c0f975fe85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.6/provenant-linux-aarch64.tar.gz"
      sha256 "c49042e3800db6a418afaca2011cca775ea39fddd4818435cc73a658db563657"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.6/provenant-linux-x86_64.tar.gz"
      sha256 "3ab8aa1994cfaa1e6f67dfd84247c10ab83035a9b75b08468f9d7ea3fbf50cd6"
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
