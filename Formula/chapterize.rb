class Chapterize < Formula
  desc "Load audio and subtitle files into the Chapterize Mac app"
  homepage "https://github.com/mattbirchler/chapterize"
  url "https://github.com/mattbirchler/chapterize/releases/download/v1.2.0/chapterize-1.2.0.zip"
  sha256 "9ab8d8e6d40b536eff875216c76e584ae3db9e1ddcdab09b3808c5cf1b884900"
  version "1.2.0"

  depends_on macos: :tahoe

  def install
    bin.install "chapterize"
  end

  test do
    assert_match "Chapterize", shell_output("#{bin}/chapterize --help")
  end
end
