class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.5/RiceBarMac.zip"
  sha256 "7ed5b1ae71b119d5efe98a6dbcd027787d5d1f8f03707d86107315e488822e40"
  version "1.0.5"
  
  
  def install
    # Install the menu bar app to Applications folder
    system "cp", "-R", "RiceBarMac.app", "/Applications/"
  end
  
  def caveats
    <<~EOS
      RiceBarMac is a menu bar application.
      
      To start RiceBarMac:
        open /Applications/RiceBarMac.app
      
      The app will appear in your menu bar (top right) with a rice bowl icon 🍚
      
      To start automatically on login:
        - Open the app and go to Settings
        - Enable "Launch at Login"
      
      Note: You may need to grant accessibility permissions when first launched.
    EOS
  end
end
