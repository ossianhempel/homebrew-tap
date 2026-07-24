class Toc < Formula
  desc "Agent-native CLI and MCP server for Top of Class"
  homepage "https://github.com/ossianhempel/top-of-class"
  url "https://github.com/ossianhempel/homebrew-tap/releases/download/toc-v0.1.0/toc-0.1.0-macos-universal.zip"
  sha256 "5c55173fd42b3d403d46efe65e3c782b88ee89b8cd3656e2f3ed958c448e707d"
  version "0.1.0"

  def install
    bin.install "toc-0.1.0/bin/toc"
  end

  test do
    assert_match "toc 0.1.0", shell_output("#{bin}/toc --version")
    system bin/"toc", "mcp", "--help"
  end
end
