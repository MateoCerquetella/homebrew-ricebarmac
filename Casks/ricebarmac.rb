cask "ricebarmac" do
  version "1.0.9"
  sha256 "3de4b6a0f57eabb1ed0b797e473d0bf5734eee2b9b82b1b25874b3b27fa68533"
  
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.9/RiceBarMac.zip"
  name "RiceBarMac"
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"

  depends_on macos: ">= :big_sur"

  app "RiceBarMac.app"

  zap trash: [
    "~/.ricebarmac",
    "~/Library/Preferences/com.mateocerquetella.RiceBarMac.plist",
  ]

  caveats <<~EOS
    RiceBarMac is a menu bar application.
    
    The app will appear in your menu bar (top right) with a rice bowl icon 🍚
    
    To start automatically on login:
      - Open the app and go to Settings
      - Enable "Launch at Login"
    
    Note: You may need to grant accessibility permissions when first launched.
  EOS
end
