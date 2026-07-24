class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple SpeechAnalyzer, OpenAI Whisper, or NVIDIA Parakeet"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.5.1/quicksubs-1.5.1.zip"
  sha256 "75564abf72cc04396d790bf1c6213a62894e262408a2d90a57c4d8b39a9b7dd4"
  version "1.5.1"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
