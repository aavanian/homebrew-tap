cask "prusaslicer-beta" do
  version "2.6.0-beta3,202305261411"
  sha256 "8861fb1eb18432d11d57abde08e801529c3679ba5ffa2ca912a33258c69387c6"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.csv.first}/PrusaSlicer-#{version.csv.first}+MacOS-universal-#{version.csv.second}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer Beta Release"
  desc "G-code generator for 3D printers (RepRap, Makerbot, Ultimaker etc.)"
  homepage "https://www.prusa3d.com/page/prusaslicer_424/"

  livecheck do
    skip "No reliable way to get version info"
  end

  app "PrusaSlicer.app"

  zap trash: [
    "~/Library/Application Support/PrusaSlicer",
    "~/Library/Preferences/com.prusa3d.slic3r",
    "~/Library/Saved Application State/com.prusa3d.slic3r.savedState",
  ]
end
