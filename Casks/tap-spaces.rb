cask "tap-spaces" do
  version "0.3.0"
  sha256 "4a8484e8036cce367b2303d78f38224c9a169bb3df80fd2df4c406eda4f887ce"

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
