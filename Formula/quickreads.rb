class Quickreads < Formula
  desc "Browse, read, save, search, and highlight your Quick Reads from the terminal"
  homepage "https://github.com/mattbirchler/quickreads-cli"
  url "https://github.com/mattbirchler/quickreads-cli/releases/download/v0.1.0/quickreads-0.1.0.zip"
  sha256 "51da6f7e350b1a41ab6c84e64a5e7a3f94640d454d2cb5ad745a0b93dbbe2faa"
  license "MIT"

  # Runs TypeScript directly via Node's native type stripping, which needs 26.
  # No :macos dependency: the key falls back to a 0600 config file and the
  # clipboard to OSC 52 / wl-copy / xclip, so Linux is fully supported.
  depends_on "node"

  def install
    libexec.install "bin", "src", "package.json", "README.md", "LICENSE"

    # Point at Homebrew's node explicitly rather than relying on the shebang,
    # so an older node earlier in PATH cannot break the install.
    (bin/"quickreads").write <<~SH
      #!/bin/bash
      exec "#{formula_opt_bin("node")}/node" "#{libexec}/bin/quickreads.ts" "$@"
    SH
    chmod 0755, bin/"quickreads"
  end

  test do
    assert_match "quickreads", shell_output("#{bin}/quickreads --help")
    assert_match version.to_s, shell_output("#{bin}/quickreads --version")
  end
end
