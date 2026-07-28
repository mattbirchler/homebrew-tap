class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple SpeechAnalyzer, OpenAI Whisper, or NVIDIA Parakeet"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.5.2/quicksubs-1.5.2.zip"
  sha256 "221622fc265055008b3c8753f966c31f54b9609eca06164f8c6ce76705618425"
  version "1.5.2"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
