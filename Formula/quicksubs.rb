class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple's on-device speech engine"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.2.0/quicksubs-1.2.0.zip"
  sha256 "b2b695644f54bdcbb3a96a2b5ca6a7d35af19dfb43a16c18b0e33e53f9d5ad46"
  version "1.2.0"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
