class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.5.0/apple-reminders-mcp"
  sha256 "828c25ee0d80cb26dbf5d48bf3d3936daa41b57865755273df0514fcdf613a09"
  version "1.5.0"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-reminders-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-reminders-mcp --version")
  end
end
