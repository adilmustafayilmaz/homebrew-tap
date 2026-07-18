cask "tap-spaces" do
  version "0.2.0"
  sha256 "5dfc9b45d720c6e3627d22ca4bc47dad81c2c0c438038d5d47df9b6fe566c26d"

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
