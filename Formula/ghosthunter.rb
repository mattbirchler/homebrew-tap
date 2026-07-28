class Ghosthunter < Formula
  desc "Search your own Ghost blog from the terminal and get the link"
  homepage "https://github.com/mattbirchler/ghosthunter"
  url "https://github.com/mattbirchler/ghosthunter/releases/download/v1.0.0/ghosthunter-1.0.0.zip"
  sha256 "e3389666a4178f2009da22f45cd7312c3aab0286bfc9b08b60aa4772ebf17cbc"
  version "1.0.0"
  license "MIT"

  # Needs the Keychain and pbcopy, so macOS only.
  depends_on :macos
  # Runs TypeScript directly via Node's native type stripping, which needs 26.
  depends_on "node"

  def install
    libexec.install "bin", "src", "package.json", "README.md", "LICENSE"

    # Point at Homebrew's node explicitly rather than relying on the shebang,
    # so an older node earlier in PATH cannot break the install.
    %w[ghosthunter ght].each do |name|
      (bin/name).write <<~SH
        #!/bin/bash
        exec "#{Formula["node"].opt_bin}/node" "#{libexec}/bin/ghosthunter.ts" "$@"
      SH
      chmod 0755, bin/name
    end
  end

  test do
    assert_match "GhostHunter", shell_output("#{bin}/ghosthunter --help")
    assert_match version.to_s, shell_output("#{bin}/ght --version")
  end
end
