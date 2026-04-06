cask "study-notifier" do
  version "1.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-arm64.dmg"
    sha256 "9138a73b16fdb5a928b9849d7d12b582201fabbdd475b5c0756c747a8ccff5d0"
  else
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-x64.dmg"
    sha256 "e98dd93288f471ab4cb64cd98ca9dae9e21f8bab22c9515462706b1b288a9d54"
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
