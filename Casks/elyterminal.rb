cask "elyterminal" do
  version "0.2.6"
  sha256 "80195e8e68852af79753c5c4c9eb2a2e18213c256db5892aec5d5cf8243f1cdc"

  url "https://github.com/ELY-Open-Source/ELYTerminal/releases/download/v#{version}/ELYTerminal-#{version}.dmg"
  name "ELYTerminal"
  desc "Terminal on GPUI and Ely components"
  homepage "https://terminal.elygpui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "ELYTerminal.app"

  zap trash: [
    "~/Library/Application Support/ELYTerminal",
    "~/Library/Saved Application State/com.zacharyzhang.elyterminal.savedState",
  ]
end
