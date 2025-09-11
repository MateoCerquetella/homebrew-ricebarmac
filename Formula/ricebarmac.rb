class Ricebarmac < Formula
  desc "Profile switcher for macOS (wallpapers, terminal themes, rice)"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v0.1.0/RiceBarMac.zip"
  sha256 "REPLACE_WITH_ZIP_CHECKSUM"
  license "MIT"
  version "0.1.0"

  def install
    # For a simple binary
    bin.install "RiceBarMac"
    
    # If you have an .app bundle instead, uncomment the line below:
    # prefix.install "RiceBarMac.app"
    
    # If you have additional files (config, documentation, etc.)
    # doc.install "README.md" if File.exist?("README.md")
    # etc.install "config" => "ricebarmac" if Dir.exist?("config")
  end

  test do
    # Basic test to ensure the binary can run
    system "#{bin}/RiceBarMac", "--version"
  end
end
