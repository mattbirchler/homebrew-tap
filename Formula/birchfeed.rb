class Birchfeed < Formula
  desc "The Birchfeed News Stream in your terminal"
  homepage "https://github.com/mattbirchler/birchfeed-cli"
  url "https://github.com/mattbirchler/birchfeed-cli/releases/download/v0.1.0/birchfeed-0.1.0.zip"
  sha256 "70512f35aa550c4f277ce1f515be81f21f176f1a0e0d9f399bad16bbeff7a3c4"
  license "MIT"

  # Runs TypeScript directly via Node's native type stripping, which needs 26.
  # No :macos dependency: the token falls back to a 0600 config file and the
  # clipboard to OSC 52 / wl-copy / xclip, so Linux is fully supported.
  depends_on "node"

  def install
    libexec.install "bin", "src", "package.json", "README.md", "LICENSE"

    # Point at Homebrew's node explicitly rather than relying on the shebang,
    # so an older node earlier in PATH cannot break the install.
    %w[birchfeed bf].each do |name|
      (bin/name).write <<~SH
        #!/bin/bash
        exec "#{formula_opt_bin("node")}/node" "#{libexec}/bin/birchfeed.ts" "$@"
      SH
      chmod 0755, bin/name
    end
  end

  test do
    assert_match "birchfeed", shell_output("#{bin}/birchfeed --help")
    assert_match version.to_s, shell_output("#{bin}/bf --version")
  end
end