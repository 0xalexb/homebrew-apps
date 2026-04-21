class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.1.2/apple-reminders-mcp"
  sha256 "7930b41ca54a8a482cc87f2c3baebb1a514f6a6877b841dbcfa8b023ed1a058a"
  version "1.1.2"
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
