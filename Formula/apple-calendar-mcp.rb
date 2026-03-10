class AppleCalendarMcp < Formula
  desc "MCP server for Apple Calendar via EventKit"
  homepage "https://github.com/0xalexb/apple-calendar-mcp"
  url "https://github.com/0xalexb/apple-calendar-mcp/releases/download/v1.0.2/apple-calendar-mcp"
  sha256 "f0b96743435d5fe6bb86092bdc3dbfa8d4e72e099ebcf112056c054292323e21"
  version "1.0.2"
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
