cask "rehex" do
  version "0.5.4"
  sha256 "3becaa5145c6b05c53c96fc59eba242285678d807bc38e374e793d7693b23bb7"

  url "https://github.com/solemnwarning/rehex/releases/download/#{version}/rehex-#{version}-mac.dmg"
  name "REHex"
  desc "Cross-platform hex editor for reverse engineering, and everything else"
  homepage "https://github.com/solemnwarning/rehex"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "REHex.app"
end
