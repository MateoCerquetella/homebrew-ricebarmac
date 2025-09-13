cask "ricebarmac" do
  version "1.1.0"
  sha256 "c2bbd2bf09ce9b061284344b41ae16d60c5cf7ad69a15b8e595f5001c15561ed"
  
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.1.0/RiceBarMac.zip"
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
