cask "tap-spaces" do
  version "0.1.0"
  sha256 "dae977be1ce7c3351e292f5fc0588d7dc614be0363fb2ce9035b4b47ec61d49e"

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
