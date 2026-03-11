class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar via EventKit"
  homepage "https://github.com/0xalexb/apple-calendar-mcp"
  url "https://github.com/0xalexb/apple-calendar-mcp/releases/download/v1.0.4/apple-calendar-mcp"
  sha256 "068edb612ee7c7662941f703ed95ad843fe6a110b8fac0bffc6f197130991b26"
  version "1.0.4"
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
