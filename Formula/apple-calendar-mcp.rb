class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar via EventKit"
  homepage "https://github.com/0xalexb/apple-calendar-mcp"
  url "https://github.com/0xalexb/apple-calendar-mcp/releases/download/v1.1.0/apple-calendar-mcp"
  sha256 "562ca391e02276f2276f57781543cfdcd41bb182cc86417f10005d83c89ede9f"
  version "1.1.0"
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
