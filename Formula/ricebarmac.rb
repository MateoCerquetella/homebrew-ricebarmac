class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.2/RiceBarMac.zip"
  sha256 "f3ea6230004dca8a937e23a55b68a7b2b36493735b0599af979bf5a1e7993169"
  version "1.0.2"
  
  depends_on :macos => ">= :sonoma"
  
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
