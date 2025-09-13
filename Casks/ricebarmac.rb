cask "ricebarmac" do
  version "1.1.1"
  sha256 "4ed77208b509ca94286022d98123b4ca65bb73df3c28f9e47995efbb9e01ccc0"
  
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.1.1/RiceBarMac.zip"
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
