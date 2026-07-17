class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple's on-device speech engine"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.1.1/quicksubs-1.1.1.zip"
  sha256 "8cb8c4e1339cea7b2166779fa996b09744cbb35c2f6d76da6266edb6310759fc"
  version "1.1.1"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
