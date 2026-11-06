cask "elyterminal" do
  version "0.2.3"
  sha256 "5c2448fd963ff37ed329c8672748409a3e0921bd4b37fe2397addea91f102246"

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
