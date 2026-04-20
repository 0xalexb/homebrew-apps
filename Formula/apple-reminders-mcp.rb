class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.1.0/apple-reminders-mcp"
  sha256 "c24b13fd5a7a14b9f682ddd3c583a60dcc3c5317869c7ae3e76d83807361579a"
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
