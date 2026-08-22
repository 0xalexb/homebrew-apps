class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.2.0/apple-reminders-mcp"
  sha256 "ba5bef936d17f9aeebfa9476e939114c5e28c963b324f482343b13bbdfd21e39"
  version "1.2.0"
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
