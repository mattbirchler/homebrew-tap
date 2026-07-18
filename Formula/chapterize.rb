class Chapterize < Formula
  desc "Load audio and subtitle files into the Chapterize Mac app"
  homepage "https://github.com/mattbirchler/chapterize"
  url "https://github.com/mattbirchler/chapterize/releases/download/v1.1.0/chapterize-1.1.0.zip"
  sha256 "52d913a390bbcad18d2b267c44082250acbde3ff58eaf8ad930f07d1187d586c"
  version "1.1.0"

  depends_on macos: :tahoe

  def install
    bin.install "chapterize"
  end

  test do
    assert_match "Chapterize", shell_output("#{bin}/chapterize --help")
  end
end
