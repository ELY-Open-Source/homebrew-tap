cask "elyterminal" do
  version "0.2.5"
  sha256 "ce559ea9980edcca1cf915de755487385ecff13d549f4c93c2cc1966cefc66fb"

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
