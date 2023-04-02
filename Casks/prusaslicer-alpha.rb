cask "prusaslicer-alpha" do
  version "2.6.0,202303311529"
  sha256 "86b75e5a6800c3f86819d2f79e085fcefc1296687cd4495a3fd59d9d2c22e2dc"

  url "https://github.com/prusa3d/PrusaSlicer/releases/download/version_#{version.csv.first}-alpha6/PrusaSlicer-#{version.csv.first}-alpha6+MacOS-universal-#{version.csv.second}.dmg",
      verified: "github.com/prusa3d/PrusaSlicer/"
  name "PrusaSlicer Alpha Release"
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
