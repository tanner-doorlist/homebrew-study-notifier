class LogKnowledge < Formula
  desc "CLI for logging engineering knowledge to Knowledge Scribe"
  homepage "https://github.com/tanner-doorlist/research"
  url "https://github.com/tanner-doorlist/research/releases/download/v1.0.4/logKnowledge"
  sha256 "9cb154d0bb7f9b730c2fc32dfb7dddb720c776138e4e80e360fe7c95f5a251ac"
  version "1.0.4"
  license "MIT"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "logKnowledge"
  end

  def caveats
    <<~EOS
      Run 'logKnowledge --setup' to configure your team token.

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
