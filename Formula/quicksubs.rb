class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple's on-device speech engine"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.1.0/quicksubs-1.1.0.zip"
  sha256 "76375e2d99d4ea0fc82663a01bac46579514dbefc687e5b5c5a0c19da6de6fc9"
  version "1.1.0"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
