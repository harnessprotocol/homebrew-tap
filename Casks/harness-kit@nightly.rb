cask "harness-kit@nightly" do
  version "20260928"
  sha256 "497b7761293b9ab261f96480d7cd26e512f450822a1593d71e10bdc7d921350f"

  url "https://github.com/harnessprotocol/harness-kit/releases/download/nightly/HarnessKit-nightly-darwin-arm64.dmg"
  name "Harness Kit (Nightly)"
  desc "Desktop app for managing AI coding tool configurations (nightly build)"
  homepage "https://github.com/harnessprotocol/harness-kit"

  app "Harness Kit.app"

  caveats <<~EOS
    This is a nightly build from main. Expect rough edges.
    This app is not notarized. After installing, run:
      xattr -cr "/Applications/Harness Kit.app"
    Or right-click the app and select Open.
  EOS

  zap trash: [
    "~/Library/Application Support/com.harnesskit.desktop",
    "~/Library/Caches/com.harnesskit.desktop",
  ]
end
