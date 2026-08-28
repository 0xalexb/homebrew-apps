class AppleMailMcp < Formula
  desc "MCP server for Apple Mail via AppleScript"
  homepage "https://github.com/0xalexb/apple-mail-mcp"
  url "https://github.com/0xalexb/apple-mail-mcp/releases/download/v1.0.1/apple-mail-mcp"
  sha256 "2772d9f3f6b4b8eaba7f4bc70dbbea6c460b83fcfb9c16ae5b2dc0a792f838b1"
  version "1.0.1"
  license "MIT"

  depends_on :macos
  depends_on "uv"

  def install
    bin.install "apple-mail-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple-mail-mcp --version")
  end
end
