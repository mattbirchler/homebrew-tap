class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple SpeechAnalyzer, OpenAI Whisper, or NVIDIA Parakeet"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.5.3/quicksubs-1.5.3.zip"
  sha256 "a80794dd3c9d45ea57b6c21128c08ed1f17acc4fda14359af9d9dd3df80bc6ce"
  version "1.5.3"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
