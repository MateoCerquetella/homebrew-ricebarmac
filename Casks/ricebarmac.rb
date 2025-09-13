cask "ricebarmac" do
  version "1.0.8"
  sha256 "1589b3561b5b2cd48d5d2354dc2ffc418c5da593771d6036f5bcbcac333aa88c"
  
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.8/RiceBarMac.zip"
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