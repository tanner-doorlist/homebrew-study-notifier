cask "study-notifier" do
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-arm64.dmg"
    sha256 "72c11af2203dfe775b90741c1b07da4a46a3fa1d4e8cc5f0593f5a41ee05e5ae"
  else
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-x64.dmg"
    sha256 "9fa2925a27f4f603814d0182a5eb45eb274ecbe959c4a11b3dec38fe9721db9a"
  end

  name "Study Notifier"
  desc "Spaced repetition study notifier for development teams"
  homepage "https://github.com/tanner-doorlist/research"

  app "Study Notifier.app"

  zap trash: [
    "~/Library/Application Support/study-notifier",
    "~/Library/Preferences/app.doorlist.study-notifier.plist",
    "~/Library/Caches/app.doorlist.study-notifier",
  ]
end
