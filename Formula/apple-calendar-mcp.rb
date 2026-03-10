class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar via EventKit"
  homepage "https://github.com/0xalexb/apple-calendar-mcp"
  url "https://github.com/0xalexb/apple-calendar-mcp/releases/download/v1.0.0/apple-calendar-mcp"
  sha256 "cb204d81f4f07bafd3d508a9c1ff218abe68a90ea7d6d1a7c63e1d68163ae562"
  version "1.0.0"
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
