cask "study-notifier" do
  version "1.0.3"

  if Hardware::CPU.arm?
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-arm64.dmg"
    sha256 "629e014ebbdeccac3826004d57ba6893faee5a776f269227399d5d0fa85787b4"
  else
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-x64.dmg"
    sha256 "a337e2d5b735978e2e6a4d821668f0a116d831d100109137dfcfff0f9967f159"
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
