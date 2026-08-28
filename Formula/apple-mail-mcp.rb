class AppleMailMcp < Formula
  desc "MCP server for Apple Mail via AppleScript"
  homepage "https://github.com/0xalexb/apple-mail-mcp"
  url "https://github.com/0xalexb/apple-mail-mcp/releases/download/v1.0.0/apple-mail-mcp"
  sha256 "0d9bf8489795bbfd81d6b9f3c33b6ee5696fe60dddda83f4505b15fb95f51fcf"
  version "1.0.0"
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
