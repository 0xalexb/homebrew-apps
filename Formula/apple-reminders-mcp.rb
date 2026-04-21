class AppleRemindersMcp < Formula
  desc "MCP server for Apple Reminders via EventKit"
  homepage "https://github.com/0xalexb/apple-reminders-mcp"
  url "https://github.com/0xalexb/apple-reminders-mcp/releases/download/v1.1.1/apple-reminders-mcp"
  sha256 "1b5d9197633e2da585b163acc3816e4dd7a2ff0152a01d839b924d617e9a7389"
  version "1.1.1"
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
