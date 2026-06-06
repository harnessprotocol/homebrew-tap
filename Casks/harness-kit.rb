cask "harness-kit" do
  version "0.10.0"
  sha256 "c9e1e08e5277b358b6f860005352804f2db0eb2f4b07cc8ef395cf029c4bff15"

  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/HarnessKit-v#{version}-darwin-arm64.dmg"
  name "Harness Kit"
  desc "Desktop app for managing AI coding tool configurations"
  homepage "https://github.com/harnessprotocol/harness-kit"

  app "Harness Kit.app"

  caveats <<~EOS
    This app is not notarized. After installing, run:
      xattr -cr "/Applications/Harness Kit.app"
    Or right-click the app and select Open.
  EOS

  zap trash: [
    "~/Library/Application Support/com.harnesskit.desktop",
    "~/Library/Caches/com.harnesskit.desktop",
  ]
end
