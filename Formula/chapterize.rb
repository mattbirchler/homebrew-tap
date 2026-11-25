class Chapterize < Formula
  desc "Load audio and subtitle files into the Chapterize Mac app"
  homepage "https://github.com/mattbirchler/chapterize"
  url "https://github.com/mattbirchler/chapterize/releases/download/v1.2.0/chapterize-1.2.0.zip"
  sha256 "9b4b0e4af3658b0b1d0e0d6f75c6b4552b15c9efa55ee6f0580921a4afc1bddc"
  version "1.2.0"

  depends_on macos: :tahoe

  def install
    bin.install "chapterize"
  end

  test do
    assert_match "Chapterize", shell_output("#{bin}/chapterize --help")
  end
end
