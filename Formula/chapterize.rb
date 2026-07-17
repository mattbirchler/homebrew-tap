class Chapterize < Formula
  desc "Load audio and subtitle files into the Chapterize Mac app"
  homepage "https://github.com/mattbirchler/chapterize"
  url "https://github.com/mattbirchler/chapterize/releases/download/v1.0.0/chapterize-1.0.0.zip"
  sha256 "a7b4b3e283bf63ee930988e9d942589ae1f321b0956b2ce1f75a51ee40e9733c"
  version "1.0.0"

  depends_on macos: :tahoe

  def install
    bin.install "chapterize"
  end

  test do
    assert_match "Chapterize", shell_output("#{bin}/chapterize --help")
  end
end
