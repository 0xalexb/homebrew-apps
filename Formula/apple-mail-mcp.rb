class AppleMailMcp < Formula
  desc "MCP server for Apple Mail via AppleScript"
  homepage "https://github.com/0xalexb/apple-mail-mcp"
  url "https://github.com/0xalexb/apple-mail-mcp/releases/download/v1.0.3/apple-mail-mcp"
  sha256 "793b5f7bfc819d05256055c3ffdbae28dfc7039192fade4af5d195336fe53bf7"
  version "1.0.3"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-mail-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-mail-mcp --version")
  end
end
