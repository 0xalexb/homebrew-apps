class AppleMailMcp < Formula
  desc "MCP server for Apple Mail via AppleScript"
  homepage "https://github.com/0xalexb/apple-mail-mcp"
  url "https://github.com/0xalexb/apple-mail-mcp/releases/download/v1.0.2/apple-mail-mcp"
  sha256 "2482741644d5eff8f4def757284f1939ee0bea7e3c504a6f1757b9ab6dadf7c7"
  version "1.0.2"
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
