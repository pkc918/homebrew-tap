cask "devpilot" do
  version "0.1.10"
  sha256 "bedcf43c29d945670f047da6ad694ece7108997076509d17d8cc5326deee1292"

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
