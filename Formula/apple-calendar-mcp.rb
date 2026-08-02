class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar via EventKit"
  homepage "https://github.com/0xalexb/apple-calendar-mcp"
  url "https://github.com/0xalexb/apple-calendar-mcp/releases/download/v1.0.6/apple-calendar-mcp"
  sha256 "681aa73eb21bdface36d5772d87236afa1eac8ce91cda7d11cee255ae3c532e4"
  version "1.0.6"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-calendar-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-calendar-mcp --version")
  end
end
