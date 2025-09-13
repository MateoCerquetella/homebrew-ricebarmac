class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.3/RiceBarMac.zip"
  sha256 "e080638806a603ce61c15f7e9dd10777a75cd9f72c9ae77b03d1ec284c073ca9"
  version "1.0.3"
  
  depends_on macos: ">= :big_sur"
  
  def install
    # Install the menu bar app to Applications folder
    if File.directory?("RiceBarMac.app")
      # For menu bar apps, install directly to Applications
      system "cp", "-R", "RiceBarMac.app", "/Applications/"
    else
      # Look for any .app bundle in case of naming issues
      app_bundles = Dir.glob("*.app")
      if app_bundles.empty?
        odie "No .app bundle found in the downloaded archive"
      else
        system "cp", "-R", app_bundles.first, "/Applications/"
      end
    end
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
