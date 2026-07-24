class Chapterize < Formula
  desc "Load audio and subtitle files into the Chapterize Mac app"
  homepage "https://github.com/mattbirchler/chapterize"
  url "https://github.com/mattbirchler/chapterize/releases/download/v1.1.1/chapterize-1.1.1.zip"
  sha256 "46f2581dba1a9a739ebf1d02cfa3369c44d9ab199ee24d3a3dfaeaf5a9d5a969"
  version "1.1.1"

  depends_on macos: :tahoe

  def install
    bin.install "chapterize"
  end

  test do
    assert_match "Chapterize", shell_output("#{bin}/chapterize --help")
  end
end
