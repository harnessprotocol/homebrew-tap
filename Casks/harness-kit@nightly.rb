cask "harness-kit@nightly" do
  version "20260511"
  sha256 "c3c5894089ab5be1e78d959908062b424cd0617bb42a18587f980c32534d5b4a"

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
