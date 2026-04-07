cask "study-notifier" do
  version "1.0.4"

  if Hardware::CPU.arm?
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-arm64.dmg"
    sha256 "a639034bfdcf8347516d3d4d27a9563b25de6f98856de012524bd96e3376f8f5"
  else
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-x64.dmg"
    sha256 "b64bc839265c0ce9fe55a99c2aa73e036e267590d7abf609bee1ed0ff5d50656"
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
