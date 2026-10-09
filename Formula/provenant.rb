class Provenant < Formula
  desc "Fast Rust code scanner for licenses, copyrights, and package provenance"
  homepage "https://github.com/getprovenant/provenant"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.12/provenant-macos-aarch64.tar.gz"
      sha256 "0df16085a8670c35ff314b76f258ad2e1c8f701ef3b6f8098c05c7bd04bb1421"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.12/provenant-macos-x86_64.tar.gz"
      sha256 "7716eb5fe1836eddef87f8768462648db0db87aa44e7f906a807d232ec48be9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.12/provenant-linux-aarch64.tar.gz"
      sha256 "2f7afe70e575de276e13fb7f7a9abaca682a4fa71bbb6c730645b565f2919b07"
    end
    on_intel do
      url "https://github.com/getprovenant/provenant/releases/download/v1.0.12/provenant-linux-x86_64.tar.gz"
      sha256 "b4ff29f03a5a19b751cfc6ae194ac9d6ea80f324178964adb68994fe844dca02"
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
