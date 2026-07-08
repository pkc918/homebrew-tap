cask "devpilot" do
  version "0.1.6"
  sha256 "5d153762a7fe56e81046cb82d7f8dfdf487157424aa23d4d15f4ae5d616eb0fe"

  url "https://github.com/pkc918/DevPilot/releases/download/v#{version}/DevPilot-v#{version}.dmg"
  name "DevPilot"
  desc "macOS port monitoring tool"
  homepage "https://github.com/pkc918/DevPilot"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "DevPilot.app"

  zap trash: [
    "~/Library/Application Support/DevPilot",
    "~/Library/Caches/pkc918.DevPilot",
    "~/Library/HTTPStorages/pkc918.DevPilot",
    "~/Library/Preferences/pkc918.DevPilot.plist",
    "~/Library/Saved Application State/pkc918.DevPilot.savedState",
  ]
end
