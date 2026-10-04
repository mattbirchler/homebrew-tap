class Quicksubs < Formula
  desc "Transcribe audio and video files with Apple SpeechAnalyzer, OpenAI Whisper, or NVIDIA Parakeet"
  homepage "https://github.com/mattbirchler/quicksubs"
  url "https://github.com/mattbirchler/quicksubs/releases/download/v1.6.0/quicksubs-1.6.0.zip"
  sha256 "76c82729ad90480ff8ae1ae0deaa5e0958e970a0490a6064a5153370229102fb"
  version "1.6.0"

  depends_on macos: :tahoe

  def install
    bin.install "quicksubs"
  end

  test do
    assert_match "Transcribe audio", shell_output("#{bin}/quicksubs --help")
  end
end
