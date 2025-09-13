class Ricebarmac < Formula
  desc "macOS menu bar app for managing rice configurations"
  homepage "https://github.com/mateocerquetella/RiceBarMac"
  url "https://github.com/mateocerquetella/RiceBarMac/releases/download/v1.0.0/RiceBarMac.zip"
  sha256 "0429759cbdabe1494974a2cb6988b62a81fd33608254096962ed0e767029aa33"
  version "1.0.0"
  
  depends_on :macos
  
  def install
    prefix.install "RiceBarMac.app"
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
