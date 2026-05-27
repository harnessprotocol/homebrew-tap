cask "harness-kit" do
  version "0.8.1"
  sha256 "eb7a797da3cdcd83f79b0d81d1dff897ff3ba987e7fd13cb27bf0c6659dd9bf7"

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
