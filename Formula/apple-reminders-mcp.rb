class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.0.2/apple-reminders-mcp"
  sha256 "2824de59a47c8dbb4576f65603bdb1ad79ea8a47b83cc9eb111916c86fb90dab"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-reminders-mcp"
  end

  test do
    assert_match "apple-reminders-mcp", shell_output("#{bin}/apple-reminders-mcp --version 2>&1")
  end
end
