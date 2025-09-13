class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.4/RiceBarMac.zip"
  sha256 "4950c6983561e4f7dd282c150c5d70266a85e714c9ea2b1baf68bfca3a99d926"
  version "1.0.4"
  
  
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
