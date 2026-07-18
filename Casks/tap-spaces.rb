cask "tap-spaces" do
  version "0.2.1"
  sha256 "f00779b240b89352601489eac9e6198cf59e943d5ccdd258513390f070ca2d4e"

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
