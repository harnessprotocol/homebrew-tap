cask "harness-kit" do
  version "0.11.0"
  sha256 "ddec404b7c28b0a690bb36dc9dd95db0562c332b71b64d341247f20493a9c096"

  url "https://github.com/harnessprotocol/harness-kit/releases/download/v#{version}/HarnessKit-v#{version}-darwin-arm64.dmg"
  name "Harness Kit"
  desc "Desktop app for managing AI coding tool configurations"
  homepage "https://github.com/harnessprotocol/harness-kit"

  app "Harness Kit.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Harness Kit.app"]
  end

  caveats <<~EOS
    This app is not notarized. The quarantine flag is cleared automatically on install.
    If you still see a security warning, right-click the app and select Open.
  EOS

  zap trash: [
    "~/Library/Application Support/com.harnesskit.desktop",
    "~/Library/Caches/com.harnesskit.desktop",
  ]
end
