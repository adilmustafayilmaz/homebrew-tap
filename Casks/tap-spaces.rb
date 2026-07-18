cask "tap-spaces" do
  version "0.2.2"
  sha256 "0daea1870b4079b7e4a81928f278060606933d3c7a9a02c19a9f950bf7e84905"

  url "https://github.com/adilmustafayilmaz/Tap-Spaces/releases/download/v#{version}/TapSpaces-#{version}.zip"
  name "Tap Spaces"
  desc "Detects which zone of the desk you tapped and fires a keyboard shortcut"
  homepage "https://github.com/adilmustafayilmaz/Tap-Spaces"

  depends_on macos: :sonoma

  app "TapSpaces.app"

  uninstall quit: "com.mustafa.tapspaces"

  zap trash: [
    "~/Library/Application Support/TapSpaces",
  ]
end
