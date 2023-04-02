cask "lightburn" do
  version "1.3.01"
  sha256 "e7594e6a715f46fbecc157328abbe63bd2d1e14e83f5f405a2e6c9e5c2e78740"

  url "https://github.com/LightBurnSoftware/deployment/releases/download/#{version}/LightBurn.V#{version}.dmg",
      verified: "github.com/LightBurnSoftware/deployment"
  name "LightBurn"
  desc "Layout, editing, and control software for your laser cutter"
  homepage "https://lightburnsoftware.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LightBurn.app"
end
