cask "harness-kit@nightly" do
  version "20261025"
  sha256 "690fa0ff8ff511c052535fa5b9f352c0f05d6116610edfd8849718fdcc3e44eb"

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
