class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.0.4/apple-reminders-mcp"
  sha256 "3651d28293088e0bd3ec04396586883ae9482c9dc34bc61530304c6ca5f6a1cb"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-reminders-mcp"
  end

  test do
    assert_match "apple-reminders-mcp", shell_output("#{bin}/apple-reminders-mcp --version")
  end
end
