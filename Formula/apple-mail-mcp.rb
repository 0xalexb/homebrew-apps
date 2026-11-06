class AppleMailMcp < Formula
  desc "MCP server for Apple Mail via AppleScript"
  homepage "https://github.com/0xalexb/apple-mail-mcp"
  url "https://github.com/0xalexb/apple-mail-mcp/releases/download/v1.1.0/apple-mail-mcp"
  sha256 "17d7ba1a2516468c5990761b9663312254491b61db87c50a6615e3923b8db8f2"
  version "1.1.0"
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
