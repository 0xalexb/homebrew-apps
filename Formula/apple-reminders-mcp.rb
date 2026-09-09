class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.3.0/apple-reminders-mcp"
  sha256 "0176f96d855940d66aceb5b07b70dea909fef5f8a9bccb82ca329005970d99cc"
  version "1.3.0"
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
