cask "elyterminal" do
  version "0.2.1"
  sha256 "4abf06232d3a1bcba8deeb4782c0bc5f7ba573d6903ea1b98581f32cce181ab8"

  url "https://github.com/ELY-Open-Source/ELYTerminal/releases/download/v#{version}/ELYTerminal-#{version}.dmg"
  name "ELYTerminal"
  desc "Terminal on GPUI and Ely components"
  homepage "https://terminal.elygpui.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "ELYTerminal.app"

  zap trash: [
    "~/Library/Application Support/ELYTerminal",
    "~/Library/Saved Application State/com.zacharyzhang.elyterminal.savedState",
  ]
end
