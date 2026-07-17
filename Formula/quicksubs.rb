class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple's on-device speech engine"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.0.0/quicksubs-1.0.0.zip"
  sha256 "bc2042c49a25afe17877d3c33d6afffe43b760d6560e769aa11356254b159905"
  version "1.0.0"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
