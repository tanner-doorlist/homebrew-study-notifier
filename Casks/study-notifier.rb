cask "study-notifier" do
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-arm64.dmg"
    sha256 "5ac68586c634f1410edec3ab51d21db601678ef2836c10f7e8310bc56e3516cf"
  else
    url "https://github.com/tanner-doorlist/research/releases/download/v#{version}/Study-Notifier-#{version}-x64.dmg"
    sha256 "d6b4549b550a9cd91353ca57372714125a1d598f9599ceb67379574e85a250e0"
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
