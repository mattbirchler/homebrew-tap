class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple SpeechAnalyzer, OpenAI Whisper, or NVIDIA Parakeet"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.6.1/quicksubs-1.6.1.zip"
  sha256 "744d91a17cfc78a7a9a7ca23782c12a005d5072b0d79d66599e86e06f0bc3237"
  version "1.6.1"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
