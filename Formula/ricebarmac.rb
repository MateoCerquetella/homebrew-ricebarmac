class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.1/RiceBarMac.zip"
  sha256 "576152407f8a8cd8d092807230608c425b379ab184b44c2fb51095084ac6a3d3"
  version "1.0.1"
  
  depends_on :macos => ">= :sonoma"
  
  def install
    # Check if the app bundle exists
    if File.directory?("RiceBarMac.app")
      prefix.install "RiceBarMac.app"
    else
      # Look for any .app bundle in case of naming issues
      app_bundles = Dir.glob("*.app")
      if app_bundles.empty?
        odie "No .app bundle found in the downloaded archive"
      else
        # Install the first .app bundle found
        prefix.install app_bundles.first
        # Create a symlink with the expected name if needed
        unless app_bundles.first == "RiceBarMac.app"
          ln_s prefix/app_bundles.first, prefix/"RiceBarMac.app"
        end
      end
    end
  end
  
  def caveats
    <<~EOS
      To run RiceBarMac, use:
        open #{prefix}/RiceBarMac.app
      
      Or add it to your Applications folder:
        ln -s #{prefix}/RiceBarMac.app /Applications/
    EOS
  end
end
