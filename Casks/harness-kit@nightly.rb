cask "harness-kit@nightly" do
  version "20260526"
  sha256 "71c413f50bc1887a246b7c10405fda3f765654c16a39f63d76f58a9bdcabf7b9"

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
