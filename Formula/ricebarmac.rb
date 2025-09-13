class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.7/RiceBarMac.zip"
  sha256 "e134cd6145f7ef6fbb3658ffa156a3379c451e9263dd7f38d4253c8a46a29206"
  version "1.0.7"
  
  
  def install
    app = Pathname.pwd/"RiceBarMac.app"
    target = "/Applications/RiceBarMac.app"
    
    # Remove existing app if it exists
    system "rm", "-rf", target if File.exist?(target)
    
    # Copy the app to Applications
    system "cp", "-R", app.to_s, "/Applications/"
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
