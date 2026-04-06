class LogKnowledge < Formula
  desc "CLI for logging engineering knowledge to Knowledge Scribe"
  homepage "https://github.com/tanner-doorlist/research"
  url "https://github.com/tanner-doorlist/research/releases/download/v1.0.0/logKnowledge"
  sha256 "3a65b6ca4216149d334b2fa457b720ab6e27b4ec1494702b6f90a55a30c68207"
  version "1.0.0"
  license "MIT"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "logKnowledge"
  end

  def caveats
    <<~EOS
      Run 'logKnowledge --setup' to configure your server URL and team token.

      To let AI models use this tool, point them at:
        #{HOMEBREW_PREFIX}/bin/logKnowledge

      Or add to your Claude Code / Cursor MCP config and tell the model:
        "Use logKnowledge CLI at #{HOMEBREW_PREFIX}/bin/logKnowledge to log insights."
    EOS
  end

  test do
    assert_match "logKnowledge", shell_output("#{bin}/logKnowledge --help")
  end
end
