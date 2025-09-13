class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.6/RiceBarMac.zip"
  sha256 "1589b3561b5b2cd48d5d2354dc2ffc418c5da593771d6036f5bcbcac333aa88c"
  version "1.0.6"
  
  
  def install
    # Install to prefix first, then create symlink to Applications
    prefix.install "RiceBarMac.app"
    (Applications/"RiceBarMac.app").install_symlink prefix/"RiceBarMac.app"
  end
  
  def caveats
    <<~EOS
      RiceBarMac is a menu bar application.
      
      To start RiceBarMac:
        open -a RiceBarMac
      
      The app will appear in your menu bar (top right) with a rice bowl icon 🍚
      
      To start automatically on login:
        - Open the app and go to Settings
        - Enable "Launch at Login"
      
      Note: You may need to grant accessibility permissions when first launched.
    EOS
  end
end
