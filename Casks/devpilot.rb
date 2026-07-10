cask "devpilot" do
  version "0.1.9"
  sha256 "d0d580c338b5016af5389aea3e3c5cabf6f6a89d042991dee3d5c41698489c7a"

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
